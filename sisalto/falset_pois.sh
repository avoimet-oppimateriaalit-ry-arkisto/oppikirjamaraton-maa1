#!/bin/bash
#käy läpi listan, jossa on sanoja, joiden tiedetään hälyttävän oikoluvussa
#  mutta joita ei haluta lisätä sanastoon
#  (esim englannin- ja ruotsinkieliset sanat. nimiä jne)
for i in `cat false_positive_words.txt`
do
 #poista rivi, jolla sana on (vain kokonaiset sanat)
 sed -i /^$i$/d virheelliset_sanat.txt
done

