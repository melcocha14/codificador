#!/bin/bash
jeshile='\e[40;38;5;82m'
jeshile2='\e[1;40;34;15;82m'
<<'### BLOCK COMMENT'
# Quitar audios y agregar subtitulos
for FILE in * ; do
ffmpeg -i $FILE -i /home/felo/DISCOTE/ppv/247_960.ass -c:v copy -c:a copy -c:s copy -map 0:v:0 -map 0:a:0 -map 0:a:1 -map 1:0 mode/$FILE ; done




### BLOCK COMMENT



# ----------------------------------
# Step #2: User defined function
# ----------------------------------
pause(){
  read -p "Presiona la tecla [Enter] para continuar..." fackEnterKey
}

 
# do something in two()
one(){
    echo "${jeshile}Escribe la ruta de trabajo \e[0m"
    read ruta_trabajo
    echo "${jeshile}Escribe la ruta de trabajo del logo \e[0m"
    read ruta_logo	
    echo "${jeshile}Escribe el formato en el que se va a codificar ejemplo: mp4 mkv avi \e[0m"
	read extension_video
    echo "${jeshile}Escribe el nombre del logo con extension ejemplo: logo.png \e[0m"
    read nombre_logo	
	echo ""	
    echo "${jeshile2}Tu configuracion es esta \e[0m"
	echo "${jeshile}Ruta de trabajo: \e[0m"$ruta_trabajo
	echo "${jeshile}Ruta de del logotipo: \e[0m"$ruta_logo
	echo "${jeshile}Tu codificacion va a ser un archivo: \e[0m"$extension_video
	echo "${jeshile}El nombre del logo es: \e[0m"$nombre_logo
	echo "${jeshile}Configuracion Guardada \e[0m"
	echo ""
    pause
}
 
