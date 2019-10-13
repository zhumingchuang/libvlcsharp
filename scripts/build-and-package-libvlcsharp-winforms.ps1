Remove-Item ..\LibVLCSharp.WinForms\bin -Force -Recurse
Remove-Item ..\LibVLCSharp.WinForms\obj -Force -Recurse

$msbuild =  '"C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\MSBuild\Current\Bin\MSBuild.exe"'
iex ("& {0} {1}" -f $msbuild, "../LibVLCSharp.WinForms/LibVLCSharp.WinForms.csproj /t:Restore,Clean,Build /p:Configuration=Release")

robocopy  ..\LibVLCSharp.WinForms\bin\Release\ . *.nupkg