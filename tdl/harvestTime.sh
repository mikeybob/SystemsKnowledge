#!/bin/bash


# ┌──────────────────────────────────────────────────────────────────────────┐
# │                                                                          │
# │                                                                          │
# │                                                                          │
# └──────────────────────────────────────────────────────────────────────────┘


# Pre-work for the script

# if function ansicolordefs is not defined then source ~/.bashrc.d/ansicolors.sh
if ! declare -f ansicolordefs > /dev/null; then
    source ~/.bashrc.d/ansicolors.sh
fi


# this is the chat export part

central_storage="/mnt/mediastorage/TDL-ROOT"
export_dir="${central_storage}/exports"

echo -e "Main Script pid: $$"

# if export_dir location doesn't exist create it

 if [ ! -d "${export_dir}" ]; then
    mkdir -p "${export_dir}"
    echo -e "Created export directory: ${export_dir}"
 else

# exported data stored in $export_dir
    echo -e "Exporting eligible downoads list to: ${export_dir}"
 fi
# exported data stored in $export_dir
echo -e "Exporting eligible downoads list to: ${export_dir}"
tdl chat export -c "2169235453" -o "${export_dir}/tdl-export-abierto.json"
tdl chat export -c "1946088005" -o "${export_dir}/tdl-export-acesGoonCave.json"
tdl chat export -c "2093239263" -o "tdl-export-amigos.json"
tdl chat export -c "1187216107" -o "tdl-export-asianvids.json"
tdl chat export -c "1940225569" -o "tdl-export-barebackGalore.json"
tdl chat export -c "1943255812" -o "tdl-export-batorHell.json"
tdl chat export -c "2221841663" -o "tdl-export-boysParadise.json"
tdl chat export -c "1921624456" -o "tdl-export-captions.json"
tdl chat export -c "2205731781" -o "tdl-export-cccp.json"
tdl chat export -c "2225242775" -o "tdl-export-chemsexGuys.json"
tdl chat export -c "2092269803" -o "tdl-export-chocbeach.json"
tdl chat export -c "2076659183" -o "tdl-export-clubinho.json"
tdl chat export -c "1745295196" -o "tdl-export-dadAndBear.json"
tdl chat export -c "1289240212" -o "tdl-export-daddyissues.json"
tdl chat export -c "1858297882" -o "tdl-export-DP5555555.json"
tdl chat export -c "1938535581" -o "tdl-export-FoundationAesthetics.json"
tdl chat export -c "1111723837" -o "tdl-export-g3hunks.json"
tdl chat export -c "1358737515" -o "tdl-export-GayBearNSFWChat.json"
tdl chat export -c "2150540995" -o "tdl-export-gaybeastV2.json"
tdl chat export -c "2083643207" -o "tdl-export-gayMidgets.json"
tdl chat export -c "1992940753" -o "tdl-export-gaypornbare.json"
tdl chat export -c "1447772357" -o "tdl-export-GloryHoleVoyeurism.json"
tdl chat export -c "2179802415" -o "tdl-export-groupoAmigos.json"
tdl chat export -c "2061874638" -o "tdl-export-HomelessExperiences20.json"
tdl chat export -c "1612239969" -o "tdl-export-homelessnorbo.json"
tdl chat export -c "1179374241" -o "tdl-export-homensincriveis.json"
tdl chat export -c "1993338508" -o "tdl-export-nakedSlamVids.json"
tdl chat export -c "2041507873" -o "tdl-export-NextDoorHairy.json"
tdl chat export -c "1877092177" -o "tdl-export-nlbros.json"
tdl chat export -c "1610627213" -o "tdl-export-pozbb.json"
tdl chat export -c "1436326593" -o "tdl-export-punisherVoyeur.json"
tdl chat export -c "2098646086" -o "tdl-export-queens.json"
tdl chat export -c "1852745118" -o "tdl-export-sexyAnimation.json"
tdl chat export -c "1970652462" -o "tdl-export-sexySelfSuckers.json"
tdl chat export -c "2030371774" -o "tdl-export-slavicgods.json"
tdl chat export -c "1622837297" -o "tdl-export-sleepingguys.json"
tdl chat export -c "2025051581" -o "tdl-export-toysWorld.json"
tdl chat export -c "2098842326" -o "tdl-export-uncleBobSlam.json"
tdl chat export -c "1932171412" -o "tdl-export-zzzhomeless.json"


# ┌───────────────────────────────────────────────────────────────────────────────┐
# │  Registered in goonerskin namespace so add nsgs tag in filename
#    to process differently later.                                             │
# └───────────────────────────────────────────────────────────────────────────────┘
tdl chat export --ns gooner -c "1417309568" -o "tdl-nsgs-export-pakonDoggyStyle.json"
tdl chat export --ns gooner -c "1670735103" -o "tdl-nsgs-export-studyGroup.json"


# download what is in the jason files that hasn't been downloaded already.
#

# Loop through the exported chat files in the and download them
for file in tdl-export-*.json; do
    chat_name="${file%.json}"
    dir="/mnt/mediastorage/TDL-ROOT/${chat_name}"
    tdl download -l 5 --skip-same -f "${file}" --dir "${dir}" --desc
done
# │  Registered in goonerskin account                                             │
# └───────────────────────────────────────────────────────────────────────────────┘
tdl download --ns gooner -l 5 --skip-same -f "tdl-nsgs-export-pakonDoggyStyle.json" --dir "/mnt/mediastorage/TDL-ROOT/pakonDoggyStyle" --desc
tdl download --ns gooner -l 5 --skip-same -f "tdl-nsgs-export-russianfuckers.json" --dir "/mnt/mediastorage/TDL-ROOT/russianfuckers" --desc
tdl download --ns gooner -l 5 --skip-same -f "tdl-nsgs-export-studyGroup.json" --dir "/mnt/mediastorage/TDL-ROOT/studyGroup" --desc


exit 0
