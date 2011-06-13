/*
	Copyright 2011 Torstein Ingebrigtsen Bø

    This file is part of OpenAndroidWeather.

    OpenAndroidWeather is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    OpenAndroidWeather is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with OpenAndroidWeather.  If not, see <http://www.gnu.org/licenses/>.
 */

package no.firestorm.weathernotificatonservice;

import java.text.DateFormat;
import java.util.Date;

import no.firestorm.R;
import no.firestorm.misc.TempToDrawable;
import no.firestorm.wsklima.WeatherElement;
import no.firestorm.wsklima.WsKlimaProxy;

import org.apache.http.HttpException;

import android.accounts.NetworkErrorException;
import android.app.AlarmManager;
import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.AsyncTask;
import android.os.IBinder;
import android.util.Log;

public class WeatherNotificationService extends Service {

	private static final String LOG_ID = "no.firestorm.weatherservice";
	public static final String INTENT_EXTRA_ACTION = "action";
	public static final int INTENT_EXTRA_ACTION_GET_TEMP = 1;
	public static final int INTENT_EXTRA_ACTION_UPDATE_ALARM = 2;

	@Override
	public void onCreate() {
		super.onCreate();
		Log.d(LOG_ID, "service started");
	}

	@Override
	public void onDestroy() {
		Log.d(LOG_ID, "service destroyed");
		super.onDestroy();
	}

	@Override
	public int onStartCommand(Intent intent, int flags, int startId) {

		switch (intent.getIntExtra(INTENT_EXTRA_ACTION,
				INTENT_EXTRA_ACTION_GET_TEMP)) {
		case INTENT_EXTRA_ACTION_GET_TEMP:
			showTemp();
			break;
		case INTENT_EXTRA_ACTION_UPDATE_ALARM:
			updateAlarm();
			break;

		default:
			break;
		}
		return START_STICKY;
	}

	@Override
	public IBinder onBind(Intent intent) {
		return null;
	}

	private void showTemp() {
		ShowTempAsync tempTask = new ShowTempAsync();
		tempTask.execute();

	}

	private void removeAlarm() {
		final PendingIntent pendingIntent = PendingIntent.getService(this, 0,
				new Intent(this, WeatherNotificationService.class),
				PendingIntent.FLAG_UPDATE_CURRENT);
		final AlarmManager alarm = (AlarmManager) this
				.getSystemService(Context.ALARM_SERVICE);
		alarm.cancel(pendingIntent);
	}

	private void setAlarm(long updateRate) {
		// Set alarm
		final PendingIntent pendingIntent = PendingIntent.getService(this, 0,
				new Intent(this, WeatherNotificationService.class),
				PendingIntent.FLAG_UPDATE_CURRENT);
		final AlarmManager alarm = (AlarmManager) this
				.getSystemService(Context.ALARM_SERVICE);
		// Set time to next hour plus 5 minutes:
		long now = System.currentTimeMillis();
		long triggerAtTime = now;
		// set back to last hour plus 2 minutes:
		triggerAtTime -= triggerAtTime % 3600000 - 12000;
		// Add selected update rate
		triggerAtTime += updateRate * 60000;

		// Set trigger time now earlier than now.
		if (triggerAtTime < now)
			triggerAtTime = now + updateRate * 60000;

		alarm.set(AlarmManager.RTC, triggerAtTime, pendingIntent);
	}

	private void setShortAlarm() {
		setAlarm(10);
	}

	private void updateAlarm() {
		// Find update rate

		int updateRate = WsKlimaProxy.getUpdateRate(this);

		if (updateRate <= 0) {
			removeAlarm();
			return;
		} else
			setAlarm(updateRate);
	}

	
	private class ShowTempAsync extends AsyncTask<Void, Void, Object> {

		@Override
		protected Object doInBackground(Void... stationId) {
			// get temp
			final WsKlimaProxy weatherProxy = new WsKlimaProxy();
			try {
				return weatherProxy.getTemperatureNow(WeatherNotificationService.this);
			} catch (NetworkErrorException e) {
				return e;
			} catch (HttpException e) {
				return e;
			}
		}

		@Override
		protected void onPostExecute(Object object) {
			super.onPostExecute(object);
			int icon;
			CharSequence tickerText, contentTitle, contentText;
			if (object instanceof WeatherElement) {
				WeatherElement temperature = (WeatherElement) object;
				// Find name
				String stationName = WsKlimaProxy.getStationName(WeatherNotificationService.this);

				// Find icon
				icon = TempToDrawable.getDrawableFromTemp(Float
						.valueOf(temperature.getValue()));
				// Set title
				tickerText = stationName;
				contentTitle = stationName;

				final Date time = temperature.getFrom();
				final DateFormat df = DateFormat
						.getTimeInstance(DateFormat.SHORT);
				Context context = WeatherNotificationService.this;
				contentText = String.format("%s %.1f °C  %s %s", context
						.getString(R.string.temperatur_),
						new Float(temperature.getValue()), context
								.getString(R.string._tid_), df.format(time));
				updateAlarm();

			} else {
				// Error has occurred
				// Find icon
				icon = android.R.drawable.stat_notify_error;
				// Set title
				tickerText = WeatherNotificationService.this
						.getString(R.string.download_error);
				contentTitle = WeatherNotificationService.this
						.getString(R.string.download_error);
				contentText = WeatherNotificationService.this
						.getString(R.string.press_for_update);

				setShortAlarm();
			}

			final long when = System.currentTimeMillis();
			// Make notification
			final Notification notification = new Notification(icon,
					tickerText, when);
			notification.flags = Notification.FLAG_ONGOING_EVENT;
			final Intent notificationIntent = new Intent(
					WeatherNotificationService.this,
					WeatherNotificationService.class);
			final PendingIntent contentIntent = PendingIntent.getService(
					WeatherNotificationService.this, 0, notificationIntent, 0);

			// notify
			notification.setLatestEventInfo(WeatherNotificationService.this,
					contentTitle, contentText, contentIntent);
			final NotificationManager mNotificationManager = (NotificationManager) getSystemService(Context.NOTIFICATION_SERVICE);
			mNotificationManager.notify(1, notification);

			WeatherNotificationService.this.stopSelf();
		}
	}

}