two(){
	echo "${jeshile} +-----------------------------------+ \e[0m"
	echo "${jeshile} ¦Eliminando espacios en los archivos¦ \e[0m"
	echo "${jeshile} +-----------------------------------+ \e[0m"
	sleep 3
	cd $ruta_trabajo
	ls | while read -r FILE; do
	mv -v "$FILE" `echo $FILE | tr ' ' '_'`
	done
	
	echo "${jeshile} +---------------------------------------+ \e[0m"
	echo "${jeshile} ¦Convirtiendo de mayusculas a minusculas¦ \e[0m"
	echo "${jeshile} +---------------------------------------+ \e[0m"
	sleep 3
	for FILE in * ; do mv $FILE `echo $FILE | tr '[A-Z]' '[a-z]'` ; done
	
	echo "${jeshile} +-------------------------------------+ \e[0m"
	echo "${jeshile} ¦Eliminado Extensiones de los archivos¦ \e[0m"
	echo "${jeshile} +-------------------------------------+ \e[0m"
	sleep 3
    for FILE in *.mp4 ; do NEWFILE=`echo $FILE | sed 's/.mp4$//'` ; mv $FILE $NEWFILE ; done
	for FILE in *.mkv ; do NEWFILE=`echo $FILE | sed 's/.mkv$//'` ; mv $FILE $NEWFILE ; done
	for FILE in *.avi ; do NEWFILE=`echo $FILE | sed 's/.avi$//'` ; mv $FILE $NEWFILE ; done
	
	echo "${jeshile} +--------------------------------+ \e[0m"
	echo "${jeshile} ¦Eliminando caracteres especiales¦ \e[0m"
	echo "${jeshile} +--------------------------------+ \e[0m"
	sleep 3

	find $1 -depth -name '*ñ*'| while read fichero
	do
	ruta="${fichero%/*}"
	nombre="${fichero##*/}"
	nuevonombre=`echo "$nombre" | sed 's/ñ/n/g'`
	mv "${ruta}/""$nombre" "${ruta}/""$nuevonombre"
	done
		
	find $1 -depth -name '*Ñ*' | while read fichero
	do
	ruta="${fichero%/*}"
	nombre="${fichero##*/}"
	nuevonombre=`echo "$nombre" | sed 's/Ñ/N/g'`
	mv "${ruta}/""$nombre" "${ruta}/""$nuevonombre"
	done
		
	find $1 -depth -name '*á*' | while read fichero
	do
	ruta="${fichero%/*}"
	nombre="${fichero##*/}"
	nuevonombre=`echo "$nombre" | sed 's/á/a/g'`
	mv "${ruta}/""$nombre" "${ruta}/""$nuevonombre"
	done
	
	find $1 -depth -name '*é*' | while read fichero 
	do
	ruta="${fichero%/*}"
	nombre="${fichero##*/}"
	nuevonombre=`echo "$nombre" | sed 's/é/e/g'`
	mv "${ruta}/""$nombre" "${ruta}/""$nuevonombre"
	done
	
	find $1 -depth -name '*í*' | while read fichero
	do
	ruta="${fichero%/*}"
	nombre="${fichero##*/}"
	nuevonombre=`echo "$nombre"
	sed 's/í/i/g'`
	mv "${ruta}/""$nombre" "${ruta}/""$nuevonombre"
	done
		
	find $1 -depth -name '*ó*' | while read fichero
	do
	ruta="${fichero%/*}"
	nombre="${fichero##*/}"
	nuevonombre=`echo "$nombre" | sed 's/ó/o/g'`
	mv "${ruta}/""$nombre" "${ruta}/""$nuevonombre"
	done
		
	find $1 -depth -name '*ú*' | while read fichero
	do
	ruta="${fichero%/*}"
	nombre="${fichero##*/}"
	nuevonombre=`echo "$nombre" | sed 's/ú/u/g'`
	mv "${ruta}/""$nombre" "${ruta}/""$nuevonombre"
	done
	
	find $1 -depth -name '*Á*' | while read fichero
	do
	ruta="${fichero%/*}"
	nombre="${fichero##*/}"
	nuevonombre=`echo "$nombre" | sed 's/Á/A/g'`
	mv "${ruta}/""$nombre" "${ruta}/""$nuevonombre"
	done  
	
	find $1 -depth -name '*É*' | while read fichero
	do
	ruta="${fichero%/*}"
	nombre="${fichero##*/}"
	nuevonombre=`echo "$nombre"
	sed 's/É/E/g'`
	mv "${ruta}/""$nombre" "${ruta}/""$nuevonombre"
	done
	
	find $1 -depth -name '*Í*' | while read fichero
	do
	ruta="${fichero%/*}"
	nombre="${fichero##*/}"
	nuevonombre=`echo "$nombre" | sed 's/Í/I/g'`
	mv "${ruta}/""$nombre" "${ruta}/""$nuevonombre"
	done
		
	find $1 -depth -name '*Ó*' | while read fichero 
	do
	ruta="${fichero%/*}"
	nombre="${fichero##*/}"
	nuevonombre=`echo "$nombre" | sed 's/Ó/O/g'`
	mv "${ruta}/""$nombre" "${ruta}/""$nuevonombre"
	done
	
	find $1 -depth -name '*Ú*' | while read fichero
	do
	ruta="${fichero%/*}"
	nombre="${fichero##*/}"
	nuevonombre=`echo "$nombre" | sed 's/Ú/U/g'`
	mv "${ruta}/""$nombre" "${ruta}/""$nuevonombre"
	done

	
	echo "${jeshile} +------------------------------------------+ \e[0m"
	echo "${jeshile} ¦                                          ¦ \e[0m"
	echo "${jeshile} ¦Preparando la codificacion de los archivos¦ \e[0m"
	echo "${jeshile} ¦Codificando en h264 a 720p 30fps con logo ¦ \e[0m"
	echo "${jeshile} ¦                                          ¦ \e[0m"
	echo "${jeshile} +------------------------------------------+ \e[0m"
	sleep 7
	for FILE in * ; do `ffmpeg -i $FILE -i $ruta_logo/$nombre_logo -filter_complex "overlay=x=main_w*0.03:y=main_h*0.03" -s 1280x720 -aspect 16:9 -c:v libx264 -preset veryfast -b:v 1536k -minrate 1024k -maxrate 1536k -bufsize 2048k -g 23.97 -bf 2 -r 30  -c:a aac -strict -2 -b:a 128k -ar 44100 -profile high -level 5.2 $FILE.$extension_video` ; done
	
		
	echo "${jeshile} +------------------------------------------+ \e[0m"
	echo "${jeshile} ¦     Eliminando archivos no usados        ¦ \e[0m"
	echo "${jeshile} ¦                                          ¦ \e[0m"
	echo "${jeshile} +------------------------------------------+ \e[0m"
	sleep 3
	find . -type f ! -name *.$extension_video -delete
}

