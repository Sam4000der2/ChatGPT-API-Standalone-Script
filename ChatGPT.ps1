function Get-FormattedDateTimeString {
    $original = (Get-Date -Format "yyyy-MM-dd HH:mm:ss")
    return $original.Replace(" ", ".").Replace(":", "_")
}

$api_key = "INSERT_API_key_here"
$temperature = 0.7

#You can find your API key here: https://beta.openai.com/account/api-keys

#Parameter Temperature influences the variance of the selected words. 
#The higher the value, the more unpredictable the response. Range: 0 to 1.0

$headers = @{
    "Content-Type" = "application/json"
    "Authorization" = "Bearer $api_key"
}

while ($true) {
	while ($true) {
		$prompt = Read-Host "What is your question or prompt? (Enter 'q' to quit|'f' to read promt.txt)"
		
		if ($prompt.ToLower() -eq 'q') {
			break
		}
		
		if ($prompt.ToLower() -eq 'f') {
			$prompt = Get-Content -Path "promt.txt" -Raw
		} 
		
		#You can also write your questions in the prompt.txt file
		
		if ($prompt.Lenght -le 4000) {
			break
		} else {
			Write-Host ""
			Write-Host "Your request is too long. Please shorten it to 4000 characters."
			Write-Host ""
		}
	}
	if ($prompt.ToLower() -eq 'q') {
		break
	}
		
		 

	$body = @{
		"model" = "text-davinci-003"
		"prompt" = $prompt
		"max_tokens" = 4000
		"temperature" = $temperature
	}

	$response = Invoke-RestMethod -Method Post -Uri "https://api.openai.com/v1/completions" -Body (ConvertTo-Json $body) -Headers $headers
	$response = $response.choices[0].text
	Write-Host $response
	Write-Host ""
 
	$save_response = Read-Host "Do you want to save the response? (y/n)"
	Write-Host ""

    if ($save_response.ToLower() -eq 'y') {
        $current_time = Get-FormattedDateTimeString
        $file_name = "ChatGPT $current_time.txt"
        $response | Out-File -FilePath $file_name
        Write-Host "Response saved to $file_name"
		Write-Host ""
    }
}

Write-Host "https://github.com/Sam4000der2/ChatGPT-API-Standalone-Script/new/main"
Write-Host ""
Write-Host ""
Write-Host ""
Write-Host ""

