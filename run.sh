rm galaxy_library_export.py && ./wget.exe -nc https://raw.githubusercontent.com/AB1908/GOG-Galaxy-Export-Script/master/galaxy_library_export.py
rm csv_parser.py && ./wget.exe -nc https://raw.githubusercontent.com/Varstahl/GOG-Galaxy-HTML5-exporter/master/csv_parser.py
py galaxy_library_export.py -i /c/ProgramData/GOG.com/Galaxy/storage/galaxy-2.0.db -a
py csv_parser.py -i gameDB.csv --image-list
py csv_parser.py -i gameDB.csv --html5 --title "Flutch's games"
sed 's/\"images\//\"https\:\/\/images\.gog\.com\//g' index.html > index.html.tmp && sed 's/\.webp\"/\.webp\?namespace\=gamesdb\"/g' index.html.tmp > index.html && rm index.html.tmp
