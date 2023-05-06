#!/bin/bash
# Sections to be added to go here
SHOPIFY_JSM_IMAGE_TILES="node_modules/shopify_jsm-image-tiles/"

#Check for first time run
echo "First time install ?"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) break;;
        No ) exit;;
    esac
done

#needs some work but for now works - locales could become a sticking point when multiple Sections are added in this way - will need to script something for appending locales to the default en GB for example.
cp -r "$SHOPIFY_JSM_IMAGE_TILES"scss . \
&& cp -r "$SHOPIFY_JSM_IMAGE_TILES"sections . \
&& cp -r "$SHOPIFY_JSM_IMAGE_TILES"snippets . \
&& cp -r "$SHOPIFY_JSM_IMAGE_TILES"locales . \
&& cp -r "$SHOPIFY_JSM_IMAGE_TILES"assets .