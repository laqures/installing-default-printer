# ќЅя«ј“≈Ћ№Ќќ при сетевом принтере пишем 'ShareName' при локальном (подключеном по USB) пишем 'Name' (да с кавычками)
$Filter = 'ShareName'
# Ќазвание принтера (указать нужное) (да с кавычками)
$Printer = 'Ћюберцы 02 этаж'

#Ќе трогать
$DefaultPrinter = Get-CimInstance -Class Win32_Printer -Filter "$Filter='$Printer'"
Invoke-CimMethod -InputObject $DefaultPrinter -MethodName SetDefaultPrinter