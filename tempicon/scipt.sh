#!/bin/bash 

for i in `seq 0 50`;
do
	rm tmp.svg
	echo '<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<!-- Created with Inkscape (http://www.inkscape.org/) -->

<svg
   xmlns:dc="http://purl.org/dc/elements/1.1/"
   xmlns:cc="http://creativecommons.org/ns#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
   xmlns:svg="http://www.w3.org/2000/svg"
   xmlns="http://www.w3.org/2000/svg"
   xmlns:sodipodi="http://sodipodi.sourceforge.net/DTD/sodipodi-0.dtd"
   xmlns:inkscape="http://www.inkscape.org/namespaces/inkscape"
   width="24"
   height="38"
   id="svg2"
   version="1.1"
   inkscape:version="0.48.1 r9760"
   sodipodi:docname="warm.svg"
   inkscape:export-filename="/home/torstein/workspace/OpenAndroidWeather/tempicon/t_11.png"
   inkscape:export-xdpi="90"
   inkscape:export-ydpi="90">
  <defs
     id="defs4" />
  <sodipodi:namedview
     id="base"
     pagecolor="#ffffff"
     bordercolor="#666666"
     borderopacity="1.0"
     inkscape:pageopacity="0"
     inkscape:pageshadow="2"
     inkscape:zoom="11.2"
     inkscape:cx="32.652279"
     inkscape:cy="14.192293"
     inkscape:document-units="px"
     inkscape:current-layer="layer1"
     showgrid="false"
     inkscape:window-width="1550"
     inkscape:window-height="871"
     inkscape:window-x="0"
     inkscape:window-y="0"
     inkscape:window-maximized="1"
     showguides="true"
     inkscape:guide-bbox="true" />
  <metadata
     id="metadata7">
    <rdf:RDF>
      <cc:Work
         rdf:about="">
        <dc:format>image/svg+xml</dc:format>
        <dc:type
           rdf:resource="http://purl.org/dc/dcmitype/StillImage" />
        <dc:title />
      </cc:Work>
    </rdf:RDF>
  </metadata>
  <g
     inkscape:label="Layer 1"
     inkscape:groupmode="layer"
     id="layer1"
     transform="translate(0,-1014.3622)">
    <flowRoot
       xml:space="preserve"
       id="flowRoot2985"
       style="font-size:13.00004959px;font-style:normal;font-variant:normal;font-weight:bold;font-stretch:normal;text-align:center;line-height:100%;letter-spacing:0px;word-spacing:0px;writing-mode:lr-tb;text-anchor:middle;fill:#ff5555;fill-opacity:1;stroke:none;font-family:Sans;-inkscape-font-specification:Sans Bold"
       transform="matrix(1.5195332,0,0,1.5195216,-181.54586,879.80197)"><flowRegion
         id="flowRegion2987"><rect
           id="rect2989"
           width="24.905487"
           height="15.035103"
           x="114.57835"
           y="94.854851"
           style="font-size:13.00004959px;font-style:normal;font-variant:normal;font-weight:bold;font-stretch:normal;text-align:center;line-height:100%;writing-mode:lr-tb;text-anchor:middle;fill:#ff5555;fill-opacity:1;font-family:Sans;-inkscape-font-specification:Sans Bold"
           ry="0" /></flowRegion><flowPara
         id="flowPara3929"
         style="font-size:13.16198707999999939px;font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-family:Ubuntu;-inkscape-font-specification:Ubuntu;text-anchor:middle;text-align:center;line-height:100%;letter-spacing:0px;word-spacing:0px;fill:#d40000">'>> tmp.svg
	echo "${i}</flowPara></flowRoot>  </g>
</svg>" >> tmp.svg
	inkscape -f tmp.svg -e ./drawable-hdpi/t${i}.png
	inkscape -f tmp.svg -d 60 -e ./drawable-mdpi/t${i}.png
	inkscape -f tmp.svg -d 45 -e ./drawable-ldpi/t${i}.png
