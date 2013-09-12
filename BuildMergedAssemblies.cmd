cd %~dp0
mkdir binaries
mkdir merged
cd binaries

copy "..\src\SevenDigital.ServiceStack.Merged\bin\Debug\*.dll" "." /Y

..\packages\ilmerge.2.13.0307\ILMerge.exe /allowDup /targetplatform:"v4,c:\Program Files (x86)\Reference Assemblies\Microsoft\Framework\.NETFramework\v4.0" /out:..\merged\SevenDigital.ServiceStack.Merged.dll ServiceStack.Interfaces.dll ServiceStack.Common.dll ServiceStack.Text.dll ServiceStack.ServiceInterface.dll ServiceStack.dll ServiceStack.OrmLite.dll ServiceStack.Logging.Log4Netv1210.dll

