####
#Windows process information
####

#Gets processes on a local computer and adds a Company name of the process to array if array doesnt already contain that name 
$a = get-process
$procArray = @()
$tagetProc = $null
foreach ($p in $a) 
{
    #10.03.2019
    #Converting to object to string like this gives no error
    if ($procArray.Contains([string]$p.Company) -eq $false)

    #10.03.2019
    #This way of converting object gives errors but still fills array with unique values
    #if ($procArray.Contains(($p.Company).ToString()) -eq $false)
    
    {
        $procArray += @($p.Company)
    }

    if ($p.Company -eq "")
    {
    $targetProc += $p.Name
    }  
}


$procArray
$targetProc
