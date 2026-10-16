# SKAIDROJUMS

Aizpildi katru sadaļu pēc skriptu palaišanas savā datorā. Raksti par saviem rezultātiem, nevis tikai par komandu darbību.

## 01 — Sistēmas apraksts
Ieraksti datora nosaukumu, Windows versiju/būvējumu, PowerShell versiju, datumu un procesu skaitu, ko parādīja tava izvade.

## 02 — Desmit procesi pēc atmiņas
Norādi, kuri procesi sarakstā patērēja visvairāk atmiņas. Saraksts ir augošā secībā, tāpēc lielākais no atlasītajiem procesiem ir pēdējais.

## 03 — Servisu skaitīšana
Salīdzini darbojošos un apturēto servisu summu ar visu servisu skaitu. Ja nesakrīt, iespējams, ir servisi citā statusā, piemēram, StartPending vai StopPending.

## 04 — Automātisko servisu palaišana
Pieraksti, cik apturētu automātisko servisu atrada skripts. Pievieno, ko parādīja -WhatIf un kas notika palaižot skriptu bez -WhatIf. Servisu palaišanai var būt vajadzīgas administratora tiesības.

## 05 — Kļūdas sistēmas žurnālā
Ieraksti kļūdu ierakstu skaitu pēdējās 48 stundās un visbiežāk sastopamo avotu. Paskaidro, ko šis skaits var liecināt par tava datora darbību; pats par sevi tas ne vienmēr nozīmē nopietnu problēmu.

## 06 — Draiveri, kas nav Microsoft
Ieraksti CSV failā esošo rindu skaitu. Izvēlies vienu draiveri no CSV, sameklē, kurai ierīcei tas pieder, un pieraksti ierīci un izmantoto informācijas avotu.

## 07 — Diska vieta un brīdinājums
Pieraksti katra diska brīvo vietu un to, vai tika parādīts brīdinājums. Skriptā sākotnējā brīdinājuma robeža ir 10 GB; vari to mainīt, ja uzdevumā izvēlies citu robežu.

## 08 — Divi ceļi, viens rezultāts
Salīdzini abu metožu izpildes laikus milisekundēs. Pieraksti, kura metode tavā palaišanas reizē bija ātrāka un vai atšķirība praktiski ir nozīmīga. Rezultāti dažādās palaišanas reizēs var atšķirties.

## 09 — Kurš lietotājs palaida procesu
Pieraksti, ko sistēma atgrieza par procesu īpašniekiem un kurus procesus neizdevās noteikt. Saglabā arī kļūdas vai atteikumus; skripts nav jāpalaid ar administratora tiesībām.

## 10 — Kopsavilkums
Salīdzini procesu, servisu, pēdējo 48 stundu kļūdu un disku brīvās vietas skaitļus ar 01., 03., 05. un 07. uzdevuma izvadi. Paskaidro atšķirības, piemēram, procesu/servisu izmaiņas vai laika gaitā mainījušos brīvo vietu.

## 11 — Tīkla adapteri
Nosauc aktīvos un neaktīvos adapterus un, ja iespējams, paskaidro to statusu. Piemēram, virtuālie adapteri var būt neaktīvi, ja attiecīgais virtuālais tīkls netiek izmantots. Balsti skaidrojumu savā izvadē.

## Administratora tiesības
Ja kādam skriptam vajadzēja administratora tiesības vai tika saņemts piekļuves atteikums, pieraksti to šeit un paskaidro, kurā darbībā tas notika.
