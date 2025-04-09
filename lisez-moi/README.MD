# Sub Domain Scraping


## Description de l'outil


Sub Domain Scraping est un script Bash permettant d'explorer un domaine principal pour découvrir ses sous-domaines et d'afficher leurs codes HTTP correspondants. Cet outil est particulièrement utile pour :

Les personnes qui font  de la cybersécurité.

Les administrateurs systèmes.

Toute personne souhaitant analyser la structure d’un domaine.


# Fonctionnalités


Extraction des sous-domaines d’un domaine principal.

Résolution des adresses IP associées.

Affichage des codes HTTP pour chaque sous-domaine (colorisé pour plus de lisibilité) :

* Vert : Succès (200-299).

* Jaune : Redirection (300-399).

* Orange : Erreur client (400-499).

* Rouge : Erreur serveur (500-599).

* Blanc : Pas de réponse.



# Procédure d'installation


### Clonez le dépôt GitHub :

``` 
git clone https://github.com/Hegeldirkk/scrapingshell.git

```

### Accédez au répertoire du projet :

``` 
cd scrapingshell

```
### Vérifiez que le script scrapy.sh est présent dans le répertoire.


# Commande d'exécution

Pour utiliser le script, exécutez simplement la commande suivante :

```
./scrapy.sh <domaine.com>

```

Patientez pendant que le script effectue la recherche et affiche les résultats.
```
Exemple de sortie

[+] sub1.exemple.com 192.168.1.1 200
[+] sub2.exemple.com Aucune IP 404
```
https://github.com/Hegeldirkk/scrapingshell/blob/lisez-moi-Blvck/lisez-moi/scrapy-img.png
