function prompt {
	$err = !$?
	$currentLocation = Get-Location
	$driveLetter = ($currentLocation).Drive.Name
	$currentFolder = Split-Path -leaf -path ($currentLocation)
	$Host.UI.RawUI.CursorSize = 100
	$nextCommandId = (Get-History -count 1).Id + 1
	
	$promptString = " [$nextCommandId] $driveLetter`:\[$currentFolder] > "
	if ($err) {Write-Host $promptString -nonewline -foregroundcolor Yellow}
	else {Write-Host $promptString -nonewline -foregroundcolor Green}
	return ' '
}