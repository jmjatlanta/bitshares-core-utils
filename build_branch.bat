@echo off

set BRANCH=%1

IF "%BRANCH%"=="" (
	ECHO Pass In Branch Name
	goto Exit
)

set DEV_DIR=c:\Development\cpp
SET VS_VERSION="Visual Studio 16 2019"
SET BOOST_DIR="c:\Development\cpp\boost170"
SET CURL_DIR="c:\Program Files\CURL"
SET OPENSSL_DIR="C:\Program Files\OpenSSL"

cd %DEV_DIR%
git clone https://github.com/bitshares/bitshares-core bitshares-core-%BRANCH%
cd bitshares-core-%BRANCH%
git checkout %BRANCH%
git submodule update --init --recursive
mkdir build
cd build
call ..\..\bitshares-core-utils\win_cmake.bat
call ..\..\bitshares-core-utils\win_make.bat

:Exit
