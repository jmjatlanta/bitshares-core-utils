@echo off

set OUTFILE="BitShares-Core-3.1.0-Windows-x64-cli-tools.zip"

mkdir binaries
copy programs\cli_wallet\release\cli_wallet.exe binaries
copy programs\witness_node\release\witness_node.exe binaries
copy programs\delayed_node\release\delayed_node.exe binaries
copy "c:\Program Files (x86)\CURL\bin\libcurl.dll" binaries
copy "C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\VC\Redist\MSVC\14.16.27012\x64\Microsoft.VC141.CRT\concrt140.dll" binaries
copy "C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\VC\Redist\MSVC\14.16.27012\x64\Microsoft.VC141.CRT\msvcp140.dll" binaries
copy "C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\VC\Redist\MSVC\14.16.27012\x64\Microsoft.VC141.CRT\msvcp140_1.dll" binaries
copy "C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\VC\Redist\MSVC\14.16.27012\x64\Microsoft.VC141.CRT\msvcp140_2.dll" binaries
copy "C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\VC\Redist\MSVC\14.16.27012\x64\Microsoft.VC141.CRT\vccorlib140.dll" binaries
copy "C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\VC\Redist\MSVC\14.16.27012\x64\Microsoft.VC141.CRT\vcruntime140.dll" binaries

powershell.exe -nologo -noprofile -command "& { Add-Type -A 'System.IO.Compression.FileSystem'; [IO.Compression.ZipFile]::CreateFromDirectory('binaries', '%OUTFILE%'); }"

REM copy %OUTFILE% "\\vmware-host\Shared Folders\SharedFolder"
