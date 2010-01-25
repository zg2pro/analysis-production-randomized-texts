#!/bin/bash

rm -f res.txt
for fichier in *.txt
do
	(tr [A-Z] [a-z] < $fichier  | tr -s ' '  | tr ' ' '\n' | grep -v 'é' | grep -v 'è' | grep -v 'à' | grep -v 'â' | grep -v 'ä' | grep -v 'ê' | grep -v 'ë' | grep -v 'î' | grep -v 'ï' | grep -v 'ç' | grep -v 'û' | grep -v 'ü' | grep -v 'ö' | grep -v 'ô'  | tr '\n' ' ' | tr -d ',?.;:/!') >> res.txt
	
done


