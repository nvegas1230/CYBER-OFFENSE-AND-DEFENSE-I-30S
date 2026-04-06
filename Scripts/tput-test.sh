#!/bin/bash
# term_size2 - Dynamically display terminal window size
# term_size3 - Dynamically display terminal window size with text centering

redraw() {
    width=$(tput cols)
    height=$(tput lines)
    string_to_display="Width = $width Height = $height"
    string_length=${#string_to_display}
    clear # Clear after doing math and var assignment so text has less time spent being not there
    tput cup $((height / 2)) $(((width / 2) - (string_length / 2))) 
    echo $string_to_display
}

trap redraw WINCH # Runs the "redraw" function for WINCH, which means when screen size changes

# tput_characters - Test various character attributes
clear

echo "tput character test"
echo "==================="
echo

tput bold;  echo "This text has the bold attribute.";     tput sgr0

tput smul;  echo "This text is underlined (smul).";       tput rmul

# Most terminal emulators do not support blinking text (though xterm
# does) because blinking text is considered to be in bad taste ;-)
tput blink; echo "This text is blinking (blink).";        tput sgr0

tput rev;   echo "This text has the reverse attribute";   tput sgr0

# Standout mode is reverse on many terminals, bold on others. 
tput smso;  echo "This text is in standout mode (smso)."; tput rmso

tput sgr0
echo

while true; do
    :
done