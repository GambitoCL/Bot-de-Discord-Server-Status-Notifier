local discordToken = 'DISCORD_TOKEN' -- Replace with your discord app token

local function sendDiscordMessage(content, embed)
    local url = 'https://discord.com/api/v9/channels/CHANNEL_ID/messages' -- Replace CHANNEL_ID with the Discord channel ID
    
    PerformHttpRequest(url, function(statusCode, response, headers)
        if statusCode == 200 then
            print('^2Message sent to Discord successfully.')
        else
            print('^1Error sending message to Discord. Error code HTTP: ' .. statusCode)
            print('Server response:', response)
        end
    end, 'POST', json.encode({
        content = content,
        embeds = {embed}
    }), {
        ['Content-Type'] = 'application/json',
        ['Authorization'] = 'Bot ' .. discordToken
    })
end

-- Configure your embed here

local logoEmoji = "<:NAME_EMOJI:>ID_EMOJI" -- Replace NAME_EMOJI with the emoji name and replace ID_EMOJI with the custom emoji ID
local embed = {
    title = logoEmoji .."SERVIDOR ON".. logoEmoji, -- TITLE
    description = "El servidor ya se encuentra activo. !No dudes en reportar cualquier problema que ocurra en los canales correspondientes!.\n\n**Si no te puedes conectar directo desde FiveM, abre F8 copia, pega y das enter: connect cfx.re/join/XXXXXX**",
    color = 0xF2168F, -- (you can change it according to your preference) DO NOT CHANGE THE PREFIX 0x, after 0x paste your hex color
    footer = {
        text = "FOOTER TEXT", -- Footer Text
        icon_url = "URL ICON FOOTER", -- Bottom left icon
    },
    timestamp = os.date('!%Y-%m-%dT%H:%M:%SZ'),

    thumbnail = {
        url = "URL LOGO",  -- Place the URL of your thumbnail here -- top right logo
    }
}

sendDiscordMessage("# ||@everyone|| ¡SERVER ON! ||@everyone||", embed) -- Call the function with @everyone in the message content
