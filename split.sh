#!/bin/bash
#dividir video
FILE=$1
if [ -f "$FILE" ]; then
    #calcular duracao do video
    duracao=$(ffprobe -i $FILE -show_entries format=duration -v quiet -of csv="p=0")

    echo "O video original tem duracao de $duracao"

    #calcular duracao de cada intervalo do video, 3 intervalos
    n_intervalos=3

    tempo_intervalo=$(bc <<< "scale=2;$duracao/$n_intervalos")
    echo "Cada parte o video tem $tempo_intervalo"

    #intervalo1
    intervalo1=0
    echo "Primeira parte comeca a $intervalo1"

    #intervalo2
    intervalo2=$tempo_intervalo
    echo "Segunda parte comeca a $intervalo2"

    #intervalo3
    intervalo3=$(bc <<< "scale=2;$tempo_intervalo+$tempo_intervalo")
    echo "Terceira parte comeca a $intervalo3"

    #dividir o video em partes
    ffmpeg -ss $intervalo1 -i $FILE -c copy -t $tempo_intervalo  output1.mp4
    ffmpeg -ss $intervalo2 -i $FILE -c copy -t $tempo_intervalo  output2.mp4
    ffmpeg -ss $intervalo3 -i $FILE -c copy -t $tempo_intervalo  output3.mp4
else 
    echo "$FILE does not exist."
fi
