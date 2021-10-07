#!/bin/bash

## Set path
items_json=data/mbb/loot_tables/system/ongame/items.json
bingo_items_json=data/mbb/tags/items/bingo_items.json

## Detect whether jar command exists
hash jar >/dev/null 2>&1 
if [ $? -eq 1 ]; then
  echo [ERROR] jar command not found
  echo \ \ \ \ \ \ \ \ \ execute:  apt install openjdk-11-jdk-headless
  exit
fi

## Read .minecraft folder path
echo Write .minecraft folder path \(in WSL\)
echo \ \ e.g. \/mnt\/c\/Users\/User\/AppData\/Roaming\/.minecraft
read -ep ">>> " path

echo \ \ \- read ${path}

## Detect whether path exists
jarpath=${path}/versions/1.17/1.17.jar
if [ ! -e ${path} ]; then
  echo [ERROR] path not found
  exit
elif [ ! -e ${jarpath} ]; then
  echo [ERROR] 1.17.jar not found
  exit
fi

## Read jar
path_array=(`jar tf ${jarpath} | grep -e assets/minecraft/textures/block -e assets/minecraft/textures/item`)

## Add common lines
cat << EOX > ${items_json}
{
  "type": "generic",
  "pools":[
    {
      "rolls":1,
      "functions": [
        {
          "function": "minecraft:set_count",
          "count": {
            "min": 1,
            "max": 1
          }
        },
        {
          "function": "minecraft:set_nbt",
          "tag": "{HideFlags:63,Tags:[\"MBB_EnderChestItem\"]}"
        }
      ],
      "entries":[
EOX

cat << EOX > ${bingo_items_json}
{
  "replace": false,
  "values": [
EOX

declare -a temp_array=()
for filepath in "${path_array[@]}"; do
f=`basename ${filepath} | sed 's/\.[^\.]*$//'`
item=`echo ${f%.*} | sed -e "s/_top//" -e "s/_bottom//" -e "s/_front//" -e "s/_back//" -e "s/_inner//" -e "s/_ready//" -e "s/_vertical//" -e "s/_overlay//" -e "s/_lit//" -e "s/_on//" -e "s/_off//" -e "s/_corner//" -e "s/_inside//" -e "s/_outside//" -e "s/_inverted//" -e "s/_active//" -e "s/_inactive//" -e "s/_up//" -e "s/_down//" -e "s/_open//" -e "s/_middle//" -e "s/_tip//" -e "s/_base//" -e "s/_frustum//" -e "s/_merge//" -e "s/_honey//" -e "s/_saw//" -e "s/_end//" -e "s/_plant//" -e "s/_tendril//" -r -e "s/_stage[0-9]*//" -r -e "s/_side[0-9]*//" -r -e "s/_[0-9]+//"` 

if [ `echo "${item}" | grep -e structure -e destroy -e attached -e potted -e empty_ -e fire_ -e command_ -e _still -e _flow -e debug -e _portal -e redstone_dust -e farmland -e potion -e tipped_arrow_ -e roots_pot` ] || [ "${item}" = "water" ] || [ "${item}" = "magma" ] || [ "${item}" = "tripwire" ] || [ "${item}" = "potatoes" ] || [ "${item}" = "frosted_ice" ] || [ "${item}" = "cocoa" ] || [ "${item}" = "fire" ] || [ "${item}" = "spawn_egg" ] || [ "${item}" = "music_disc" ] || [ "${item}" = "soul_fire" ] || [ "${item}" = "cave_vines" ] || [ "${item}" = "dead" ] || [ "${item}" = "mushroom_block" ] || [ "${item}" = "powder_snow" ] || [ "${item}" = "broken_elytra" ] || [ "${item}" = "tall_seagrass" ] || [ "${item}" = "filled_map_markings" ] || [ "${item}" = "spyglass_model" ] || [ "${item}" = "jigsaw_lock" ] || [ "${item}" = "grass_block_snow" ] || [ "${item}" = "bedrock" ] || [ "${item}" = "barrier" ] || [ "${item}" = "spawner" ] || [ "${item}" = "tall_grass" ] || [ "${item}" = "chorus_plant" ] || [ "${item}" = "budding_amethyst" ] || [ "${item}" = "knowledge_book" ]; then
  continue;
elif [ `echo "${item}" | grep crossbow_` ]; then
  item=crossbow
elif [ `echo "${item}" | grep bow_` ]; then
  item=bow
elif [ `echo "${item}" | grep turtle_egg_` ]; then
  item=turtle_egg
elif [ `echo "${item}" | grep fishing_rod` ]; then
  item=fishing_rod
elif [ `echo "${item}" | grep carrot_a_stick` ]; then
  item=carrot_on_a_stick
elif [ `echo "${item}" | grep warped_fungus_a_stick` ]; then
  item=warped_fungus_on_a_stick
elif [ `echo "${item}" | grep piston_sticky` ]; then
  item=sticky_piston
elif [ `echo "${item}" | grep sweet_berry` ]; then
  item=sweet_berries
elif [ `echo "${item}" | grep bamboo_` ]; then
  item=bamboo
elif [ `echo "${item}" | grep composter_` ]; then
  item=composter
elif [ `echo "${item}" | grep bundle_` ]; then
  item=bundle
elif [ `echo "${item}" | grep grindstone_` ]; then
  item=grindstone
elif [ `echo "${item}" | grep -e small_dripleaf_stem -e big_dripleaf_stem -e melon_stem -e pumpkin_stem` ]; then
  item=`echo "${item%_stem}"`
elif [ `echo "${item}" | grep -e potatos -e beetroots -e carrots -e lecterns` ]; then
  item=`echo "${item%s}"`
elif [ "${item}" = "chorus" ]; then
  item=chorus_plant
fi

temp_array+=( ${item} )
done

declare -A temp2_array
for f in "${temp_array[@]}"; do
  temp2_array[$f]=''
done
item_array=("${!temp2_array[@]}")

for f in "${item_array[@]}"; do
  cat << EOK >> ${items_json}
        {
          "type":"minecraft:item",
          "name":"minecraft:${f}",
          "conditions": [
            {
              "condition": "minecraft:inverted",
              "term": {
                "condition": "minecraft:entity_properties",
                "entity": "this",
                "predicate": {
                  "nbt": "{EnderItems:[{id:\"minecraft:${f}\"}]}"
                }
              }
            }
          ]
        },
EOK
  cat << EOK >> ${bingo_items_json}
    "minecraft:${f}",
EOK
done

## Delete last line
sed -i -e '$d' ${items_json}
cat << EOL >> ${items_json}
        }
EOL
cat << EOL >> ${bingo_items_json}
    "minecraft:stone"
EOL


## Add brakets
cat << EOJ >> ${items_json}
      ]
    }
  ]
}
EOJ

cat << EOJ >> ${bingo_items_json}
  ]
}
EOJ