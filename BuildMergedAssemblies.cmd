cd %~dp0
mkdir binaries
mkdir merged
cd binaries

copy "..\src\SevenDigital.ServiceStack.Merged\bin\Debug\ServiceStack.*.dll" "." /Y

..\tools\ILMerge.exe /allowDup /targetplatform:"v4,c:\Program Files (x86)\Reference Assemblies\Microsoft\Framework\.NETFramework\v4.0" /out:..\merged\SevenDigital.ServiceStack.Merged.dll ServiceStack.Common.dll ServiceStack.Interfaces.dll ServiceStack.Text.dll

