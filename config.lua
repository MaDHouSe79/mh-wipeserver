Config = {}
Config.WipeAfterSecs  = 60000 -- 1 min
Config.ShowTimeNotify = 5000  -- 6 secs
Config.WipeAllPlayers = true  -- true will do a complete server wipe, with false, all player will stay remain untouched. 


-- These are the only tables that remain untouched if you have the `Config.WipeAllPlayers` set to false.
Config.WipePlayers = { -- dont edit WipePlayers, if you do, you will not remove the players from your datbase.
    { table = 'apartments' },
    { table = 'players' },
    { table = 'playerskins' },
}

-- These tables are always cleaned after the wipe.
Config.CleanUpWipe = { -- You can add more tables below if needed.
    { table = 'houselocations' },
    { table = 'house_plants' },
    { table = 'bank_accounts' },
    { table = 'bank_statements' },
    { table = 'crypto_transactions' },
    { table = 'player_contacts' },
    { table = 'player_houses' },
    { table = 'player_mails' },
    { table = 'player_outfits' },
    { table = 'player_vehicles' },
    { table = 'player_warns' },
    { table = 'gloveboxitems' },
    { table = 'stashitems' },
    { table = 'trunkitems' },
    { table = 'phone_invoices' },
    { table = 'phone_messages' },
    { table = 'phone_gallery' },
    { table = 'phone_tweets' },
    { table = 'occasion_vehicles' },
}
