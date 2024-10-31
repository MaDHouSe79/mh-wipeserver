fx_version 'cerulean'
games { 'gta5' }
lua54 "yes";


author 'MaDHouSe'
description 'QB Wipe Server'
version '1.0.0'

shared_scripts {
    '@qb-core/shared/locale.lua',
    'config.lua',
    'locales/en.lua', -- change en to your language
    
}

client_scripts {
    'client/main.lua',
}

server_scripts {
    '@oxmysql/lib/MySQL.lua',
    'server/main.lua',
    'server/update.lua',
}

dependencies {
    'oxmysql',
    'qb-core',
}
