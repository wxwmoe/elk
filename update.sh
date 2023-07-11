#!/bin/bash
git reset --hard
git pull
git checkout release
sed -i "s|'Elk'|'Elk (wxw.moe)'|" nuxt.config.ts
sed -i "s|elk\.zone|elk.wxw.moe|" nuxt.config.ts
sed -i "s|m\.webtoo\.ls|wxw.moe|" nuxt.config.ts
sed -i "s|elk\.zone|elk.wxw.moe|" server/utils/shared.ts
sed -i "/client_name/{s|''|' (wxw.moe)'|}" server/utils/shared.ts
