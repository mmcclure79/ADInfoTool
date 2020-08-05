[reflection.assembly]::loadwithpartialname(“System.Windows.Forms”) | Out-Null
[reflection.assembly]::loadwithpartialname(“System.Drawing”) | Out-Null
$GUI = New-Object System.Windows.Forms.Form
$GUITextBox1 = New-Object System.Windows.Forms.TextBox 
$InitialFormWindowState = New-Object System.Windows.Forms.FormWindowState

Function GenerateForm {
# $username = Read-Host "Who is the user?"
$USERNAME = "ktreynor"
$NetUser = Net user $USERNAME /domain | Out-String
$GetAD = Get-ADUser $USERNAME -Properties * | Out-String
# $GUI.Multiline = $true
# $GUI.scrollbars = "Both"
# $GUI::Show($NETUSER + $GETAD)


#region Generated Form Code
$GUI.Text = “AD Query”
# $GUI.Name = “WiFiForm”
$GUI.DataBindings.DefaultDataSourceUpdateMode = 0
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Width = 220
$System_Drawing_Size.Height = 320
$GUI.ClientSize = $System_Drawing_Size
$GUI.StartPosition = "CenterScreen"

$GUITextbox1 = New-Object System.Windows.Forms.TextBox 
$GUITextbox1.Multiline = $True;
$GUITextbox1.Location = New-Object System.Drawing.Size(10,10) 
$GUITextbox1.Width = 200
$GUITextbox1.Height = 300
# $GUITextbox1.Size = New-Object System.Drawing.Size(300,200)
$GUITextbox1.Scrollbars = "Both" 
$GUITextBox1.Text = $NETUSER + $GETAD
$GUI.Controls.Add($GUITextbox1)

pause
}
GenerateForm