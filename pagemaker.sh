#!/bin/bash


cat in > /usr/share/nginx/www/vtr.html

wget -O - http://vtr.aec.gov.au/Default.htm |  sed -n '/.*HousePartyRepresentationChart.*/{n;p;n;p;n;p;n;p;n;p;n;p;n;p}' | sed "s@.*td.*@@" | sed "s@.*--.*--.*@@"  > /usr/share/nginx/www/vtr.txt
wget -O - http://vtr.aec.gov.au/Default.htm |  sed -n '/.*HousePartyRepresentationChart.*/{n;p;n;p;n;p;n;p;n;p;n;p;n;p}' | sed "s@.*td.*@@" | sed "s@.*--.*--.*@@"  >> /usr/share/nginx/www/vtr.html

echo "</pre></body></html> " >> /usr/share/nginx/www/vtr.html
chmod 644 /usr/share/nginx/www/vtr.txt


exit 0