tre(){
	echo "${jeshile} +-----------------------------------+ \e[0m"
	echo "${jeshile} ¦Eliminando espacios en los archivos¦ \e[0m"
	echo "${jeshile} +-----------------------------------+ \e[0m"
	sleep 3
	cd $ruta_trabajo
	ls | while read -r FILE; do
	mv -v "$FILE" `echo $FILE | tr ' ' '_'`
	done
	
	echo "${jeshile} +---------------------------------------+ \e[0m"
	echo "${jeshile} ¦Convirtiendo de mayusculas a minusculas¦ \e[0m"
	echo "${jeshile} +---------------------------------------+ \e[0m"
	sleep 3
	for FILE in * ; do mv $FILE `echo $FILE | tr '[A-Z]' '[a-z]'` ; done
	
	echo "${jeshile} +-------------------------------------+ \e[0m"
	echo "${jeshile} ¦Eliminado Extensiones de los archivos¦ \e[0m"
	echo "${jeshile} +-------------------------------------+ \e[0m"
	sleep 3
    for FILE in *.mp4 ; do NEWFILE=`echo $FILE | sed 's/.mp4$//'` ; mv $FILE $NEWFILE ; done
	for FILE in *.mkv ; do NEWFILE=`echo $FILE | sed 's/.mkv$//'` ; mv $FILE $NEWFILE ; done
	for FILE in *.avi ; do NEWFILE=`echo $FILE | sed 's/.avi$//'` ; mv $FILE $NEWFILE ; done
	
	echo "${jeshile} +--------------------------------+ \e[0m"
	echo "${jeshile} ¦Eliminando caracteres especiales¦ \e[0m"
	echo "${jeshile} +--------------------------------+ \e[0m"
	sleep 3

	find $1 -depth -name '*ñ*'| while read fichero
	do
	ruta="${fichero%/*}"
	nombre="${fichero##*/}"
	nuevonombre=`echo "$nombre" | sed 's/ñ/n/g'`
	mv "${ruta}/""$nombre" "${ruta}/""$nuevonombre"
	done
		
	find $1 -depth -name '*Ñ*' | while read fichero
	do
	ruta="${fichero%/*}"
	nombre="${fichero##*/}"
	nuevonombre=`echo "$nombre" | sed 's/Ñ/N/g'`
	mv "${ruta}/""$nombre" "${ruta}/""$nuevonombre"
	done
		
	find $1 -depth -name '*á*' | while read fichero
	do
	ruta="${fichero%/*}"
	nombre="${fichero##*/}"
	nuevonombre=`echo "$nombre" | sed 's/á/a/g'`
	mv "${ruta}/""$nombre" "${ruta}/""$nuevonombre"
	done
	
	find $1 -depth -name '*é*' | while read fichero 
	do
	ruta="${fichero%/*}"
	nombre="${fichero##*/}"
	nuevonombre=`echo "$nombre" | sed 's/é/e/g'`
	mv "${ruta}/""$nombre" "${ruta}/""$nuevonombre"
	done
	
	find $1 -depth -name '*í*' | while read fichero
	do
	ruta="${fichero%/*}"
	nombre="${fichero##*/}"
	nuevonombre=`echo "$nombre"
	sed 's/í/i/g'`
	mv "${ruta}/""$nombre" "${ruta}/""$nuevonombre"
	done
		
	find $1 -depth -name '*ó*' | while read fichero
	do
	ruta="${fichero%/*}"
	nombre="${fichero##*/}"
	nuevonombre=`echo "$nombre" | sed 's/ó/o/g'`
	mv "${ruta}/""$nombre" "${ruta}/""$nuevonombre"
	done
		
	find $1 -depth -name '*ú*' | while read fichero
	do
	ruta="${fichero%/*}"
	nombre="${fichero##*/}"
	nuevonombre=`echo "$nombre" | sed 's/ú/u/g'`
	mv "${ruta}/""$nombre" "${ruta}/""$nuevonombre"
	done
	
	find $1 -depth -name '*Á*' | while read fichero
	do
	ruta="${fichero%/*}"
	nombre="${fichero##*/}"
	nuevonombre=`echo "$nombre" | sed 's/Á/A/g'`
	mv "${ruta}/""$nombre" "${ruta}/""$nuevonombre"
	done  
	
	find $1 -depth -name '*É*' | while read fichero
	do
	ruta="${fichero%/*}"
	nombre="${fichero##*/}"
	nuevonombre=`echo "$nombre"
	sed 's/É/E/g'`
	mv "${ruta}/""$nombre" "${ruta}/""$nuevonombre"
	done
	
	find $1 -depth -name '*Í*' | while read fichero
	do
	ruta="${fichero%/*}"
	nombre="${fichero##*/}"
	nuevonombre=`echo "$nombre" | sed 's/Í/I/g'`
	mv "${ruta}/""$nombre" "${ruta}/""$nuevonombre"
	done
		
	find $1 -depth -name '*Ó*' | while read fichero 
	do
	ruta="${fichero%/*}"
	nombre="${fichero##*/}"
	nuevonombre=`echo "$nombre" | sed 's/Ó/O/g'`
	mv "${ruta}/""$nombre" "${ruta}/""$nuevonombre"
	done
	
	find $1 -depth -name '*Ú*' | while read fichero
	do
	ruta="${fichero%/*}"
	nombre="${fichero##*/}"
	nuevonombre=`echo "$nombre" | sed 's/Ú/U/g'`
	mv "${ruta}/""$nombre" "${ruta}/""$nuevonombre"
	done

	
	echo "${jeshile} +------------------------------------------+ \e[0m"
	echo "${jeshile} ¦                                          ¦ \e[0m"
	echo "${jeshile} ¦Preparando la codificacion de los archivos¦ \e[0m"
	echo "${jeshile} ¦Codificando en h264 a 720p 30fps sin logo ¦ \e[0m"
	echo "${jeshile} ¦                                          ¦ \e[0m"
	echo "${jeshile} +------------------------------------------+ \e[0m"
	sleep 7
	for FILE in * ; do `ffmpeg -i $FILE -s 1280x720 -aspect 16:9 -c:v libx264 -preset veryfast -b:v 1536k -minrate 1024k -maxrate 1536k -bufsize 2048k -g 23.97 -bf 2 -r 30  -c:a aac -strict -2 -b:a 128k -ar 44100 -profile high -level 5.2 $FILE.$extension_video` ; done
	
		
	echo "${jeshile} +------------------------------------------+ \e[0m"
	echo "${jeshile} ¦     Eliminando archivos no usados        ¦ \e[0m"
	echo "${jeshile} ¦                                          ¦ \e[0m"
	echo "${jeshile} +------------------------------------------+ \e[0m"
	sleep 3
	find . -type f ! -name *.$extension_video -delete
}

