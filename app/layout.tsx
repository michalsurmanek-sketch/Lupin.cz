import type { Metadata } from 'next';
import './globals.css';
export const metadata: Metadata = {title:'Lupin.cz — Malé semínko. Velký potenciál.',description:'Objevte svět lupiny. Rostlinné bílkoviny, poctivé suroviny a inspirace do kuchyně.'};
export default function RootLayout({children}:{children:React.ReactNode}){return <html lang="cs"><body>{children}</body></html>}
