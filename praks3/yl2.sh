#!/bin/bash
# Ülesanne 2
# Eesmärk: arvutada, mitu pakki küpsiseid tuleb küpsisetordi jaoks poest osta.
# Kasutaja sisestab aluskandiku mõõdud, küpsise suuruse, kihtide arvu
# ja pakis olevate küpsiste arvu. Arvutused tehakse expr käsuga.

echo -n "Sisesta aluskandiku pikkus (cm): "
read pikkus
echo -n "Sisesta aluskandiku laius (cm): "
read laius
echo -n "Sisesta küpsise suurus (cm): "
read suurus
echo -n "Sisesta kihtide arv: "
read kihte
echo -n "Sisesta, mitu küpsist on ühes pakis: "
read pakis

# mitu küpsist mahub pikkuse ja laiuse suunas
ridu=$(expr $pikkus / $suurus)
veerge=$(expr $laius / $suurus)

# ühe kihi ja kogu tordi küpsiste arv
kihis=$(expr $ridu \* $veerge)
kokku=$(expr $kihis \* $kihte)

# pakkide arv ümardatuna ülespoole
pakke=$(expr \( $kokku + $pakis - 1 \) / $pakis)

echo
echo "Ühte kihti mahub $kihis küpsist ($ridu x $veerge)"
echo "Kogu tordi jaoks on vaja $kokku küpsist"
echo "Poest tuleb osta $pakke pakki"
