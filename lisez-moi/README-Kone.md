# Nom de l'outil : Scrapy.sh

## Description

### scrapy est un outil qui permet de rechercher des sous-domaines d'un domain en récupérant le nom du serveur (command name) et l'adresse IP du domaines. Il affiche égalment les différents codes d'erreur rencontrés


## Commande Executer :
``` 
sudo apt install jq 
```
./scrapy.sh nom-domain

## Explication des paramètres

Scrapy.sh analyse un domaine principal et découvre ses sous-domaines à l’aide de plusieurs méthodes. Pour chaque sous-domaine trouvé, il tente de :

- Résoudre l’adresse IP.
- Obtenir le code de réponse HTTP (200, 301, 302, 401, etc.).
- Afficher les erreurs ou échecs de résolution s’il y en a.

Exemple de résultat :
```
bash
Recherche des sous-domaines pour 'certifiedHacker.com'...
[+] autodiscover.certifiedhacker.com 162.241.216.11 302
[+] blog.certifiedhacker.com 162.241.216.11 200
[+] cpcontacts.certifiedhacker.com ;; communications error to 192.168.1.1#53: timed out 000

# Image: (https://github.com/Hegeldirkk/scrapingshell/blob/lisez-moi-kone/lisez-moi/Capture%20d%E2%80%99%C3%A9cran_2025-04-09_10-20-32.png)

