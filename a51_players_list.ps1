<#
    .SYNOPSIS
        List players on ffa.q3a51.com

    .DESCRIPTION
        Script uses qstat to query ffa.q3a51.com and list users, omitting bots.
    .EXAMPLE
        PS C:\> .\a51_players_list.ps1

    .NOTES
        Name ......:  a51_players_list.ps1
        Date ......:  11/10/25
        Author ....:  Trismegist0s
        Purpose ...:  List players on ffa.q3a51.com
#>

# Path to qstat.exe in the same folder as this script
$qstatPath = Join-Path $PSScriptRoot 'qstat.exe'

# Define an array of names to exclude
$exclude_patterns = @(
    "56kdecoy", ">Demon<", "\*FD\*DefT", "\[frldge\]", "\[GI\]dook\.",
    "Anarki", "Angel", "anthony", "Austin Powers", "Biker", "Bitterman",
    "bloop", "Bones", "Brood700", "Cadavre", "Crash", "Daemia", "daisy",
    "Deft", "Doom", "EatMyLeg", "Elimin8r", "EnDURAnCE", "Flisk", "francis",
    "GnarlyBear", "Gorre", "Grrl", "Grunt", "Hossman", "Hunter", "InstantKarma",
    "Jedi Knight", "JEVER", "JOSHUA", "Keel", "Klesk", "Krusade", "LovelyLisa",
    "LUAP", "Lucy", "Maika", "Major", "mambo", "mangle", "meta", "MOON", "Mynx",
    "natalie portman", "nullpointer", "Orbb", "Paganini", "Patriot", "Phobos",
    "qog!wallabi", "Ranger", "Razor", "rebel", "Red", "RESPONSE", "reyalp",
    "Roderic", "Sarge", "Scabi", "SiTTiNDuCK", "Slammer", "Slash", "SleepSter",
    "Sorlag", "Soul|eNdo!", "sparky", "SquishyTomato", "Stripe", "Stroggo",
    "TankJr", "tekros", "Tezcatlipoca", "TH0R", "TigraoCavaludo", "tulip",
    "Turgit", "Uriel", "uuuuu", "Visor", "warpedspider", "Wrack", "Xaero",
    "XanaX", "Yuriko"
)

# Join patterns into a single regex (like grep -E)
$pattern = ($exclude_patterns -join '|')

# Run qstat, skip first processed line (header), skip ping, exclude patterns
& $qstatPath -q3s "ffa.q3a51.com:27960" -P |
    ForEach-Object {
        $f = $_ -split '\s+'
        if ($f.Count -ge 5) {
            # skip score, ping, and other numeric fields
            ($f[4..($f.Count - 1)] -join ' ').TrimEnd()
        }
    } |
    Where-Object { $_ -and ($_ -notmatch $pattern) -and $_ -notlike '*-=`*A51`*=- FFA*'} |
    Select-Object -Skip 1