four(){
	echo "${jeshile} +-----------------------------------+ \e[0m"
	echo "${jeshile} ¦Eliminando espacios en los archivos¦ \e[0m"
	echo "${jeshile} +-----------------------------------+ \e[0m"
	sleep 3
	cd $ruta_trabajo
	ls | while read -r FILE; do
	mv -v "$FILE" `echo $FILE | tr ' ' '_'`
	done
	
	echo "${jeshile} +---------------------------------------+ \e[0m"
	echo "${jeshile} ¦Convirtiendo de mayusculas a minusculas¦ \e[0m"
	echo "${jeshile} +---------------------------------------+ \e[0m"
	sleep 3
	for FILE in * ; do mv $FILE `echo $FILE | tr '[A-Z]' '[a-z]'` ; done
	
	echo "${jeshile} +-------------------------------------+ \e[0m"
	echo "${jeshile} ¦Eliminado Extensiones de los archivos¦ \e[0m"
	echo "${jeshile} +-------------------------------------+ \e[0m"
	sleep 3
	for FILE in *.mp4 ; do NEWFILE=`echo $FILE | sed 's/.mp4$//'` ; mv $FILE $NEWFILE ; done
	for FILE in *.mkv ; do NEWFILE=`echo $FILE | sed 's/.mkv$//'` ; mv $FILE $NEWFILE ; done
	for FILE in *.avi ; do NEWFILE=`echo $FILE | sed 's/.avi$//'` ; mv $FILE $NEWFILE ; done
	
	echo "${jeshile} +--------------------------------+ \e[0m"
	echo "${jeshile} ¦Eliminando caracteres especiales¦ \e[0m"
	echo "${jeshile} +--------------------------------+ \e[0m"
	sleep 3

	find $1 -depth -name '*ñ*'| while read fichero
	do
	ruta="${fichero%/*}"
	nombre="${fichero##*/}"
	nuevonombre=`echo "$nombre" | sed 's/ñ/n/g'`
	mv "${ruta}/""$nombre" "${ruta}/""$nuevonombre"
	done
		
	find $1 -depth -name '*Ñ*' | while read fichero
	do
	ruta="${fichero%/*}"
	nombre="${fichero##*/}"
	nuevonombre=`echo "$nombre" | sed 's/Ñ/N/g'`
	mv "${ruta}/""$nombre" "${ruta}/""$nuevonombre"
	done
		
	find $1 -depth -name '*á*' | while read fichero
	do
	ruta="${fichero%/*}"
	nombre="${fichero##*/}"
	nuevonombre=`echo "$nombre" | sed 's/á/a/g'`
	mv "${ruta}/""$nombre" "${ruta}/""$nuevonombre"
	done
	
	find $1 -depth -name '*é*' | while read fichero 
	do
	ruta="${fichero%/*}"
	nombre="${fichero##*/}"
	nuevonombre=`echo "$nombre" | sed 's/é/e/g'`
	mv "${ruta}/""$nombre" "${ruta}/""$nuevonombre"
	done
	
	find $1 -depth -name '*í*' | while read fichero
	do
	ruta="${fichero%/*}"
	nombre="${fichero##*/}"
	nuevonombre=`echo "$nombre"
	sed 's/í/i/g'`
	mv "${ruta}/""$nombre" "${ruta}/""$nuevonombre"
	done
		
	find $1 -depth -name '*ó*' | while read fichero
	do
	ruta="${fichero%/*}"
	nombre="${fichero##*/}"
	nuevonombre=`echo "$nombre" | sed 's/ó/o/g'`
	mv "${ruta}/""$nombre" "${ruta}/""$nuevonombre"
	done
		
	find $1 -depth -name '*ú*' | while read fichero
	do
	ruta="${fichero%/*}"
	nombre="${fichero##*/}"
	nuevonombre=`echo "$nombre" | sed 's/ú/u/g'`
	mv "${ruta}/""$nombre" "${ruta}/""$nuevonombre"
	done
	
	find $1 -depth -name '*Á*' | while read fichero
	do
	ruta="${fichero%/*}"
	nombre="${fichero##*/}"
	nuevonombre=`echo "$nombre" | sed 's/Á/A/g'`
	mv "${ruta}/""$nombre" "${ruta}/""$nuevonombre"
	done  
	
	find $1 -depth -name '*É*' | while read fichero
	do
	ruta="${fichero%/*}"
	nombre="${fichero##*/}"
	nuevonombre=`echo "$nombre"
	sed 's/É/E/g'`
	mv "${ruta}/""$nombre" "${ruta}/""$nuevonombre"
	done
	
	find $1 -depth -name '*Í*' | while read fichero
	do
	ruta="${fichero%/*}"
	nombre="${fichero##*/}"
	nuevonombre=`echo "$nombre" | sed 's/Í/I/g'`
	mv "${ruta}/""$nombre" "${ruta}/""$nuevonombre"
	done
		
	find $1 -depth -name '*Ó*' | while read fichero 
	do
	ruta="${fichero%/*}"
	nombre="${fichero##*/}"
	nuevonombre=`echo "$nombre" | sed 's/Ó/O/g'`
	mv "${ruta}/""$nombre" "${ruta}/""$nuevonombre"
	done
	
	find $1 -depth -name '*Ú*' | while read fichero
	do
	ruta="${fichero%/*}"
	nombre="${fichero##*/}"
	nuevonombre=`echo "$nombre" | sed 's/Ú/U/g'`
	mv "${ruta}/""$nombre" "${ruta}/""$nuevonombre"
	done

	echo "${jeshile} +------------------------------------------+ \e[0m"
	echo "${jeshile} ¦           Opciones para h264             ¦ \e[0m"
	echo "${jeshile} ¦                                          ¦ \e[0m"
	echo "${jeshile} ¦    Resolucion, Aspecto, Preset, FPS      ¦ \e[0m"
	echo "${jeshile} ¦    Audio, Bitrate, Profile, Logotipo     ¦ \e[0m"
	echo "${jeshile} ¦                                          ¦ \e[0m"
	echo "${jeshile} +------------------------------------------+ \e[0m"
	echo ""
    echo "${jeshile}Escribe la resolucion del video:  \e[0m"
	echo "${jeshile}Ejemplos mas comunes: ${jeshile2} 1920x1080 1280x720 960x540   \e[0m"
	echo "${jeshile}                      ${jeshile2} 854x720 640x360 426x240   \e[0m"
    read resolucion
    echo "${jeshile}Escribe el aspecto del video:  \e[0m"
	echo "${jeshile}Ejemplos: ${jeshile2} 4:3 ${jeshile}para pantalla cuadrada   \e[0m"
	echo "${jeshile2}          16:9 ${jeshile}para pantalla rectangular  \e[0m"
    read aspecto
    echo "${jeshile}Escribe el preset del video:  \e[0m"
	echo "${jeshile}Preset de video son:${jeshile2} slower, slow, medium, fast, faster, veryfast   \e[0m"
	echo "${jeshile}                    ${jeshile2} superfast, ultrafast   \e[0m"
	echo "${jeshile}Ejemplos mas comunes son: ${jeshile2} medium, fast, faster, veryfast   \e[0m"
	echo "${jeshile}     medium  : mejor calidad de video pero mas tardado en codificar   \e[0m"
	echo "${jeshile}     fast    : menor calidad que el anterior pero mas rapido en codificar   \e[0m"
	echo "${jeshile}     faster  : menor calidad que el anterior pero mas rapido en codificar   \e[0m"
	echo "${jeshile2}     veryfast${jeshile}: este es un preset intermedio es el recomendado   \e[0m"
    read preset
    echo "${jeshile}Escribe los frames del video del video:  \e[0m"
	echo "${jeshile}Ejemplos mas comunes son: ${jeshile2} 23.97, 24, 29, 30, 60   \e[0m"
	read fps
	echo "${jeshile}Escribe el codec de audio del video:  \e[0m"
	echo "${jeshile}Los codec de audio son:${jeshile2} Opus, Vorbis, MP2, MP3, LC-AAC, HE-AAC, WMAv1, WMAv2, AC3, eAC3   \e[0m"
	echo "${jeshile}             Los audios no influye mucho en el video amenos de que quieras un audio especifico \e[0m"
	echo "${jeshile}Ejemplos mas comunes son: ${jeshile2} mp3, ac3, aac, vorbies   \e[0m"
	echo "${jeshile}     mp3    : mejor compatibilidad con cualquier reproductor   \e[0m"
	echo "${jeshile}     ac3    : buena calidad usado en el formato de los DVD's   \e[0m"
	echo "${jeshile}     vorbies: optimizado para la reproduccion en navegadores web \e[0m"
	echo "${jeshile2}     aac    ${jeshile}: recomendable por su balance entre compatibilidad y calidad \e[0m"
    read audio
	echo "${jeshile}Escribe la calidad del audio del video:  \e[0m"
	echo "${jeshile}La calidad del audio es el nivel de compresion :${jeshile2} 96, 112, 128, 160, 192, 224, 256, 320   \e[0m"
	echo "${jeshile}             Entre mas alta la calidad mejor sonido pero mayor tama;o de del audio \e[0m"
	echo "${jeshile}Ejemplos mas comunes son: ${jeshile2} 128, 160, 192, 224   \e[0m"
	echo "${jeshile}     128  : buen nivel de compresion   \e[0m"
	echo "${jeshile}     160  : mejor calidad que el anterior   \e[0m"
	echo "${jeshile}     192  : mejor calidad que el anterior \e[0m"
	echo "${jeshile2}     128  ${jeshile}: recomendable por su balance entre compatibilidad y calidad \e[0m"
    read caliaudio+"k"
	echo "${jeshile}Escribe el bitrate del video:  \e[0m"
	echo "${jeshile}Los codec de audio son:${jeshile2} 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,...etc   \e[0m"
	echo "${jeshile}         Entre mas grande sea el numero mayor nivel de compresion del video \e[0m"
	echo "${jeshile}Ejemplos mas comunes: ${jeshile2} 18, 20, 22, 24, 26   \e[0m"
	echo "${jeshile2}         22 ${jeshile}: seria un bitrate recomendado  \e[0m"
    read bitrate


<<'### BLOCK COMMENT'
	echo "${jeshile}Escribe un profile para el video:  \e[0m"
	echo "${jeshile}profile del video son:${jeshile2} high, main, baseline \e[0m"
	echo "${jeshile} Opcion ${jeshile2}1 high     ${jeshile}: mejor calidad de video pero mas tardado en codificar   \e[0m"
	echo "${jeshile} Opcion ${jeshile2}2 main     ${jeshile}: menor calidad que el anterior pero mas rapido en codificar   \e[0m"
	echo "${jeshile} Opcion ${jeshile2}3 baseline ${jeshile}: menor calidad que el anterior pero mas rapido en codificar   \e[0m"
	echo "${jeshile} Opcion recomendable ${jeshile2}1 ${jeshile}high : profile recomendado    \e[0m"
	read opcion
	case $opcion in
			1)
			echo "Escojiste la opcion 1 high "
			opcion="high -level 5.2"
			;;
			2)
			echo "Escojiste la opcion 2 main"
			opcion="main -pix_fmt yuv420p"
			;;
			3)
			echo "Escojiste la opcion 3 baseline"
			opcion="baseline"
			;;
			*)
			echo "Continuamos"
			;;
			esac
		