done  

 
for i in `seq 0 55`;
do
	rm tmp.svg
	echo '<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<!-- Created with Inkscape (http://www.inkscape.org/) -->

<svg
   xmlns:dc="http://purl.org/dc/elements/1.1/"
   xmlns:cc="http://creativecommons.org/ns#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
   xmlns:svg="http://www.w3.org/2000/svg"
   xmlns="http://www.w3.org/2000/svg"
   xmlns:sodipodi="http://sodipodi.sourceforge.net/DTD/sodipodi-0.dtd"
   xmlns:inkscape="http://www.inkscape.org/namespaces/inkscape"
   width="24"
   height="38"
   id="svg2"
   version="1.1"
   inkscape:version="0.48.1 r9760"
   sodipodi:docname="cold.svg"
   inkscape:export-filename="/home/torstein/workspace/OpenAndroidWeather/tempicon/t_11.png"
   inkscape:export-xdpi="90"
   inkscape:export-ydpi="90">
  <defs
     id="defs4" />
  <sodipodi:namedview
     id="base"
     pagecolor="#ffffff"
     bordercolor="#666666"
     borderopacity="1.0"
     inkscape:pageopacity="0"
     inkscape:pageshadow="2"
     inkscape:zoom="11.2"
     inkscape:cx="32.652279"
     inkscape:cy="14.192293"
     inkscape:document-units="px"
     inkscape:current-layer="layer1"
     showgrid="false"
     inkscape:window-width="1550"
     inkscape:window-height="871"
     inkscape:window-x="0"
     inkscape:window-y="0"
     inkscape:window-maximized="1"
     showguides="true"
     inkscape:guide-bbox="true" />
  <metadata
     id="metadata7">
    <rdf:RDF>
      <cc:Work
         rdf:about="">
        <dc:format>image/svg+xml</dc:format>
        <dc:type
           rdf:resource="http://purl.org/dc/dcmitype/StillImage" />
        <dc:title />
      </cc:Work>
    </rdf:RDF>
  </metadata>
  <g
     inkscape:label="Layer 1"
     inkscape:groupmode="layer"
     id="layer1"
     transform="translate(0,-1014.3622)">
    <flowRoot
       xml:space="preserve"
       id="flowRoot2985"
       style="font-size:13.00004958999999971px;font-style:normal;font-variant:normal;font-weight:bold;font-stretch:normal;text-align:center;line-height:100%;letter-spacing:0px;word-spacing:0px;writing-mode:lr-tb;text-anchor:middle;fill:#008080;fill-opacity:1;stroke:none;font-family:Sans;-inkscape-font-specification:Sans Bold"
       transform="matrix(1.5195332,0,0,1.5195216,-181.54586,879.80197)"><flowRegion
         id="flowRegion2987"><rect
           id="rect2989"
           width="24.905487"
           height="15.035103"
           x="114.57835"
           y="94.854851"
           style="font-size:13.00004958999999971px;font-style:normal;font-variant:normal;font-weight:bold;font-stretch:normal;text-align:center;line-height:100%;writing-mode:lr-tb;text-anchor:middle;fill:#008080;fill-opacity:1;font-family:Sans;-inkscape-font-specification:Sans Bold"
           ry="0" /></flowRegion><flowPara
         id="flowPara3929"
         style="font-size:13.16198729999999983px;font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;text-align:center;line-height:100%;letter-spacing:0px;word-spacing:0px;text-anchor:middle;fill:#008080;font-family:Ubuntu;-inkscape-font-specification:Ubuntu">'>> tmp.svg
	echo "${i}</flowPara></flowRoot>  </g>
</svg>" >> tmp.svg
	inkscape -f tmp.svg -e ./drawable-hdpi/t_${i}.png
	inkscape -f tmp.svg -d 60 -e ./drawable-mdpi/t_${i}.png
	inkscape -f tmp.svg -d 45 -e ./drawable-ldpi/t_${i}.png
