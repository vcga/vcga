#!/bin/bash

reset

tmp="/tmp/$(date +%N).cir"
lib=$(cat spice_models/model.lib)
cir=$(cat *.cir)

echo -e "Test" > $tmp
echo -e "$lib" >> $tmp
echo -e "$cir" | awk '{gsub(".(title|include) .*", "");print}' >> $tmp

spiceopus $tmp

rm -f $tmp