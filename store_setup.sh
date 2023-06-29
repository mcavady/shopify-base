#!/bin/bash
# Sections to be added to go here
SHOPIFY_JSM_IMAGE_TILES="node_modules/shopify_jsm-image-tiles/";
SHOPIFY_JSM_TRUST_CARDS="node_modules/shopify_jsm-trust-cards/";

#Check for first time run
echo "First time install ?"
echo "Do you want to rebuild all - this will remove any existing files and replace them - lets hope you are using version control!"

select yn in "Yes" "No"; do
    case $yn in
        Yes ) break;;
        No ) exit;;
    esac
#Get the current dir for file check on prebuild theme - still using cp for this as windows git bash does not come shipped with rsync :( need to file an easier way to rm files in a batch rather than listing then - perhaps by prefix jsm in file naming?
CURRENT_DIRECTORY=$(pwd)
if [ -f $CURRENT_DIRECTORY"/sections/jsm-trust-cards.liquid" ]; then
      echo "theme already built";
      #do something with the files that exist here see note above WIP
    else
      echo "files does not exist"
    #needs some work but for now works - locales could become a sticking point when multiple Sections are added in this way - will need to script something for appending locales to the default en GB for example. duplicate folders cause cp error consider other type of file copy or seperate by file names to copy
    cp -r "$SHOPIFY_JSM_IMAGE_TILES"scss . \
    && cp -r "$SHOPIFY_JSM_IMAGE_TILES"sections . \
    && cp -r "$SHOPIFY_JSM_IMAGE_TILES"snippets . \
    && cp -r "$SHOPIFY_JSM_IMAGE_TILES"assets . \
    && cp -r "$SHOPIFY_JSM_TRUST_CARDS"scss . \
    && cp -r "$SHOPIFY_JSM_TRUST_CARDS"sections . \
    && cp -r "$SHOPIFY_JSM_TRUST_CARDS"snippets . \
    && cp -r "$SHOPIFY_JSM_TRUST_CARDS"assets .

    echo "First time install complete! :) - Any errors will be reported above";
fi


exit;
done
