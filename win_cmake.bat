@echo off

SET VS_VERSION="Visual Studio 16 2019"
SET BOOST_DIR="c:\Development\cpp\boost170"
SET CURL_DIR="c:\Program Files\CURL"

cmake -G %VS_VERSION% -A x64 -DBOOST_ROOT=%BOOST_DIR% -DCURL_STATICLIB=ON -DCURL_LIBRARY=%CURL_DIR%\lib\libcurl_imp.lib -DCURL_INCLUDE_DIR=%CURL_DIR%\include -DOPENSSL_CONF_SOURCE="C:\Program Files\Common Files\SSL\openssl.cnf" ..
rem cmake --build . --target install --config Release -j 2
