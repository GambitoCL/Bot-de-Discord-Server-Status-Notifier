local function sendDiscordMessage(embed)
    PerformHttpRequest(GetResourceMetadata(GetCurrentResourceName(), 'webhook_url'), function() end, 'POST',
        json.encode({ embeds = { embed } }), { ['Content-Type'] = 'application/json' })
end

local embed = {
    color = 0x1f1f1f, --[[ 0x:HEX ]]

    title = "**Server Online**",
    description = "Our game server is back online and running.",

    footer = { text = GetConvar('sv_hostname', 'Cfx.re Platform Server'), icon_url = GetResourceMetadata(GetCurrentResourceName(), 'footer_img'), },

    timestamp = os.date('!%Y-%m-%dT%H:%M:%SZ'),

    thumbnail = { url = GetResourceMetadata(GetCurrentResourceName(), 'header_img') },
}

sendDiscordMessage(embed)