### BLOCK COMMENT

	echo "${jeshile}Quieres codificar el video con logotipo? :  \e[0m"
	echo ""
	echo "${jeshile}Escriber la palabra ${jeshile2}si ${jeshile}o la palabra ${jeshile2}no :  \e[0m"
	read logo
	case $logo in
     si)
	echo "${jeshile}Escribe donde quieres poner tu logo :  \e[0m"
	echo "${jeshile}Opcion ${jeshile2}1${jeshile}.- logo en el centro \e[0m"
	echo "${jeshile}Opcion ${jeshile2}2${jeshile}.- logo en la esquina izquieda arriba \e[0m"
	echo "${jeshile}Opcion ${jeshile2}3${jeshile}.- logo en la esquina derecha arriba \e[0m"
	echo "${jeshile}Opcion ${jeshile2}4${jeshile}.- logo en la esquina izquieda abajo \e[0m"
	echo "${jeshile}Opcion ${jeshile2}5${jeshile}.- logo en la esquina derecha abajo \e[0m"
	read select
			case $select in
			1)
			echo "Escojiste poner el logo en el centro de la pantalla"
			centro=\(main_w-overlay_w\)\/2\:y\=\(main_h-overlay_h\)\/2
				echo "${jeshile} +------------------------------------------+ \e[0m"
				echo "${jeshile} ¦                                          ¦ \e[0m"
				echo "${jeshile} ¦Preparando la codificacion de los archivos¦ \e[0m"
				echo "${jeshile} ¦          Codificando en h264             ¦ \e[0m"
				echo "${jeshile} ¦                                          ¦ \e[0m"
				echo "${jeshile} +------------------------------------------+ \e[0m"
				sleep 5
				cd $ruta_trabajo
				for FILE in * ; do `ffmpeg -i $FILE -i $ruta_logo/$nombre_logo -filter_complex "overlay=x=$centro" -s $resolucion -aspect $aspecto -c:v libx264 -preset $preset -crf $bitrate -bf 2 -r $fps -c:a $audio -strict -2 -b:a $caliaudio -profile:v high -level 5.2 $FILE.$extension_video` ; done
				#echo " $ruta_logo/$nombre_logo -filter_complex $centro -s $resolucion -aspect $aspecto -c:v libx264 -preset $preset -crf $bitrate -bf 2 -r $fps -c:a $audio -strict -2 -b:a $caliaudio -profile $opcion $FILE.$extension_video"
		
			;;
			2)
			echo "Escojiste poner el logo en la esquina izquierda de arriba"
			izqarri = `"overlay=x=main_w*0.03:y=main_h*0.03"`
			;;
			3)
			echo "Escojiste poner el logo en la esquina derecha de arriba"
			derearri = `"overlay=x=main_w-overlay_w-(main_w*0.03):y=main_h*0.03"`
			;;
			4)
			echo "Escojiste poner el logo en la esquina izquierda de abajo"
			izqaba = `"overlay=x=main_w*0.03:y=main_h-overlay_h-(main_h*0.03)"`
			;;
			5)
			echo "Escojiste poner el logo en la esquina derecha de abajo"
			dereaba = `"overlay=x=main_w-overlay_w-(main_w*0.03):y=main_h-overlay_h-(main_h*0.03)"`
			;;
			*)
			echo "Continuamos"
			;;
			esac
	;;
	*)
	echo "Continuamos"
	;;
	esac
	echo "${jeshile} +------------------------------------------+ \e[0m"
	echo "${jeshile} ¦     Eliminando archivos no usados        ¦ \e[0m"
	echo "${jeshile} ¦                                          ¦ \e[0m"
	echo "${jeshile} +------------------------------------------+ \e[0m"
	sleep 3
	cd $ruta_trabajo
	find . -type f ! -name *.$extension_video -delete
	
    sleep 3



}

