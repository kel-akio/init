
#!/bin/bash




read -p "Entrez le nom de l'utilisateur a supprimé : " user

ZZ= who -u | grep $user | cut -d " " -f1
if [ "$ZZ" = "$user" ]
then
	echo "utilisateur valide"
	killall -KILL $ZZ
	userdel -f -r $ZZ
	echo "l'utilisateur $user a été supprimé . '\n'"
else
	echo "votre nom d'utilisateur n'est pas valide."
fi