$string =  "___________.__                   __    "
Write-Host("`"{0}`"" -f $string)
$string =  "\__    ___/l  l__ _____    ____ l  l __"
Write-Host("`"{0}`"" -f $string)
$string =  "  l    l   l  l  \\__  \  /    \l  l/ /"
Write-Host("`"{0}`"" -f $string)
$string =  "  l    l   l   Y  \/ __ \l   l  \    ᐸ "
Write-Host("`"{0}`"" -f $string)
$string =  "  l____l   l___l  (____  /___l  /__l_ \"
Write-Host("`"{0}`"" -f $string)
$string =  "                \/     \/     \/     \/"
Write-Host("`"{0}`"" -f $string)

Start-Sleep -s 1

Write-Host ""
Write-Host ""

$string =  "                        _____             "
Write-Host("`"{0}`"" -f $string)
$string =  " ___.__. ____  __ __  _/ ____\___________ "
Write-Host("`"{0}`"" -f $string)
$string =  "ᐸ   l  l/  _ \l  l  \ \   __\/  _ \_  __ \"
Write-Host("`"{0}`"" -f $string)
$string =  " \___  (  ᐸ_ᐳ )  l  /  l  l (  ᐸ_ᐳ )  l \/"
Write-Host("`"{0}`"" -f $string)
$string =  " / ____l\____/l____/   l__l  \____/l__l   "
Write-Host("`"{0}`"" -f $string)
$string =  " \/                                       "
Write-Host("`"{0}`"" -f $string)

Start-Sleep -s 1

Write-Host ""
Write-Host ""

$string =  "             .__                   __  .__            "
Write-Host("`"{0}`"" -f $string)
$string =  " __ __  _____l__l ____    ____   _/  l_l  l__   ____  "
Write-Host("`"{0}`"" -f $string)
$string =  "l  l  \/  ___/  l/    \  / ___\  \   __\  l  \_/ __ \ "
Write-Host("`"{0}`"" -f $string)
$string =  "l  l  /\___ \l  l   l  \/ /_/  ᐳ  l  l l   Y  \  ___/ "
Write-Host("`"{0}`"" -f $string)
$string =  "l____//____  ᐳ__l___l  /\___  /   l__l l___l  /\___  ᐳ"
Write-Host("`"{0}`"" -f $string)
$string =  "           \/        \//_____/              \/     \/"
Write-Host("`"{0}`"" -f $string)

Start-Sleep -s 1

Write-Host ""
Write-Host ""


$string =  "  _________            .__        __     "
Write-Host("`"{0}`"" -f $string)
$string =  " /   _____/ ___________l__l______/  l_  " 
Write-Host("`"{0}`"" -f $string)
$string =  " \_____  \_/ ___\_  __ \  \____ \   __\  "
Write-Host("`"{0}`"" -f $string)
$string =  " /        \  \___l  l \/  l  l_ᐳ ᐳ  l    "
Write-Host("`"{0}`"" -f $string)
$string =  "/_______  /\___  ᐳ__l  l__l   __/l__l /\ "
Write-Host("`"{0}`"" -f $string)
$string =  "        \/     \/         l__l        \/ "
Write-Host("`"{0}`"" -f $string)

Start-Sleep -s 2

Write-Host ""
Write-Host ""
Write-Host "Please send suggestions for changes to the creator."

Start-Sleep -s 2

Write-Host ""
Write-Host ""
Write-Host ""
Write-Host ""
Write-Host ""


$string =  "			    .d888888b._"
Write-Host("`"{0}`"" -f $string)
$string =  "                       _o8P^'      `^?8o_"
Write-Host("`"{0}`"" -f $string)
$string =  "                     .8P'              `?8."
Write-Host("`"{0}`"" -f $string)
$string =  "                    dP'    ,d8888888,    `?b"
Write-Host("`"{0}`"" -f $string)
$string =  "                   dP'   ,8P'      `?8    `?b"
Write-Host("`"{0}`"" -f $string)
$string =  "                  dP'   ,8'                `?b"
Write-Host("`"{0}`"" -f $string)
$string =  "                 d8'   ,8'                  `8b"
Write-Host("`"{0}`"" -f $string)
$string =  "                 88    88                    88"
Write-Host("`"{0}`"" -f $string)
$string =  "                 88    88                    88"
Write-Host("`"{0}`"" -f $string)
$string =  "                 88    88                    88"
Write-Host("`"{0}`"" -f $string)
$string =  "                 ?8,   `8,                  ,8P"
Write-Host("`"{0}`"" -f $string)
$string =  "                  ?b,   `8,                ,dP"
Write-Host("`"{0}`"" -f $string)
$string =  "                   ?b,   `8b,      ,d8    ,dP"
Write-Host("`"{0}`"" -f $string)
$string =  "                    ?b,    `88888888'    ,dP"
Write-Host("`"{0}`"" -f $string)
$string =  "                     `8b.              .d8´ "
Write-Host("`"{0}`"" -f $string)
$string =  "                       `^8b._      _.d8^´ "
Write-Host("`"{0}`"" -f $string)
$string =  "                          `^?888888P^´ "
Write-Host("`"{0}`"" -f $string)

Start-Sleep -s 1

Write-Host ""
Write-Host ""

$string =  "                           _____  _______  _______  _______   "
Write-Host("`"{0}`"" -f $string)
$string =  "  ___________    _____    /  l  l \   _  \ \   _  \ \   _  \  "
Write-Host("`"{0}`"" -f $string)
$string =  " /  ___/\__  \  /     \  /   l  l_/  /_\  \/  /_\  \/  /_\  \ "
Write-Host("`"{0}`"" -f $string)
$string =  " \___ \  / __ \l  Y Y  \/    ^   /\  \_/   \  \_/   \  \_/   \"
Write-Host("`"{0}`"" -f $string)
$string =  "/____  ᐳ(____  /__l_l  /\____   l  \_____  /\_____  /\_____  /"
Write-Host("`"{0}`"" -f $string)
$string =  "     \/      \/      \/      l__l        \/       \/       \/ "
Write-Host("`"{0}`"" -f $string)

Start-Sleep -s 10

#Important comments

#The API only accepts just over 4000 tokens as a request. 
#The header and the body, including the prompt, must therefore not be too large. 
#This is still a major source of errors.

#Newer accounts or newer API keys may be limited in their function. 

#Tested with an account created on 26.12.2022 and an API key generated on 25.01.2022.

#created by sam4000

#https://github.com/Sam4000der2/ChatGPT-API-Standalone-Script/

