
# shopify-base
<p>Base setup for modular sections and blocks with gulp sass compiler</p>
<p>Base for Shopify template repo - intended to be use as a github template to create a new repo and then for that repo to be used for a site theme with installed sections and blocks via npm install</p>

# Requirments - at the time of writing
<pre>npm -v </pre> 
9.6.5

<pre>shopify --version</pre>  
@shopify/cli/3.45.1 win32-x64 node-v18.13.0


# <h1>How to use</h1>
<h3><strong>FIRST TIME SETUP</strong></h3>
- clone repo 
- setup use the following command

<pre>SKIP_POST_INSTALL=1 npm install</pre>

- select 1 from the bash prompt

# <h3><strong>SECOND TIME SETUP - FOR GENERALLY WORKING ON AFTER INITIAL SETUP ABOVE</strong></h3>
- use the following command IF YOU DO NOT WANT A CLEAN SETUP FROM dependency IN PACKAGE-LOCK.JSON / PACKAGE.JSON FOR THEME SPECIFIC SECTIONS AND BLOCKS

<pre>npm install</pre>

# Shopify Lighthouse CI

You will need to set up action secrets within github for this to work, add lighthouse app and Shopify github access also

<h3>Secrets needed </h3>

<p>For slack notifications</p>
<pre>
SLACK_WEBHOOK
</pre>

<p>For storefront API - get this from store dashboard</p>
<pre>
SHOP_ACCESS_TOKEN
</pre>

<p>Storefront password - get this from store dashboard / assumption for site build / remove from work flow if not needed</p>
<pre>
SHOP_STORE_PASS
</pre>

<p>Lighthouse app token - from github app - this will need to be enabled</p>
<pre>
LHCI_GITHUB_APP_TOKEN
</pre>