function mulaiHitung ()
{
	if [ "$Airman" = "Y" ]
	then
		let "nilai = 18 + $Tangki"
	else
		let "nilai = 12 + $Tangki"
	fi
	extractNilai
	if [ "$Bubbleman" = "Y" ]
        then
                let "nilai = 11 + $Tangki"
        else
                let "nilai = 8 + $Tangki"
        fi
        extractNilai
	if [ "$Crashman" = "Y" ]
        then
                let "nilai = 10 + $Tangki"
        else
                let "nilai = 17 + $Tangki"
        fi
        extractNilai
	if [ "$Flashman" = "Y" ]
        then
                let "nilai = 6 + $Tangki"
        else
                let "nilai = 19 + $Tangki"
        fi
        extractNilai
	if [ "$Heatman" = "Y" ]
        then
                let "nilai = 2 + $Tangki"
        else
                let "nilai = 15 + $Tangki"
        fi
        extractNilai
	if [ "$Metalman" = "Y" ]
        then
                let "nilai = 20 + $Tangki"
        else
                let "nilai = 16 + $Tangki"
        fi
        extractNilai
	if [ "$Quickman" = "Y" ]
        then
                let "nilai = 4 + $Tangki"
        else
                let "nilai = 9 + $Tangki"
        fi
        extractNilai
	if [ "$Woodman" = "Y" ]
        then
                let "nilai = 13 + $Tangki"
        else
                let "nilai = 5 + $Tangki"
        fi
        extractNilai
}

function extractNilai ()
{
	if [ $nilai -gt 20 ]
	then
		let "nilai = $nilai - 20"
	fi
	if [ $nilai -gt 15 ]
	then
		let "huruf = $nilai - 15"
		echo -n "E$huruf "
	elif [ $nilai -gt 10 ]
	then
		let "huruf = $nilai - 10"
		echo -n "D$huruf "
	elif [ $nilai -gt 5 ]
	then
		let "huruf = $nilai - 5"
		echo -n "C$huruf "
	else
		echo -n "B$nilai "
	fi
}

function hitungTank ()
{
	case $Tangki in
		0)
			echo -n "A1 "
			;;
		1)
			echo -n "A2 "
			;;
		2)
			echo -n "A3 "
			;;
		3)
			echo -n "A4 "
			;;
		4)
			echo -n "A5 "
			;;
		*)
			echo "(ERROR : Can't handle less than zero!)"
			echo -n "XX "
			;;
	esac
}

function cekTangki ()
{
	while [ $Tangki -gt 4 ]
	do
		echo "Invalid Number!"
		echo -n "E-Tanks that you have : "
		read Tangki
	done
}

clear
echo " - Generator Password Megaman 2 By. C4_KadalMen - "
echo -n "E-Tanks that you have : "
read Tangki
cekTangki
echo "Bosses that you've beaten (Y = Yes; Ignore to check as NO)"
echo -n "1.) Airman? "
read Airman
echo -n "2.) Bubbleman? "
read Bubbleman
echo -n "3.) Crashman? "
read Crashman
echo -n "4.) Flashman? "
read Flashman
echo -n "5.) Heatman? "
read Heatman
echo -n "6.) Metalman? "
read Metalman
echo -n "7.) Quickman? "
read Quickman
echo -n "8.) Woodman? "
read Woodman
echo -n "Password : "
hitungTank
mulaiHitung
echo " "