done  


for i in `seq 0 50`;
do
	rm tmp.svg
	echo '<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<!-- Created with Inkscape (http://www.inkscape.org/) -->

<svg
   xmlns:dc="http://purl.org/dc/elements/1.1/"
   xmlns:cc="http://creativecommons.org/ns#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
   xmlns:svg="http://www.w3.org/2000/svg"
   xmlns="http://www.w3.org/2000/svg"
   xmlns:sodipodi="http://sodipodi.sourceforge.net/DTD/sodipodi-0.dtd"
   xmlns:inkscape="http://www.inkscape.org/namespaces/inkscape"
   width="32"
   height="38"
   id="svg2"
   version="1.1"
   inkscape:version="0.48.2 r9819"
   sodipodi:docname="warm2.svg"
   inkscape:export-filename="/home/torstein/workspace/OpenAndroidWeather/tempicon/t_11.png"
   inkscape:export-xdpi="90"
   inkscape:export-ydpi="90">
  <defs
     id="defs4" />
  <sodipodi:namedview
     id="base"
     pagecolor="#ffffff"
     bordercolor="#666666"
     borderopacity="1.0"
     inkscape:pageopacity="0"
     inkscape:pageshadow="2"
     inkscape:zoom="11.2"
     inkscape:cx="1.2237073"
     inkscape:cy="14.192293"
     inkscape:document-units="px"
     inkscape:current-layer="layer1"
     showgrid="false"
     inkscape:window-width="1600"
     inkscape:window-height="876"
     inkscape:window-x="0"
     inkscape:window-y="1048"
     inkscape:window-maximized="1"
     showguides="true"
     inkscape:guide-bbox="true" />
  <metadata
     id="metadata7">
    <rdf:RDF>
      <cc:Work
         rdf:about="">
        <dc:format>image/svg+xml</dc:format>
        <dc:type
           rdf:resource="http://purl.org/dc/dcmitype/StillImage" />
        <dc:title></dc:title>
      </cc:Work>
    </rdf:RDF>
  </metadata>
  <g
     inkscape:label="Layer 1"
     inkscape:groupmode="layer"
     id="layer1"
     transform="translate(0,-1014.3622)">
    <flowRoot
       xml:space="preserve"
       id="flowRoot2985"
       style="font-size:13.00004959px;font-style:normal;font-variant:normal;font-weight:bold;font-stretch:normal;text-align:center;line-height:100%;letter-spacing:0px;word-spacing:0px;writing-mode:lr-tb;text-anchor:middle;fill:#e36334;fill-opacity:1;stroke:none;font-family:Sans;-inkscape-font-specification:Sans Bold"
       transform="matrix(1.5195332,0,0,1.5195216,-181.54586,879.80197)"><flowRegion
         id="flowRegion2987"><rect
           id="rect2989"
           width="48.643967"
           height="18.560652"
           x="102.88538"
           y="92.504486"
           style="font-size:13.00004959px;font-style:normal;font-variant:normal;font-weight:bold;font-stretch:normal;text-align:center;line-height:100%;writing-mode:lr-tb;text-anchor:middle;fill:#e36334;fill-opacity:1;font-family:Sans;-inkscape-font-specification:Sans Bold"
           ry="0" /></flowRegion><flowPara
         id="flowPara3929"
         style="font-size:19.74298096px;font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;text-align:center;line-height:100%;letter-spacing:0px;word-spacing:0px;text-anchor:middle;fill:#e36334;fill-opacity:1;font-family:Roboto;-inkscape-font-specification:Roboto">'>> tmp.svg
	echo "${i}</flowPara></flowRoot>  </g>
</svg>" >> tmp.svg
	inkscape -f tmp.svg -e ./drawable-hdpi/tn${i}.png
	inkscape -f tmp.svg -d 60 -e ./drawable-mdpi/tn${i}.png
	inkscape -f tmp.svg -d 45 -e ./drawable-ldpi/tn${i}.png
