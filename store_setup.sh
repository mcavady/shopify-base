#!/bin/bash
SHOPIFY_JSM_IMAGE_TILES="node_modules/shopify_jsm-image-tiles/"
echo "First time install ?"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) make install; break;;
        No ) exit;;
    esac
done
cp -r "$SHOPIFY_JSM_IMAGE_TILES"scss . \
&& cp -r "$SHOPIFY_JSM_IMAGE_TILES"sections . \
&& cp -r "$SHOPIFY_JSM_IMAGE_TILES"snippets . \
&& cp -r "$SHOPIFY_JSM_IMAGE_TILES"locals . \
&& cp -r "$SHOPIFY_JSM_IMAGE_TILES"assets .