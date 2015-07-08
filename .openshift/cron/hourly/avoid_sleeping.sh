#!/bin/sh

cronloop(){
    while true
    do
    	curl -s -I -m 10 $url >/dev/null 2>&1 &
    	curl -s -I -m 10 "http://www.bing.com/images/searchbyimage?FORM=IRSBIQ&cbir=sbi&imgurl=$url" >/dev/null 2>&1 &
    	curl -s -I -m 10 "https://yandex.ru/images/search?rpt=imageview&img_url=$url" >/dev/null 2>&1 &
    	curl -s -I -m 10 "http://st.so.com/stu?imgurl=$url" >/dev/null 2>&1 &
    	curl -s -I -m 10 "http://iqdb.org/?url=$url" >/dev/null 2>&1 &
    	curl -s -I -m 10 "www.tineye.com/search?url=$url" >/dev/null 2>&1 &
    	sleep 180
    done
}
cronloop >/dev/null 2>&1 &