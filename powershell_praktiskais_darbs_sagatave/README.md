# PowerShell praktiskais darbs — sākuma komplekts

1. Atver katras mapes `skripts.ps1` un pārliecinies, ka saproti katru rindu.
2. Atver Windows PowerShell vai PowerShell. Pārej uz mapi, piemēram: `Set-Location .\01`
3. Palaid skriptu: `.\skripts.ps1`
4. Saglabā reālo izvadi attiecīgās mapes `izvade.txt`. Piemēram, lai vienlaikus redzētu un saglabātu izvadi:
   `.\skripts.ps1 | Tee-Object -FilePath .\izvade.txt`
5. 04. uzdevumam vispirms: `.\skripts.ps1 -WhatIf | Tee-Object -FilePath .\whatif.txt`, pēc tam: `.\skripts.ps1 | Tee-Object -FilePath .\izvade.txt`.
6. 06. un 11. skripts automātiski izveido CSV tajā pašā mapē.
7. Aizpildi saknes `SKAIDROJUMS.md` ar saviem faktiskajiem rezultātiem.
8. Iesniedz publiska GitHub repozitorija saiti skolotājam E-klasē.

Svarīgi:
- Visu 11 skriptu pirmajai rindai jau jābūt `# Atskaites ID: RVT-4417`.
- `izvade.txt` failos pašlaik ir norādes, nevis tava datora rezultāti. Tās obligāti jāaizstāj ar īsto izvadi.
- 04. uzdevums var mainīt servisu stāvokļus; vispirms izmanto `-WhatIf`. Servisu palaišanai var būt vajadzīgas administratora tiesības.
- 05. uzdevums lasa System notikumu žurnāla kļūdas (Level 2).
- 09. uzdevumā īpašnieku noteikšana var neizdoties atsevišķiem procesiem; saglabā faktisko izvadi.
- Ja skolotājs sagaida tikai mapes 01–10 pēc darba apraksta, papildu 11. mapi tomēr pievieno, jo PDF to prasa atsevišķi.
