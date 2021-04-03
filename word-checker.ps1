# Set-ExecutionPolicy -Scope CurrentUser  Unrestricted 

Function Pick-Files {
    $OpenFileDialog = New-Object System.Windows.Forms.OpenFileDialog -Property @{ 
        InitialDirectory = [Environment]::GetFolderPath('Mydocuments') 
        MultiSelect = $true;
    }
    $null = $OpenFileDialog.ShowDialog();
    return $OpenFileDialog
}

$files = Pick-Files
foreach  ($file in $files.FileNames) {
    $contents = Get-Content -Path $file
}

