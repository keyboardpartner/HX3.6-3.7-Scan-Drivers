# HX3.6/3.7 Scan Drivers

![HX3.7 Pic](https://github.com/keyboardpartner/HX3-Scan-Drivers/blob/main/docs/mainboard37_kl.JPG)

### Scan drivers for PicoBlaze Core in HX3.6/3.7 Sound Engine (FPGA)

These are various scan driver sources for HX3.6 and HX3.7 mainboards, to be compiled with PicoBlaze Assembler KCPSM6 from Ken Chapman. All drivers for velocity-sensitive keybeds (Fatar, Pulse, XB2/XB5) now come with an improved dynamic scaling using a dedicated time-to-velocity table. This table is created by the main MCU and automatically uploaded to the FPGA sound engine. Due to new velocity table, these drivers are **no longer compatible** with HX3.5 boards (table RAM does not fit in older FPGA).

Repository contains KCPSM6 assambler and HEX converter (runs on Windows OS) for creation of *scan.dat* files; simply use the batch files *make_xxx.bat* to execute. The batch file will compile the *.psm* source, convert resulting *.hex* file to a *.dat* file suitable for HX3 upload, rename it and re-format the source.

Schematics of scan boards to be found on http://updates.keyboardpartner.de/Files/index.php?dir=Schematics

TODO: Full testing of XB2/XB5 scan driver.

### Version Info
* 26.02.2026 #52 Für FPGA ab #23022024, mit ladbarer Dynamik-Tabelle, siehe *states_dyntable.psm*, XB2/XB5 ebenfalls mit Support für Dynamik-Tabelle (vorher rein linear)
* 27.01.2025 #51 Neues universelles Framework mit *includes*, gemeinsam für alle HX3 Scan Driver
* 10.12.2025 #49 Support für neues FPGA mit separatem (dritten) SAM5504-MIDI-FIFO, MIDI GETBYTE gestrafft
* 11.07.2025 #47 Neue Organisation der Tastenabfrage mit vertauschter Spalte/Reihe (4017/4024-Zähler) bei Fatar, deutlich schneller
* 23.07.2024 #46 Bugfix: MIDI SEND ENABLES waren nicht implementiert, siehe "local_states_out"
* 13.06.2024 #44 Differenzierter Key Click, etwas schwächer, #45 einstellbar on/off
* 29.06.2022 #42 MIDI IN/GenTranspose jetzt für alle, KeyTranspose (Offset) nur MIDI OUT
* 11.01.2022 #41 Extrem verbessertes Timing, 500µs Scan-Loop, einfacheres RAM-Handling
* 31.12.2021 #40 Key Reverse State beim Verlassen der Endstellung, sendet früher, Noise etwas verringert
* 18.10.2021 #39 Octave Shift für Upper und Lower in Manual Scan
* 30.07.2021 #37 Sendet page_init bei Split-Änderungen, SplitMode 5 (AddPedalToLower)
* 18.05.2021 #36 Andere Noise-Berechnung
* 12.01.2021 #33 Bug in ResetDynTimers behoben

C. Meyer 11/2010 - 02/2026