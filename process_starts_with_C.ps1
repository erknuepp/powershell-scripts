<# 
  Author: Edward Knueppel Jr. edward.knueppel.jr@gmail.com
  Outputs processes (Id, Name, Handles) that start with "C" (case-sensetive) ordered by Id Descending
#> 

$process_array = @()
foreach ($process in Get-Process) {
    $process_array += $process
    }

$process_array | Where {$_.Name.Substring(0,1) -cLike "C"} | Sort id -Descending | Select Id, Name, Handles | FT  

<#
This would also work:
$c =@($process_array | Where-Object Name -like c* | Sort id -Descending | format-table -property name, id, Handles)
$c 
#>
