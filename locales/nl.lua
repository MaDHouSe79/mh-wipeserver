local Translations = {

    info = {
        ['wipe_command']  = "Wipe Server",
        ['wipe_started']  = "Server %{type} Word Gestart na 60Sec.",
        ['succes_wiped']  = "Server is met succes gewiped",
        ['no_permission'] = "Je hebt geen toegang",
    },
}

Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})