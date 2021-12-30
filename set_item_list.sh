#!/bin/bash

#####################################
## Minecraft Bingo Battle
## MC-Version: JE 1.17
## Author    : @KizahashiLuca
## Date      : 14 Oct 2021
## Version   : β-1.0
#####################################

## Set path
ItemList=item_list.csv
ItemJson=data/mbb/loot_tables/system/ongame/items.json
BingoJson=data/mbb/tags/items/bingo_items.json
declare -a ColorArray=("white" "orange" "magenta" "light_blue" "yellow" "lime" "pink" "gray" "light_gray" "cyan" "purple" "blue" "brown" "green" "red" "black")

## Add common lines
cat << EOS > ${ItemJson}
{
  "type": "generic",
  "pools": [
    {
      "rolls": 1,
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
          "tag": "{HideFlags:63,Tags:[\"MBB_SheetItem\"]}"
        }
      ],
      "entries": [
EOS

cat << EOS > ${BingoJson}
{
  "replace": false,
  "values": [
EOS

## Read CSV
while read R; do
  col[0]=`echo ${R} | cut -d , -f 1`  # item_name
  col[1]=`echo ${R} | cut -d , -f 2`  # erase_nbt
  col[2]=`echo ${R} | cut -d , -f 3`  # prefix_color_w_stained
  col[3]=`echo ${R} | cut -d , -f 4`  # prefix_color_n_stained
  col[4]=`echo ${R} | cut -d , -f 5`  # not_self
  col[5]=`echo ${R} | cut -d , -f 6`  # erase_plural
  col[6]=`echo ${R} | cut -d , -f 7`  # suffix_stairs
  col[7]=`echo ${R} | cut -d , -f 8`  # suffix_slab
  col[8]=`echo ${R} | cut -d , -f 9`  # suffix_wall
  col[9]=`echo ${R} | cut -d , -f 10`  # suffix_pillar
  col[10]=`echo ${R} | cut -d , -f 11`  # prefix_cracked
  col[11]=`echo ${R} | cut -d , -f 12`  # prefix_chiseled
  col[12]=`echo ${R} | cut -d , -f 13`  # suffix_nugget
  col[13]=`echo ${R} | cut -d , -f 14`  # suffix_ingot
  col[14]=`echo ${R} | cut -d , -f 15`  # suffix_ore
  col[15]=`echo ${R} | cut -d , -f 16`  # add_deepslate_ore
  col[16]=`echo ${R} | cut -d , -f 16`  # suffix_block
  col[17]=`echo ${R} | cut -d , -f 18`  # suffix_fan
  col[18]=`echo ${R} | cut -d , -f 19`  # suffix_planks
  col[19]=`echo ${R} | cut -d , -f 20`  # suffix_log
  col[20]=`echo ${R} | cut -d , -f 21`  # suffix_stem
  col[21]=`echo ${R} | cut -d , -f 22`  # add_stripped_log
  col[22]=`echo ${R} | cut -d , -f 23`  # add_stripped_stem
  col[23]=`echo ${R} | cut -d , -f 24`  # suffix_wood
  col[24]=`echo ${R} | cut -d , -f 25`  # suffix_hyphae
  col[25]=`echo ${R} | cut -d , -f 26`  # add_stripped_wood
  col[26]=`echo ${R} | cut -d , -f 27`  # add_stripped_hyphae
  col[27]=`echo ${R} | cut -d , -f 28`  # suffix_leaves
  col[28]=`echo ${R} | cut -d , -f 29`  # suffix_sapling
  col[29]=`echo ${R} | cut -d , -f 30`  # suffix_fungus
  col[30]=`echo ${R} | cut -d , -f 31`  # suffix_roots
  col[31]=`echo ${R} | cut -d , -f 32`  # suffix_fence
  col[32]=`echo ${R} | cut -d , -f 33`  # suffix_fence_gate
  col[33]=`echo ${R} | cut -d , -f 34`  # suffix_button
  col[34]=`echo ${R} | cut -d , -f 35`  # suffix_pressure_plate
  col[35]=`echo ${R} | cut -d , -f 36`  # suffix_door
  col[36]=`echo ${R} | cut -d , -f 37`  # suffix_trapdoor
  col[37]=`echo ${R} | cut -d , -f 38`  # suffix_boat
  col[38]=`echo ${R} | cut -d , -f 39`  # suffix_sign
  col[39]=`echo ${R} | cut -d , -f 40`  # prefix_cooked
  col[40]=`echo ${R} | cut -d , -f 41`  # prefix_leather
  col[41]=`echo ${R} | cut -d , -f 42`  # prefix_chainmail
  col[42]=`echo ${R} | cut -d , -f 43`  # prefix_wooden
  col[43]=`echo ${R} | cut -d , -f 44`  # prefix_stone
  col[44]=`echo ${R} | cut -d , -f 45`  # prefix_iron
  col[45]=`echo ${R} | cut -d , -f 46`  # prefix_golden
  col[46]=`echo ${R} | cut -d , -f 47`  # prefix_diamond
  col[47]=`echo ${R} | cut -d , -f 48`  # prefix_netherite

  ## Skip first row
  if [ "${col[0]}" = "item" ]; then
    continue;
  fi

  ## Loop item
  for i in `seq 0 1 47`; do
    declare -a ItemArray=()

    ## not_self
    if [ "${col[4]}" != "true" ]; then
      ItemArray+=( "${col[0]}" )
    fi

    ## prefix_color
    if [ "${col[2]}" = "true" ]; then
      for c in "${ColorArray[@]}"; do
        ItemArray+=( "${c}_stained_${col[0]}" )
      done
    fi
    if [ "${col[3]}" = "true" ]; then
      for c in "${ColorArray[@]}"; do
        ItemArray+=( "${c}_${col[0]}" )
      done
    fi

    ## erase_plural
    if [ "${col[5]}" = "true" ]; then
      TempItemName=${col[0]%s}
    else
      TempItemName=${col[0]}
    fi

    ## suffix_stairs
    if [ "${col[6]}" = "true" ]; then
      ItemArray+=( "${TempItemName}_stairs" )
    fi

    ## suffix_slab
    if [ "${col[7]}" = "true" ]; then
      ItemArray+=( "${TempItemName}_slab" )
    fi

    ## suffix_wall
    if [ "${col[8]}" = "true" ]; then
      ItemArray+=( "${TempItemName}_wall" )
    fi

    ## suffix_pillar
    if [ "${col[9]}" = "true" ]; then
      ItemArray+=( "${TempItemName}_pillar" )
    fi

    ## prefix_cracked
    if [ "${col[10]}" = "true" ]; then
      ItemArray+=( "cracked_${col[0]}" )
    fi

    ## prefix_chiseled
    if [ "${col[11]}" = "true" ]; then
      ItemArray+=( "chiseled_${col[0]}" )
    fi

    ## suffix_nugget
    if [ "${col[12]}" = "true" ]; then
      ItemArray+=( "${col[0]}_nugget" )
    fi

    ## suffix_ingot
    if [ "${col[13]}" = "true" ]; then
      ItemArray+=( "${col[0]}_ingot" )
    fi

    ## suffix_ore
    if [ "${col[14]}" = "true" ]; then
      ItemArray+=( "${col[0]}_ore" )
    fi

    ## add_deepslate_ore
    if [ "${col[15]}" = "true" ]; then
      ItemArray+=( "deepslate_${col[0]}_ore" )
    fi

    ## suffix_block
    if [ "${col[16]}" = "true" ]; then
      ItemArray+=( "${col[0]}_block" )
    fi

    ## suffix_fan
    if [ "${col[17]}" = "true" ]; then
      ItemArray+=( "${col[0]}_fan" )
    fi

    ## suffix_planks
    if [ "${col[18]}" = "true" ]; then
      ItemArray+=( "${col[0]}_planks" )
    fi

    ## suffix_log
    if [ "${col[19]}" = "true" ]; then
      ItemArray+=( "${col[0]}_log" )
    fi

    ## suffix_stem
    if [ "${col[20]}" = "true" ]; then
      ItemArray+=( "${col[0]}_stem" )
    fi

    ## add_stripped_log
    if [ "${col[21]}" = "true" ]; then
      ItemArray+=( "stripped_${col[0]}_log" )
    fi

    ## add_stripped_stem
    if [ "${col[22]}" = "true" ]; then
      ItemArray+=( "stripped_${col[0]}_stem" )
    fi

    ## suffix_wood
    if [ "${col[23]}" = "true" ]; then
      ItemArray+=( "${col[0]}_wood" )
    fi

    ## suffix_hyphae
    if [ "${col[24]}" = "true" ]; then
      ItemArray+=( "${col[0]}_hyphae" )
    fi

    ## add_stripped_wood
    if [ "${col[25]}" = "true" ]; then
      ItemArray+=( "stripped_${col[0]}_wood" )
    fi

    ## add_stripped_hyphae
    if [ "${col[26]}" = "true" ]; then
      ItemArray+=( "stripped_${col[0]}_hyphae" )
    fi

    ## suffix_leaves
    if [ "${col[27]}" = "true" ]; then
      ItemArray+=( "${col[0]}_leaves" )
    fi

    ## suffix_sapling
    if [ "${col[28]}" = "true" ]; then
      ItemArray+=( "${col[0]}_sapling" )
    fi

    ## suffix_fungus
    if [ "${col[29]}" = "true" ]; then
      ItemArray+=( "${col[0]}_fungus" )
    fi

    ## suffix_roots
    if [ "${col[30]}" = "true" ]; then
      ItemArray+=( "${col[0]}_roots" )
    fi

    ## suffix_fence
    if [ "${col[31]}" = "true" ]; then
      ItemArray+=( "${col[0]}_fence" )
    fi

    ## suffix_fence_gate
    if [ "${col[32]}" = "true" ]; then
      ItemArray+=( "${col[0]}_fence_gate" )
    fi

    ## suffix_button
    if [ "${col[33]}" = "true" ]; then
      ItemArray+=( "${col[0]}_button" )
    fi

    ## suffix_pressure_plate
    if [ "${col[34]}" = "true" ]; then
      ItemArray+=( "${col[0]}_pressure_plate" )
    fi

    ## suffix_door
    if [ "${col[35]}" = "true" ]; then
      ItemArray+=( "${col[0]}_door" )
    fi

    ## suffix_trapdoor
    if [ "${col[36]}" = "true" ]; then
      ItemArray+=( "${col[0]}_trapdoor" )
    fi

    ## suffix_boat
    if [ "${col[37]}" = "true" ]; then
      ItemArray+=( "${col[0]}_boat" )
    fi

    ## suffix_sign
    if [ "${col[38]}" = "true" ]; then
      ItemArray+=( "${col[0]}_sign" )
    fi

    ## prefix_cooked
    if [ "${col[39]}" = "true" ]; then
      ItemArray+=( "cooked_${col[0]}" )
    fi

    ## prefix_leather
    if [ "${col[40]}" = "true" ]; then
      ItemArray+=( "leather_${col[0]}" )
    fi

    ## prefix_chainmail
    if [ "${col[41]}" = "true" ]; then
      ItemArray+=( "chainmail_${col[0]}" )
    fi

    ## prefix_wooden
    if [ "${col[42]}" = "true" ]; then
      ItemArray+=( "wooden_${col[0]}" )
    fi

    ## prefix_stone
    if [ "${col[43]}" = "true" ]; then
      ItemArray+=( "stone_${col[0]}" )
    fi

    ## prefix_iron
    if [ "${col[44]}" = "true" ]; then
      ItemArray+=( "iron_${col[0]}" )
    fi

    ## prefix_golden
    if [ "${col[45]}" = "true" ]; then
      ItemArray+=( "golden_${col[0]}" )
    fi

    ## prefix_diamond
    if [ "${col[46]}" = "true" ]; then
      ItemArray+=( "diamond_${col[0]}" )
    fi

    ## prefix_netherite
    if [ "${col[47]}" = "true" ]; then
      ItemArray+=( "netherite_${col[0]}" )
    fi
  done

  ## Add item lines
  for f in "${ItemArray[@]}"; do
    if [ "${f}" = "potion" ] || [ "${f}" = "splash_potion" ] || [ "${f}" = "lingering_potion" ] || [ "${f}" = "enchanted_book" ] || [ "${f}" = "music_disc_(.*)" ]; then
      cat << EOS >> ${ItemJson}
        {
          "type": "minecraft:item",
          "name": "minecraft:${f}",
          "functions": [
            {
              "function": "minecraft:set_name",
              "entity": "this",
              "name": [
                [
                  "",
                  {"translate":"item.minecraft.${f}","italic":false}
                ]
              ]
            }
          ]
        },
EOS
    else 
      cat << EOS >> ${ItemJson}
        {
          "type": "minecraft:item",
          "name": "minecraft:${f}"
        },
EOS
    fi
    cat << EOS >> ${BingoJson}
    "minecraft:${f}",
EOS
  done
done < ${ItemList}

## Delete last comma
sed -i -e '$ s/,//g' ${ItemJson}
sed -i -e '$ s/,//g' ${BingoJson}

## Add brakets
cat << EOF >> ${ItemJson}
      ]
    }
  ]
}
EOF

cat << EOF >> ${BingoJson}
  ]
}
EOF