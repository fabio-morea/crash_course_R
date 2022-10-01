# crash_course_R

https://github.com/fabio-morea-areasciencepark/crash_course_R

There are quite a few excellent "crash courses", tutorials and full courses in R programming language. 
This is my own version. A sort of *appetizer* to 
The course is intended for students that are currently using spreadsheets (such as Open Office Calc, Microsoft Excel or Google Sheets) and want to explore the potential of a more powerful programming language.  
It is very short - you can think of it as a sort of appetizer - which allows you to directly experience the potential of a programming language: manage datasets that go beyond the potential of spradesheets, produce graphics and articles in PDF format ...

The course is based on a set of problems of increasing complexity, using a public dataset (italian population). 

Main topics

1) basic concepts in data management (data types, named variables, formulas, print, read and write csv, versioning and comments). These basic tasks can be easily carried out also with a spreadsheet, which is a good point to start if you already have some practice. then we will reproduce the same solution in R. We'll use a cloud version to focus only on the code (no installation and configuration).   
2) flow controls: if/else and a few things spreadheets can't do: for loops, and dataframes. At this stage we will use some R libraries and learn how to install R on your computer
3) plotting graphs in R and saving to image or PDF format. markdown to produce PDF text and graphics.
4) tidyverse syntax "%>%". Where to look for documentation, support and examples.

At the end of the course you should be able to start your own (simple) project, continue learning R and possibly get started also with Python. 

This GitLab repository contains the example and the scripts.

********* work in progress: classes and notes in Italian *******
Programmazione
-	Perché usare un linguaggio di programmazione
o	Ripetere lo stesso procedimento su dati diversi
o	Rapidamente
-	Quando non basta un foglio di calcolo
o	control instructions (if, for, merge…)
o	Grandi quantità di dati (migliaia di righe, decine di colonne)
o	Risultati in formati interoperabili
o	
Esercizio
-	Come si evolve nel tempo la popolazione in età pre-scolare a Trieste? Abbiamo alcune tabelle non aggiornate. Vogliamo essere più precisi (per anno, due categorie “nido” e “infanzia”), aggiornati (fino al 2022), avere risultati riproducibili e aggiornabili (FAIR e DMP). 
-	Definire in maniera più precisa 
o	Input: demo.istat.it
o	Età prescolare = due categorie “nido” 1-2 e infanzia (3-4-5)
o	Nel tempo = 1991-2022 su base annuale
o	Output: tabella, grafico, dataset, codice

