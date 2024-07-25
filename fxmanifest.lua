--[[
This is the simple variant of fxserver-discord-notifer.
Designed to be dissolved  into a framework of your choice.

header_img: embed's top right image (medium)
footer_img: embed's bottom left image (small)
webhook_url: your Discord webhook <-> API link
--]]

fx_version 'cerulean'
games { 'rdr3', 'gta5' }

author 'GambitoCL, KC1508'
version '1.1.0'

server_script 'webhook.lua'

--[[ Example:
    header_img 'https://forum-cfx-re.akamaized.net/original/4X/f/7/b/f7bd789d9d3ad55ff91dc57979e485e99e1a5273.png'
    footer_img 'https://forum.cfx.re/uploads/default/optimized/4X/3/8/7/38769c61a46ed86700c737079f043c5ae89673a0_2_32x32.png'
    webhook_url 'https://discord.com/api/webhooks/123456789'
]]

header_img ''
footer_img ''
webhook_url ''
