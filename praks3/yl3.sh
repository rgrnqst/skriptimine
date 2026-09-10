#!/bin/bash
# Ülesanne 3
# Eesmärk: arvutada bussiekskursiooni korraldajale, mitu täis bussi
# grupp täidab ja mitu inimest jääb maha.
# Jagatis annab täis busside arvu, jääk (%) mahajäänud reisijad.

echo -n "Sisesta reisijate arv grupis: "
read reisijad
echo -n "Sisesta kohtade arv bussis: "
read kohti

busse=$(expr $reisijad / $kohti)
maha=$(expr $reisijad % $kohti)

echo
echo "Täielikult täidetud busse: $busse"
echo "Maha jäi $maha inimest"
