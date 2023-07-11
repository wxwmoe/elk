#!/bin/bash
git reset --hard
git pull
git checkout release
# set elk open graph
sed -i "s|'Elk'|'Elk (wxw.moe)'|" nuxt.config.ts
sed -i "s|elk\.zone|elk.wxw.moe|" nuxt.config.ts
# set elk default server
sed -i "s|m\.webtoo\.ls|wxw.moe|" nuxt.config.ts
# set elk oauth app info
sed -i "s|elk\.zone|elk.wxw.moe|" server/utils/shared.ts
sed -i "/client_name/{s|''|' (wxw.moe)'|}" server/utils/shared.ts
