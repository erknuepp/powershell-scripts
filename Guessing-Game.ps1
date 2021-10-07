<#
Author: Edward Knueppel Jr. edward.knueppel.jr@gmail.com
Guessing Game
#>

#Get and store Random Number
[int]$random_number = Get-Random -Minimum 1 -Maximum 101

#Write-Host $random_number <#debug step#>

#Initialize Guess Counter
$attempts = 0

#Loop Start
do{

    #Ask User for a Number
    $guess_string = Read-Host "Enter your guess from 1 to 100 incluvise"
    
    #If the input is ‘q’
    if($guess_string -like "q"){
        #Exit script
        exit
    }#End if
    
    #Extra Credit Empty string check
    if($guess_string -ne [string]::empty){
        [int]$guessNum = [convert]::ToInt32($guess_string, 10)
    }else{
        continue
    }
    
    #Increment guess counter
    $attempts++
    
    #If the input is in the expected range of value
    if(($guessNum -gt 0) -and ($guessNum -lt 101)){
        #If the input equals the random number
        if($guessNum -eq $random_number){
            #Exit loop
            break
        }
        #Else If the input is less than the random number
        elseif($guessNum -lt $random_number){
            #Output an appropriate message
            Write-Host "Your guess is too low."
        }
        #Else the input is greater than the random number
        elseif($guessNum -gt $random_number){
            #Output an appropriate message
            Write-Host "Your guess is too high."
        }#End If
    }else{
        Write-Host "Guess invalid!"
    }#End If


}while(1 -eq 1)
#Output number of attempts
Write-Host "You guessed it in $attempts"
