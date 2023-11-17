rm ./Deployment/Azure/deploy.zip
rm -R bin/Release
dotnet publish --configuration Release
cd bin/Release/net8.0/publish/
zip -r ../../../../Deployment/Azure/deploy.zip . -q
cd -
az webapp deployment source config-zip --resource-group svelte-starter --name svelte-starter-2298 --src ./Deployment/Azure/deploy.zip
open https://svelte-starter-2298.azurewebsites.net
echo 'Site is published 🎉 watching logs. It takes 60 seconds or so to refresh...'
az webapp log tail -n svelte-starter-2298 -g svelte-starter
