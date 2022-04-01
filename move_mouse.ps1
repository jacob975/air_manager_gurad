# Remember where I from
$exec_path = $pwd
$exec_path
# Go to Air-Manager and run
Set-Location 'C:\Program Files\Air Manager'
.\airmanager.exe
Start-Sleep -s 5
# Move mouse to instrument and hit
Add-Type -MemberDefinition '[DllImport("user32.dll")] public static extern void mouse_event(int flags, int dx, int dy, int cButtons, int info);' -Name U32 -Namespace W;
Add-Type -AssemblyName System.Windows.Forms
[System.Windows.Forms.Cursor]::Position = New-Object System.Drawing.Point(100, 380)
[W.U32]::mouse_event(6,0,0,0,0);
Set-Location $exec_path
# Move mouse to the lamp and run
[System.Windows.Forms.Cursor]::Position = New-Object System.Drawing.Point(350, 110)
[W.U32]::mouse_event(6,0,0,0,0);