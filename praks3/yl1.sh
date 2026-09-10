#!/bin/bash
# Ülesanne 1
# Eesmärk: küsida kasutajalt ees- ja perenimi ning tervitada teda.
# read loeb ühelt realt korraga kaks muutujat.

echo -n "Sisesta oma ees- ja perenimi: "
read eesnimi perenimi

echo "Tere tulemast, $eesnimi $perenimi"
echo "Sinu eesnimi on $eesnimi ja perenimi on $perenimi"
