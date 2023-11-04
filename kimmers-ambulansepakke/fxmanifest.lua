fx_version 'cerulean'
game 'gta5'

description 'kimmers-ambulansepakke'
version '1.3.1'

shared_scripts {
    '@qb-core/shared/locale.lua',
    'locales/no.lua' -- Change to the language you want
}
server_script 'server/*.lua'
client_scripts {
    'client/*.lua',
}


files {
}

lua54 'yes'
use_experimental_fxv2_oal 'yes'
