@echo off

SET VERSION=%1
IF "%1%"=="" (
  ECHO Pass in tag name
  goto Exit
)

IF "%2"=="" (
  SET VS_VERSION="Visual Studio 16 2019"
  SET BOOST_DIR="c:\Development\cpp\boost170"
  SET CURL_DIR="c:\Program Files (x86)\CURL"
) ELSE (
  SET VS_VERSION="Visual Studio 15 2017"
  SET BOOST_DIR="c:\Development\cpp\boost169vs2017"
  SET CURL_DIR="c:\Program Files (x86)\CURL"
)

c:
cd\Development\cpp

git clone https://github.com/bitshares/bitshares-core bitshares-core-%VERSION%
cd bitshares-core-%VERSION%
git checkout tags/%VERSION%
git submodule update --init --recursive
cmake -G %VS_VERSION% -A x64 -DBOOST_ROOT=%BOOST_DIR% -DCURL_STATICLIB=ON -DCURL_LIBRARY=%CURL_DIR%\lib\libcurl_imp.lib -DCURL_INCLUDE_DIR=%CURL_DIR%\include -DOPENSSL_CONF_SOURCE="C:\Program Files\Common Files\SSL\openssl.cnf"
cmake --build . --target install --config Release

:Exit
