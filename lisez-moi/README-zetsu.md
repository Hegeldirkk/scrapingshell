     ########## Nom de l'outil : scrapy.sh ##########

 # Desciption 

scrapy.sh est un script Bash permet d'automatiser la recherche des commons names (sous-domaines) pour un domaine donné grâce au service crt.sh. Il recupère les commons names,puis pour chacun il:

      -Récupère l'adresse IP via dig
      - Effectue des requêtes HTTP pour obtenir le code de réponse HTTP
      -Affiche les resultats sous le forme: [+] common name code_http. 

Pour chaque code http, il applique une couleur à [+].

     -Vert pour le code 200-299 (succès)
     -Jaune pour le code 300-399 (redirection)
     -Orange pour le code 400-499 (erreur client 
     -Rouge pour le code 500-599 (erreur serveur)
     -Blanc pour le code 000 (pas de reponse) 
      
      ########## Pocédure d'installation ##########

     git clone https://github.com/Hegeldirkk/scrapingshell

      ########## Commande d'execution ###########

pour l'execution du script, il faut taper de votre terminal

      - ./scrapy.sh domaine
      - bash scrapy.sh domaine 
 Exemple: ./scrapy.sh certifiedhacker.com ou
          bash scrapy.sh certifiedhacker.com 

##### Exemple d'execution #####

https://github.com/Hegeldirkk/scrapingshell/blob/lisez-moi-zetsu/lisez-moi/capture.png

