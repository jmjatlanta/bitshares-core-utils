@echo off

set OUTFILE="BitShares-Core-testnet-3.1.0-Windows-x64-cli-tools.zip"

mkdir binaries
copy programs\cli_wallet\release\cli_wallet.exe binaries
copy programs\witness_node\release\witness_node.exe binaries

powershell.exe -nologo -noprofile -command "& { Add-Type -A 'System.IO.Compression.FileSystem'; [IO.Compression.ZipFile]::CreateFromDirectory('binaries', '%OUTFILE%'); }"

copy %OUTFILE% "\\vmware-host\Shared Folders\SharedFolder"