done  

 
for i in `seq 0 55`;
do
	rm tmp.svg
	echo '<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<!-- Created with Inkscape (http://www.inkscape.org/) -->

<svg
   xmlns:dc="http://purl.org/dc/elements/1.1/"
   xmlns:cc="http://creativecommons.org/ns#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
   xmlns:svg="http://www.w3.org/2000/svg"
   xmlns="http://www.w3.org/2000/svg"
   xmlns:sodipodi="http://sodipodi.sourceforge.net/DTD/sodipodi-0.dtd"
   xmlns:inkscape="http://www.inkscape.org/namespaces/inkscape"
   width="32"
   height="38"
   id="svg2"
   version="1.1"
   inkscape:version="0.48.2 r9819"
   sodipodi:docname="cold.svg"
   inkscape:export-filename="/home/torstein/workspace/OpenAndroidWeather/tempicon/t_11.png"
   inkscape:export-xdpi="90"
   inkscape:export-ydpi="90">
  <defs
     id="defs4" />
  <sodipodi:namedview
     id="base"
     pagecolor="#ffffff"
     bordercolor="#666666"
     borderopacity="1.0"
     inkscape:pageopacity="0"
     inkscape:pageshadow="2"
     inkscape:zoom="11.2"
     inkscape:cx="16.937993"
     inkscape:cy="14.192293"
     inkscape:document-units="px"
     inkscape:current-layer="layer1"
     showgrid="false"
     inkscape:window-width="1600"
     inkscape:window-height="876"
     inkscape:window-x="0"
     inkscape:window-y="1048"
     inkscape:window-maximized="1"
     showguides="true"
     inkscape:guide-bbox="true" />
  <metadata
     id="metadata7">
    <rdf:RDF>
      <cc:Work
         rdf:about="">
        <dc:format>image/svg+xml</dc:format>
        <dc:type
           rdf:resource="http://purl.org/dc/dcmitype/StillImage" />
        <dc:title />
      </cc:Work>
    </rdf:RDF>
  </metadata>
  <g
     inkscape:label="Layer 1"
     inkscape:groupmode="layer"
     id="layer1"
     transform="translate(0,-1014.3622)">
    <flowRoot
       xml:space="preserve"
       id="flowRoot2985"
       style="font-size:13.00004959px;font-style:normal;font-variant:normal;font-weight:bold;font-stretch:normal;text-align:center;line-height:100%;letter-spacing:0px;word-spacing:0px;writing-mode:lr-tb;text-anchor:middle;fill:#008080;fill-opacity:1;stroke:none;font-family:Sans;-inkscape-font-specification:Sans Bold"
       transform="matrix(1.5195332,0,0,1.5195216,-181.54586,879.80197)"><flowRegion
         id="flowRegion2987"><rect
           id="rect2989"
           width="48.87899"
           height="19.324522"
           x="102.59158"
           y="91.094269"
           style="font-size:13.00004959px;font-style:normal;font-variant:normal;font-weight:bold;font-stretch:normal;text-align:center;line-height:100%;writing-mode:lr-tb;text-anchor:middle;fill:#008080;fill-opacity:1;font-family:Sans;-inkscape-font-specification:Sans Bold"
           ry="0" /></flowRegion><flowPara
         id="flowPara3929"
         style="font-size:21.05917931px;font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;text-align:center;line-height:100%;letter-spacing:0px;word-spacing:0px;text-anchor:middle;fill:#34b4e3;fill-opacity:1;font-family:Roboto;-inkscape-font-specification:Roboto">'>> tmp.svg
	echo "${i}</flowPara></flowRoot>  </g>
</svg>" >> tmp.svg
	inkscape -f tmp.svg -e ./drawable-hdpi/tn_${i}.png
	inkscape -f tmp.svg -d 60 -e ./drawable-mdpi/tn_${i}.png
	inkscape -f tmp.svg -d 45 -e ./drawable-ldpi/tn_${i}.png
done  





 


