#!/bin/bash
echo "############################################################"
echo "###						       ###"
echo "### 		MOUSSOURIS CLASSE 1                    ###"
echo "###		./msrscrap.sh			       ###"
echo "###						       ###"
echo "############################################################"


# Couleurs 
VERT="\e[32m"
JAUNE="\e[33m"
ORANGE="\e[38;5;214m"
ROUGE="\e[31m"
BLANC="\e[37m"
RESET="\e[0m"

if [ -z "$1" ]; then
    echo -e "${ROUGE}Usage: $0 <domaine>${RESET}"
    exit 1
fi

domaine="$1"
echo "Recherche des sous-domaines pour '$domaine'..."

common_names=$(curl -s "https://crt.sh/?q=%25.$domaine&output=json" | jq -r '.[].common_name' | sort -u)

if [ -z "$common_names" ]; then
    echo -e "${ROUGE} Aucun sous-domaine trouvé.${RESET}"
    exit 1
fi

while read -r cn; do
    ip=$(dig +short "$cn" | head -n 1)
    [ -z "$ip" ] && ip="Aucune IP"

    http_code=$(curl -o /dev/null -s -w "%{http_code}" --max-time 3 "http://$cn")

    case $http_code in
        2*) couleur=$VERT ;;  # Succès
        3*) couleur=$JAUNE ;; # Redirection
        4*) couleur=$ORANGE ;; # Erreur client
        5*) couleur=$ROUGE ;; # Erreur serveur
        *) couleur=$BLANC ;;  # Pas de réponse
    esac

    echo -e "${couleur}[+]${RESET} $cn $ip $http_code"
done <<< "$common_names"

