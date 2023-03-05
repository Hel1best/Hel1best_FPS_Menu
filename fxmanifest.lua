fx_version "cerulean"
game "gta5"
lua54 'yes'

author "Hel1bestík#0610"
description "Simple menu for boosting fps"
version "1.0.0"

client_scripts {
        'client/client.lua',
}

server_scripts {
        'server/server.lua'
}

shared_scripts {
        '@ox_lib/init.lua'
}

dependencies {
	'ox_lib',
}