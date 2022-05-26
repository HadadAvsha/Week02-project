$password = $args[0]
$counter = 0

Write-Host $passLen

function checkLen(){
if ($password.Length -ge 10){
$counter++
Write-Host 'Password contain 10 charecters or mroe'-ForegroundColor Green
}
else {
Write-Host 'Password must contain at least 10 chars'-ForegroundColor Red
}
}

function checkAN(){
if($password -match '[a-zA-Z]' -and  $password -match '[0-9]'){
$counter++
Write-Host 'Password lenght must be 10 charecters or more'-ForegroundColor Green
}
else {
Write-Host 'Password must be alphanumeric'-ForegroundColor Red
}
}

function checkUpperLower(){
if($password -cmatch '[a-z]' -and $password -cmatch '[A-Z]'){
$counter++
Write-Host 'Password contain upper and lower case letters'-ForegroundColor Green
}
else {
Write-Host 'Password must contain upper and lower case letters'-ForegroundColor Red
}
}

function main(){
checkLen
checkAN
checkUpperLower
if ($counter = 3){
Write-Host 'Exit code 0'-ForegroundColor Green
}
else {
Write-Host 'Exit code 1'-ForegroundColor Red}
}

main
 

