# *************************************************************************************** #
# ---------------------------------- EULA NOTICE ---------------------------------------- #
#                     Agreement between "Haroon Awan" and "You"(user).                    #
# ---------------------------------- EULA NOTICE ---------------------------------------- #
#  1. By using this piece of software your bound to these point.                          #
#  2. This an End User License Agreement (EULA) is a legal between a software application #
#     author "Haroon Awan" and (YOU) user of this software.                               #
#  3. This software application grants users rights to use for any purpose or modify and  #
#     redistribute creative works.                                                        #
#  4. This software comes in "is-as" warranty, author "Haroon Awan" take no responsbility #
#     what you do with by/this software as your free to use this software.                #
#  5. Any other purpose(s) that it suites as long as it is not related to any kind of     #
#     crime or using it in un-authorized environment.                                     #
#  6. You can use this software to protect and secure your data information in any        #
#     environment.                                                                        #
#  7. It can also be used in state of being protection against the unauthorized use of    #
#     information.                                                                        #
#  8. It can be used to take measures achieve protection.                                 #
# *************************************************************************************** #

#!/bin/bash

red="\e[0;31m"
green="\e[0;32m"
off="\e[0m"

function banner() {

    clear
    echo "                                                                                               "
    echo "                                                                                               "
    echo "                                                                                               "
    echo "     ....###########...########....######....##...##....##.......##....########....      "
    echo "      .......##...........##.......##..##....##...##....##.#.....##....##....##.......   "
    echo "          ...##...........##.......##........##...##....##..#....##....##....##...       "
    echo "           ..##...........##.......######....#######....##...##..##....########..	       "
    echo "          ...##...........##...........##....##...##....##.....#.##....##....##...       "
    echo "      .......##...........##.......##..##....##...##....##......###....##....##.......   "
    echo "         ....##........########....######....##...##....##.......##....##....##....      "
    echo "                Powerful and A.I. Based Web Security Swiss Knife     Version 1.0a         "
    echo "                                [Coded By: Haroon Awan]                                  "
    echo "                            [Contact: mrharoonawan@gmail.com]                            "
    echo "                                                                                         "
    echo "                                                                                         "
    echo "                                                                                         "

}

function perl_modules_uninstall() {
    echo -e "$green Internet connectivity is required"
    echo -e "$red [$green+$red]$off Installing Uninstaller For Extra Perl Modules ..."
    echo "y" | sudo cpan install App::cpanminus
    cd "/root/.cpan/build/App-cpanminus-1.7044-0/bin/"
    chmod +x cpanm
    cp cpanm /sbin/
    cd /sbin/
    echo -e "$red [$green+$red]$off Uninstalling Extra Perl Modules ..."
    echo "y" | cpanm --uninstall JSON
    echo "y" | cpanm --uninstall WWW::Mechanize
    echo "y" | cpanm --uninstall use HTML::TokeParser
    echo "y" | cpanm --uninstall Term::ANSIColor
    echo "y" | cpanm --uninstall HTML::LinkExtor
    echo "y" | cpanm --uninstall use Data::Dumper
    echo "y" | cpanm --uninstall HTML::TreeBuilder
    echo "y" | cpanm --uninstall WWW::Mechanize::Firefox
    echo "y" | cpanm --uninstall WWW::Mechanize::TreeBuilder
    echo "y" | cpanm --uninstall HTTP::Cookies
    echo "y" | cpanm --uninstall HTML::XSSLint
    echo "y" | cpanm --uninstall LWP
    echo "y" | cpanm --uninstall LWP::Simple
    echo "y" | cpanm --uninstall URI::URL
    echo "y" | cpanm --uninstall HTML::XSSLint
    echo "y" | cpanm --uninstall HTML::Form::XSS
    echo "y" | cpanm --uninstall CGI
    echo "y" | cpanm --uninstall HTTP::Request::Common
    echo "y" | cpanm --uninstall WWW::Mechanize::Link
    echo "y" | cpanm --uninstall HTTP::Request
    echo "y" | cpanm --uninstall HTTP::Request::Common
    echo "y" | cpanm --uninstall HTTP::Status
    echo "y" | cpanm --uninstall HTML::Form
    echo "y" | cpanm --uninstall IO::Socket
    echo "y" | cpanm --uninstall IO::Socket::SecureSocks
    echo "y" | cpanm --uninstall URI::URL
    echo "y" | cpanm --uninstall Mojo::DOM
    echo "y" | cpanm --uninstall Data::Dumper
    echo "y" | cpanm --uninstall Win32::Console::ANSI
    echo "y" | cpanm --uninstall HTML::TableExtract
    echo "y" | cpanm --uninstall Data::Validate::Domain
    echo "y" | cpanm --uninstall LWP::Protocol::https
    echo "y" | cpanm --uninstall Mozilla::CA
    echo "y" | cpanm --uninstall Bundle::LWP

}

function local_files_remove() {

    echo -e "$red [$green+$red]$off Checking and cleaning directories..."
    sudo rm -rf "/usr/share/tishna"
    sudo rm -r "/usr/share/icons/tishna.jpeg"
    sudo rm -r "/usr/share/applications/tishna.desktop"
    sudo rm -r "/usr/local/bin/tishna"
    echo -e "$red [$green+$red]$off Uninstalling ..."
    echo -e "$red [$green+$red]$off Creating Symbolic Link ..."

}

clear
banner

echo -e "$red Facing any technical issue?$green feel free to contact$off"
read -r -p "Are You Sure You Wanna Uninstall? [Y/n] " input
case $input in
[yY][eE][sS] | [yY])
    echo "Yes"
    local_files_remove
    perl_modules_uninstall
    sudo rm -rf "/root/tishna"
    sudo rm -rf "/root/Tishna"
    sudo rm -rf "/home/$USER/tishna"
    sudo rm -rf "/home/$USER/Tishna"
    echo -e "$red [$green+$red]$off Tishna has been Uninstalled From Your System"
    ;;
[nN][oO] | [nN])
    echo "No"
    ;;
*)
    echo "Invalid input..."
    exit 1
    ;;
esac
