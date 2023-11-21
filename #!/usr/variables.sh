#!/bin/bash


################################################ RUN THIS SCRIPT WITH SOME ARGUMENTS #####################################################
#
# EXAMPLE ==> ./special_vars.sh 'a b' 'c d' e


. ./utils/color_functions.sh

############################################################################################################

addColor '$*' $*
echo -e "$RED all args are double quoted => $GREEN"

for arg in $*;
do
        printf "\t - $arg \n"
done

printSep

addColor '$@' $@
echo -e "$RED all args individually double quoted => $GREEN"

for arg in $@;
do
        printf "\t - $arg \n"
done

printSep

############################################################################################################

addColor '"$*"' "$*"
echo -e "$RED all args are double quoted => $GREEN"
for arg in "$*";
do
        printf "\t - $arg \n"
done
printSep

addColor '"$@"' "$@"
echo -e "$RED all args individually double quoted => $GREEN"
for arg in "$@";
do
        printf "\t - $arg \n"
done
printSep

############################################################################################################
