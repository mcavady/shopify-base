
# Shopify-base
<p>Base setup for modular sections and blocks with gulp sass compiler</p>
<p>Base for Shopify template repo - intended to be use as a github template to create a new repo and then for that repo to be used for a site theme with installed sections and blocks via npm install</p>
<hr />

# Requirments - at the time of writing
<pre>npm -v </pre> 
<p>9.6.5</p>

<pre>shopify --version</pre>  
<p>@shopify/cli/3.45.1 win32-x64 node-v18.13.0</p>
<hr/>

# How to use
<h2>Step 1</h2>
<h3><strong>FIRST TIME SETUP</strong> - Project setup Stage</h3>
- clone repo 
- setup use the following command

<pre>SKIP_POST_INSTALL=1 npm install</pre>
- select 1 from the bash prompt

<h2>Step 2</h2>
# <h3><strong>SECOND TIME SETUP</strong> - For general update after project setup above ( Step 1 )</h3>
- use the following command IF YOU DO NOT WANT A CLEAN SETUP FROM dependency IN PACKAGE-LOCK.JSON / PACKAGE.JSON FOR THEME SPECIFIC SECTIONS AND BLOCKS
<pre>npm install</pre>
<hr/>

# The theme
<p>This can be either your own theme or the DAWN theme from Shopify <strong>This must be Shopify 2.0 </strong></p>
- download your 2.0 theme of choice and extract the files within the root folder to match Shopify theme structure.
<hr/>

# Shopify CLI3
<p>This is the version for intended use - you may want to disable the "hot reload" when running the gulp compiler as this will sometimes cause a 'double' reload, also when tabbing between windows the reload may trigger and it will get frustrating</p>
<p>The latest Dawn theme can be found here - <a href="https://github.com/Shopify/dawn" title="https://github.com/Shopify/dawn" >https://github.com/Shopify/dawn</a> </p>
<hr/>

# Shopify Lighthouse CI

<p>You will need to set up action secrets within github for this to work, add lighthouse app and Shopify github access also</p>

<h3>Secrets needed </h3>

<p>For slack notifications</p>
<pre>
SLACK_WEBHOOK
</pre>

<p>For storefront API - get this from store dashboard <a href="https://shopify.dev/docs/themes/tools/github" title="https://shopify.dev/docs/themes/tools/github" >https://shopify.dev/docs/themes/tools/github</a> </p>
<pre>
SHOP_ACCESS_TOKEN
</pre>

<p>Storefront password - get this from store dashboard / assumption for site build / remove from work flow if not needed</p>
<pre>
SHOP_STORE_PASS
</pre>

<p>Lighthouse app token - from github app - this will need to be enabled <a href="https://github.com/GoogleChrome/lighthouse-ci" title="https://github.com/GoogleChrome/lighthouse-ci">https://github.com/GoogleChrome/lighthouse-ci</a> </p>
<pre>
LHCI_GITHUB_APP_TOKEN
</pre>