@ECHO OFF

echo Creating local user account..........

net user "username" "password" /add
net localgroup "Users" "onwasam" /add
WMIC USERACCOUNT WHERE "Name='username'" SET PasswordExpires=FALSE
WMIC USERACCOUNT WHERE "Name='username'" SET Passwordchangeable=FALSE

PAUSE
