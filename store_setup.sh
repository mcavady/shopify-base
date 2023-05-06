#!/bin/bash

echo "First time install ?"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) make install; break;;
        No ) exit;;
    esac
done
cp -r node_modules/shopify_jsm-image-tiles/scss . && cp -r node_modules/shopify_jsm-image-tiles/sections . && cp -r node_modules/shopify_jsm-image-tiles/snippets . && cp -r node_modules/shopify_jsm-image-tiles/locals . && cp -r node_modules/shopify_jsm-image-tiles/assets .