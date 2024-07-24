local discordToken = 'DISCORD_TOKEN' -- Reemplaza con el token de Carlbot

local function sendDiscordMessage(content, embed)
    local url = 'https://discord.com/api/v9/channels/ID_DEL_CANAL/messages' -- Reemplaza ID_DEL_CANAL con el ID del canal de Discord
    
    PerformHttpRequest(url, function(statusCode, response, headers)
        if statusCode == 200 then
            print('^2Mensaje enviado a Discord correctamente.')
        else
            print('^1Error al enviar mensaje a Discord. Código de error HTTP: ' .. statusCode)
            print('Respuesta del servidor:', response)
        end
    end, 'POST', json.encode({
        content = content,
        embeds = {embed}
    }), {
        ['Content-Type'] = 'application/json',
        ['Authorization'] = 'Bot ' .. discordToken
    })
end

-- Configura tu embed aquí

local logoEmoji = "<:NOMBRE_DEL_EMOJI:>ID_DEL_EMOJI" -- Reemplaza NOMBRE_DEL_EMOJI por el nombre del emoji y reemplaza ID_DEL_EMOJI con el ID del emoji personalizado
local embed = {
    title = logoEmoji .."SERVIDOR ON".. logoEmoji, -- Título
    description = "El servidor ya se encuentra activo. !No dudes en reportar cualquier problema que ocurra en los canales correspondientes!.\n\n**Si no te puedes conectar directo desde FiveM, abre F8 copia, pega y das enter: connect cfx.re/join/XXXXXX**",
    color = 0xF2168F, -- (puedes cambiarlo según tu preferencia) NO CAMBIES EL PREFIJO 0x, despues de 0x pega tu color hexadeciaml
    footer = {
        text = "TEXTO DE ABAJO", -- Texto inferior
        icon_url = "URL DEL ICONO DEL FOOTER", -- Icono inferior izquierdo 
    },
    timestamp = os.date('!%Y-%m-%dT%H:%M:%SZ'),

    thumbnail = {
        url = "URL DEL LOGO SUPERIOR DERECHO",  -- Coloca aquí la URL de tu miniatura
    }
}

-- Llama a esta función cuando el servidor de FiveM esté completamente cargado
sendDiscordMessage("# ||@everyone|| ¡SERVIDOR OPERATIVO! ||@everyone||", embed) -- Llama a la función con @everyone en el contenido del mensaje
