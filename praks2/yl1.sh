#!/bin/bash
# Ülesanne 2 - väljastab tervituse sisselogitud kasutaja nimega,
# suure algustähega: kasutaja oliver -> "Tere, Oliver!"

echo -n "Tere, "
NIMI=$(whoami)
echo -n "${NIMI^}"
echo "!"
