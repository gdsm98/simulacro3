#!/bin/bash
awk '{if ($3>=5) aprobados++; else suspensos++} END {print "Aprobados: " aprobados ", Suspensos: " suspensos}' notas.txt




