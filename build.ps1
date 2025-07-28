Remove-Item –path ./client –recurse
& java -jar swagger-codegen-cli.jar generate -i https://api.cloudmersive.com/spam/v1/swagger.json -l objc -o client -c packageconfig.json
(Get-Content ./client/CloudmersiveSpamApiClient.podspec).replace('CloudmersiveSpamApiClient/**/*.{m,h}', "client/CloudmersiveSpamApiClient/**/*.{m,h}") | Set-Content ./client/CloudmersiveSpamApiClient.podspec
(Get-Content ./client/CloudmersiveSpamApiClient.podspec).replace('CloudmersiveSpamApiClient/**/*.h', "client/CloudmersiveSpamApiClient/**/*.h") | Set-Content ./client/CloudmersiveSpamApiClient.podspec