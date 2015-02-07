#!/usr/bin/sh

rc=0

filename=/usr/local/etc/apache2/2.2/httpd.conf
if [ ! -f $filename.bak ] ; then
    cp $filename $filename.bak
    patch $filename httpd.conf.patch
    rc=1
fi

filename=/usr/local/etc/apache2/2.2/extra/httpd-vhosts.conf
if [ ! -f $filename.bak ] ; then
    cp $filename $filename.bak
    patch $filename httpd-vhosts.conf.patch
    rc=1
fi

filename=/usr/local/etc/php/5.6/php.ini
if [ ! -f $filename.bak ] ; then
    cp $filename $filename.bak
    patch $filename php.ini.patch
    rc=1
fi

filename=/usr/local/etc/php/5.6/conf.d/ext-xdebug.ini
if [ ! -f $filename.bak ] ; then
    cp $filename $filename.bak
    patch $filename ext-xdebug.ini.patch
    rc=1
fi

exit $rc
