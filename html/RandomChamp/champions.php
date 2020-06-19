<?php

$champions_json = file_get_contents("https://euw1.api.riotgames.com/lol/static-data/v3/champions?locale=en_US&dataById=true&api_key=RGAPI-648823bf-f4c1-43a6-ba8a-e1ead953ea11");

echo($champions_json);

?>