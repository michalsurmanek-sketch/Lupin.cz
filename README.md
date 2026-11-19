# Lupin.cz

Prémiový český web o lupině s e-shopem a administrací.

## Nasazený web

https://lupin-boutique.hdnenkshxbfje.chatgpt.site

Web je zatím soukromý a obchod běží ve zkušebním režimu. Doména lupin.cz není připojena.

## Funkce

- Produktový katalog, hledání a filtry, detaily produktů.
- Košík, pokladna a objednávky ukládané v databázi.
- Administrace produktů, cen, skladu, fotografií a objednávek, export CSV.
- D1 databáze a R2 úložiště obrázků.
- Oprávnění administrátora ověřovaná na serveru pomocí identity předávané hostingem Sites.

## Spuštění

Node.js 22.13+; `npm ci`, `npm run dev`, `npm run build`. Výchozí migrace je v `drizzle/`.

Tato aplikace vyžaduje server Cloudflare Workers, D1, R2 a autentizační vrstvu Sites. GitHub Pages neumí serverové API, databázi ani tuto autentizaci; pouhé zapnutí Pages nespustí e-shop. Přímé vystavení Workeru bez důvěryhodné autentizační vrstvy není podporované, protože aplikace důvěřuje hlavičkám identity od Sites.

## Před ostrým prodejem

Doplnit skutečné produkty, složení a alergeny, ceny, zásoby, údaje prodejce, bankovní účet a právní texty. Fotografie, obaly a počáteční ceny jsou ilustrační. Platební brána ani automatické e-maily nejsou připojené; připravena je platba převodem. V administraci nejdříve aktivujte vlastníkův účet v soukromém webu.

Přenos obsahuje optimalizované WebP obrázky používané aplikací. Původní velké PNG kopie nejsou pro provoz potřeba.
