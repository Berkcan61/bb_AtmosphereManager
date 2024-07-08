fx_version 'cerulean'
game 'gta5'

author 'berkcan61' -- If you have any questions about the script or tips for improvements, feel free to message me on Discord. I typically respond within two days.
description 'A comprehensive script for managing weather, time, and ambient sounds in FiveM.'
version '1.0'

--files {
   -- 'locales/en.json',
   -- 'locales/de.json',
   -- 'config/config.lua'
--}

server_scripts {
	'server/time.lua',
	'server.lua'
}

client_scripts {
	'client/NPCs and vehicles.lua',
	'client/time.lua',
	'client/ambient sounds.lua',
	'client.lua'
}