$password = Read-Host -Prompt 'Enter password'
$passLen = $password.Length
$counter = 0

Write-Host $passLen


function checkLen(){
if($passLen -ge 10){
$counter++
Write-Host 'SUCCESS'
}
else {
Write-Host 'Password must contain at least 10 chars'
}
}

function checkAN(){
if($password -match '[a-zA-Z]' -and  $password -match '[0-9]'){
$counter++
Write-Host 'SUCCESS'
}
else {
Write-Host 'Password must be alphanumeric'
}
}

function checkUpperLower(){
if($password -cmatch '[a-z]' -and $password -cmatch '[A-Z]'){
$counter++
Write-Host 'SUCCESS'
}
else {
Write-Host 'Password must contain upper and lower case letters'
}
}

function main(){
checkLen
checkAN
checkUpperLower
Write-Host $counter
}

main

