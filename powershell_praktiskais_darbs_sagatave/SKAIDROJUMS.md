# SKAIDROJUMS.md

### 1. Sistēmas apraksts
pirmajā uzdevumā skripts nolasīja datora datus nosaukums ir TINXY os ir Microsoft Windows 11 Home ar build numuru 26300 powershell versija 5.1.26100.9711 laiks kad palaidu bija 2026-10-16 21:22:10 un tajā pašā sekundē kopā gāja 246 procesi

### 2. Desmit procesi sakārtoti pēc atmiņas
otrajā uzdevumā atlases rezultātā izvilku desmit lielākos ramrijējus sakārtotus augošā secībā kur vismazākais no tiem bija chrome.exe ar 253.3 megabaitiem un id 32648 bet visvairāk atmiņas apēda Discord.exe kurš aizņēma jau 790.1 megabaitus uz id 14604

### 3. Servisu skaitīšana
trešajā uzdevumā ar parasto foreach ciklu un if nosacījumu izskaitīju visus servisus dabūjot 114 aktīvus un 182 apturētus kuri saliekot kopā dod 296 kas precīzi sakrīt ar pilno sistēmas servisu skaitu

### 4. Automātisko servisu palaišana
ceturtajā uzdevumā atradās 9 servisi kam bija uzlikts automatic bet reāli stāvēja stopped stāvoklī kā piemēram appxsvc un asus un skripts visu smuki notestēja caur whatif parametru un saglabāja failos

### 5. Kļūdas sistēmas žurnālā
piektajā uzdevumā paskatījos kas notiek žurnālā pēdējās 48 stundās kur atradās 56 kļūdas un visbiežāk parādījās Microsoft-Windows-DistributedCOM ar 27 reizēm kas nozīmē ka kaut kādi fona sūdi tur met errorus

### 6. Draiveri, kas nav Microsoft
sestajā uzdevumā izfiltrēju visus draiverus kas nav no microsoft un sametu csv failā kurā kopā sanāca 16 rindas tur ir visādi nvidia un asus pričendāļi no manas sistēmas

### 7. Diska vieta un brīdinājums
septītajā uzdevumā skripts izvilka info par C disku kuram kopā ir 1861.98 gb un brīva vieta palikusi 100.82 gb kas ir vairāk par manu uzlikto 10 gb limitu tāpēc nekādu brīdinājumu neizmeta

### 8. Divi ceļi, viens rezultāts
astotajā uzdevumā testēju cik ātri atrod spooler servisu un izrādījās ka get-service to izdara 9.8 milisekundēs bet get-ciminstance velkas gandrīz 235 milisekundes tāpēc parastā komanda ir daudz ašāka

### 9. Kurš lietotājs palaida procesu
devītajā uzdevumā palaidu bez admina tiesībām un redzēju ka parastajiem procesiem rāda tinxy vai system bet pašiem pirmajiem kernel procesiem izmeta returnvalue 2 jo man vienkārši nepietiek tiesību tur skatīties

### 10. Kopsavilkums
desmitajā uzdevumā palaidu visu no jauna un procesi bija pamainījušies uz 250 jo kompis pa to laiku pats piemeta klāt jaunas fona programmas bet servisi un kļūdas palika tieši tāpat kā agrāk

### 11. Papildu tīkla adapteri
vienpadsmitajā uzdevumā skripts nolasīja tīkla adapterus parādot ka bezvadu tīkls strādā un gājis uz 866.7 mbps bet ethernet bija atslēgts un kopā atradās 2 adapteri kuri tika saglabāti csv failā