# function to display menus
show_menus() {
    clear
    echo "${jeshile} +-------------------------------------+ \e[0m"
    echo "${jeshile} ¦    M E N U -- P R I N C I P A L     ¦ \e[0m"
    echo "${jeshile} +-------------------------------------+ \e[0m"
	echo " "
	echo "${jeshile2} +---------------------------------------------+ \e[0m"
	echo " ¦              O P C I O N E S                ¦ \e[0m"
	echo "${jeshile2} +---------------------------------------------+ \e[0m"
	echo "${jeshile2} ¦1.- Configuracion inicial                    ¦ \e[0m"
	echo "${jeshile2} ¦2.- Codificacion predeterminada con logotipo ¦ \e[0m"
	echo "${jeshile2} ¦3.- Codificacion predeterminada sin logotipo ¦ \e[0m"
	echo " ¦        Configuracion avanzada               ¦ \e[0m"
	echo "${jeshile2} ¦4.- Codificar video en h264 mas rapido y mas ¦ \e[0m"
	echo "${jeshile2} ¦       comptibildad con reproductores        ¦ \e[0m"
	echo "${jeshile2} ¦4.- Codificacion predeterminada con logotipo ¦ \e[0m"
	echo "${jeshile2} ¦6.- Codificacion predeterminada con logotipo ¦ \e[0m"
	echo "${jeshile2} ¦7.- Codificacion predeterminada con logotipo ¦ \e[0m"
	echo "${jeshile2} ¦                                             ¦ \e[0m"
	echo "${jeshile2} ¦9.- SALIR                                    ¦ \e[0m"
	echo "${jeshile2} +---------------------------------------------+ \e[0m"
    echo " "


}


read_options(){
    local choice
    read -p "Escoje una opcion del [ 1 - 9] " choice
    case $choice in
        1) one ;;
        2) two ;;
        3) tre ;;
        4) four ;;
        5) five ;;
        6) six ;;
        7) seven ;;
        8) eight ;;
        9) exit 0;;
        *) echo -e "${RED}Error...${STD}" && sleep 2
    esac
}
 
# ----------------------------------------------
# Step #3: Trap CTRL+C, CTRL+Z and quit singles
# ----------------------------------------------
trap '' SIGINT SIGQUIT SIGTSTP
 
# -----------------------------------
# Step #4: Main logic - infinite loop
# ------------------------------------
while true
do
 
    show_menus
    read_options
done