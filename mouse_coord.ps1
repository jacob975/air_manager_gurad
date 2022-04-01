Add-Type -AssemblyName System.Windows.Forms
$X = [System.Windows.Forms.Cursor]::Position.X
$Y = [System.Windows.Forms.Cursor]::Position.Y
echo $X $Y