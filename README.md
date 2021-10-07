# Extracting .dex files from Android ART .oat/.odex files

## How it works?

DEX files are embeded in Android ART .oat/.odex files. `oat2dexes` looks for
DEX magic "dex\n035\0".

## How to use?

    $ file file.odex
    file.odex: ELF 32-bit LSB shared object, ARM, version 1 (GNU/Linux), dynamically linked, stripped
    $ gcc -o oat2dexes -Wall oat2dexes.c
    $ ./oat2dexes file.odex
    Writing 12345 bytes to dex01.dex
    $ java -jar baksmali.jar -o outdir dex01.dex

(last step not really important just in case if you obtain an working dex for decompile)

You can also use the build.sh script for build an binary :D
### Note about my (PANCHO7532) fork
This project is a fork from: [https://github.com/wuyongzheng/oat2dexes](https://github.com/wuyongzheng/oat2dexes)
Using zero skill and experience on the C language i implemented some stuff to detect dex files with the same name and increment it's number value for avoid overwriting, i tested it only on Linux so therefore i don't guarantee that this will work on Windows as well.