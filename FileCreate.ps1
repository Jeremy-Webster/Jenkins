#--------------------------------------------
#
#	FileCreate.ps1
#
#	Takes an input string and creates a file
#	including the given string.
#
#	Jeremy Webster, 31/05/2022
#
#--------------------------------------------

param (
	[Parameter(Mandatory=$true)][string]$message = ""
)

try {
	[string]$txt = 'You inputted: '+ $message

	New-Item .\test_message.txt
	Set-Content .\test_message.txt $txt
} catch {
	Write-Error $_.Exception.Message
}