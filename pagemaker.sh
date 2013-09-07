#!/bin/bash


cat in > /usr/share/nginx/www/vtr.html

wget -O - http://vtr.aec.gov.au/Default.htm |  sed -n '/.*HousePartyRepresentationChart.*/{n;p;n;p;n;p;n;p;n;p;n;p;n;p}' | sed "s@.*td.*@@" | sed "s@.*--.*--.*@@"  > /usr/share/nginx/www/vtr.txt

cat  /usr/share/nginx/www/vtr.txt >> /usr/share/nginx/www/vtr.html

echo "</pre></body></html> " >> /usr/share/nginx/www/vtr.html

exit 0
