local Translations = {
    
    info = {
        ['wipe_command']  = "Wipe Server",
        ['wipe_started']  = "Server %{type} Started after 60Sec.",
        ['succes_wiped']  = "Server was successfully wiped",
        ['no_permission'] = "You don't have access",
    },
}

Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})