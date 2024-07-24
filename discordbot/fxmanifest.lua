fx_version 'cerulean'
game 'gta5'

author 'GambitoCL'
description 'Script para enviar mensaje a Discord cuando el servidor de FiveM inicie'
version '1.0.0'

client_scripts {
    -- Aquí puedes incluir scripts del lado del cliente si los tienes
}

server_scripts {
    'server-start-notification.lua' -- Asegúrate de que el nombre coincida con tu script Lua
}

