function Recover-Air-Manager{
    # Remember where I from
    $exec_path = $pwd
    # Go to Air-Manager and run
    Set-Location 'C:\Program Files\Air Manager'
    .\airmanager.exe
    Start-Sleep -s 5
    # Object of the click evnet
    Add-Type -MemberDefinition '[DllImport("user32.dll")] public static extern void mouse_event(int flags, int dx, int dy, int cButtons, int info);' -Name U32 -Namespace W;
    # Object of the mouse movement event
    Add-Type -AssemblyName System.Windows.Forms
    # Move mouse to instrument and hit
    [System.Windows.Forms.Cursor]::Position = New-Object System.Drawing.Point(100, 380)
    [W.U32]::mouse_event(6,0,0,0,0);
    # Move mouse to the lamp and run
    [System.Windows.Forms.Cursor]::Position = New-Object System.Drawing.Point(350, 110)
    [W.U32]::mouse_event(6,0,0,0,0);
    # Back to the program directory
    Set-Location $exec_path
}

while (1){
    try{
        Get-Process javaw -ErrorAction Stop;
    }
    catch{
        Get-Date;
        "an error occurred";
        Recover-Air-Manager;
=    };
    Start-Sleep -s 60;
}
