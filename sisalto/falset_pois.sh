#!/bin/bash
#käy läpi listan, jossa on sanoja, joiden tiedetään hälyttävän oikoluvussa
#  mutta joita ei haluta lisätä sanastoon
#  (esim englannin- ja ruotsinkieliset sanat. nimiä jne)

function get_sed_pattern {
    # jokaista ohituslistan riviä kohti tuota sed-käsky, joka
    # poistaa rivit, jotka löytyvät ohituslistasta
    xargs -I {} echo /^{}$/d < false_positive_words.txt
}

# Poista rivit funktiosta saatujen sääntöjen mukaan
sed -f <(get_sed_pattern) -i virheelliset_sanat.txt
