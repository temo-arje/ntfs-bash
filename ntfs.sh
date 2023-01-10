#!/bin/bash

date

# Colors
Green='\033[1;32m'
Red='\033[0;31m'
GreenBackground='\033[1;102m'
RedBackground='\033[0;101m'
BCyan='\033[1;36m' 
NC='\033[0m' # No Color
# End Colors

 echo -e ${Green}'             
  mmmmmmm                               mm             "
   #     mmm   mmmmm   mmm            ##    m mm   mmm    mmm
   #    #"  #  # # #  #" "#          #  #   #"  "    #   #"  #
   #    #""""  # # #  #   #          #mm#   #        #   #""""
   #    "#mm"  # # #  "#m#"         #    #  #        #   "#mm"
                                                     #
                                                   ""
  '${NC}

if brew ls --versions ntfs-3g-mac > /dev/null; then

while getopts d:u: flag
do
    case "${flag}" in
        d) DiskName=${OPTARG};;
        u) unmount=${OPTARG};;
    esac
done 

if [  -n "$unmount" ]; then
    sudo diskutil unmount /dev/${unmount}
    exit #Stop the process
fi

if [ ! -n "$DiskName" ]; then
    echo -e "${Red} Hello ${NC}"
    sleep 0.5
    diskutil list
    sleep 1.5
    read -p "Enter Disk Identifier: " DiskName
fi

if [  -d "/Volumes/${DiskName}" ] 
then
 echo -e "${RedBackground} This disk already exists, Try creating a new one. ${NC}"
 exit #Stop the process
fi


if [ ! -d "/Volumes/${DiskName}" ] 
then
    sudo mkdir /Volumes/${DiskName}       
    sudo diskutil unmount /dev/${DiskName}
    sudo /usr/local/bin/ntfs-3g /dev/${DiskName} /Volumes/${DiskName} -o local -o allow_other -o auto_xattr -o auto_cache
    echo -e "${GreenBackground} The operation was successfully performed ${DiskName} ${NC}"
else
    echo -e "${RedBackground} This disk already exists, Try creating a new one. ${NC}"
    sleep 1.5
    read -p "Enter Disk Identifier: " DiskName
    sudo mkdir /Volumes/${DiskNameTwo}       
    sudo diskutil unmount /dev/${DiskNameTwo}
    sudo /usr/local/bin/ntfs-3g /dev/${DiskNameTwo} /Volumes/${DiskNameTwo} -o local -o allow_other -o auto_xattr -o auto_cache
    echo -e "${GreenBackground} The operation was successfully performed ${DiskName} ${NC}"
fi
else
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew tap gromgit/homebrew-fuse
brew install ntfs-3g-mac
fi