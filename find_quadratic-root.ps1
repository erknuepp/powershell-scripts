<# 
  Author: Edward Knueppel Jr. edward.knueppel.jr@gmail.com
  Takes a, b, c command-line args to calculate Quadratic roots
#> 

param ([float] $a, [float] $b = 0, [float] $c = 0)

Write-Host "`nA: $a B: $b C: $c"

if($a -ne 0)
{
    $under_root = ($b * $b) - (4 * $a * $c)
    if($under_root -ge 0)
    {
        $root = [math]::Sqrt($under_root)
        $denominator = 2 * $a
        $numerator_neg_part = -$b - $root
        $numerator_pos_part = -$b + $root

        Write-Host "`nQuadratic: $a X^2 + $b X + $c"

        Write-Host "`nRoots:"
        Write-Host "Denominator: $denominator"
        Write-Host "1st numerator: $numerator_neg_part"
        Write-Host "2nd numerator: $numerator_pos_part"

    }
    else
    {
        Write-Host "The roots of the equation cannot be computed because they are imaginary."
    }
}
else
{
        Write-Host "A cannot be 0"
}
