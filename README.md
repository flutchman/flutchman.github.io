# Flutchman's Game List

## Prerequisite

1. Optional: Install [Git Bash](https://gitforwindows.org/)
2. Install [python](https://www.python.org/downloads/windows/) 
3. Connect all your plaftorms accounts into GOG Galaxy (Parameters > Integrations)

## Thanks

[GOG Galaxy 2.0 Export Script](https://github.com/AB1908/GOG-Galaxy-Export-Script)

[GOG Galaxy 2.0 CSV export HTML5 formatter](https://github.com/Varstahl/GOG-Galaxy-HTML5-exporter)

[Wget](http://gnuwin32.sourceforge.net/packages/wget.htm)

## Generate

1. Open a command line (Windows + R > "cmd" > Enter)
2. Go to your unzipped folder from this repository
3. Use "Run.sh" if you install Git
4. Use below commands in order to generate your library

Run.sh:
```bash
rm galaxy_library_export.py && ./wget.exe -nc https://raw.githubusercontent.com/AB1908/GOG-Galaxy-Export-Script/master/galaxy_library_export.py
rm csv_parser.py && ./wget.exe -nc https://raw.githubusercontent.com/Varstahl/GOG-Galaxy-HTML5-exporter/master/csv_parser.py
py galaxy_library_export.py -i /c/ProgramData/GOG.com/Galaxy/storage/galaxy-2.0.db -a
py csv_parser.py -i gameDB.csv --image-list
py csv_parser.py -i gameDB.csv --html5
sed 's/\"images\//\"https\:\/\/images\.gog\.com\//g' index.html > index.html.tmp && sed 's/\.webp\"/\.webp\?namespace\=gamesdb\"/g' index.html.tmp > index.html && rm index.html.tmp
```
