$password = $args[0]
#$passLen = $password.Length
$incre = 0

Write-Host $password.length


function checkLen(){
if($password.length -gt 10){
    $script:incre++
Write-Host 'Password contain 10 charecters or mroe'-ForegroundColor Green
}
else {
Write-Host 'Password must contain at least 10 chars'-ForegroundColor Red
}
}

function checkAN(){
if($password -match '[a-zA-Z]' -and  $password -match '[0-9]'){
    $script:incre++
Write-Host 'Password lenght must be 10 charecters or more'-ForegroundColor Green
}
else {
Write-Host 'Password must be alphanumeric'-ForegroundColor Red
}
}

function checkUpperLower(){
if($password -cmatch '[a-z]' -and $password -cmatch '[A-Z]'){
    $script:incre++
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
#Write-Host $script:incre
if($script:incre -eq 3){
    Write-Host '0'-ForegroundColor Green
}
else{
    Write-Host '1'-ForegroundColor Red
}
}


main


