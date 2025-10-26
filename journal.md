# Journal de bord du projet encadré
## 01/10/25
Pas de problèmes jusqu'à l'exercice 2.c. J'ai demandé à une camarade de classe comment modifier le fichier depuis ma machine car je n'étais pas sûre de comment m'y prendre. Après cela, j'ai pu mettre en ligne mon journal sans soucis.

## 08/10/25
Le premier exercice a été fait en cours et m'a donc permis de comprendre la logique derrière ces nouvelles commandes. Néanmoins, en faisant l'exercice deux chez moi, j'ai remarqué que je n'avais pas compris la partie sur les arguments du scripts ($1, $2...). J'ai donc demandé à mon frère qui m'a expliqué. Ainsi, j'ai pu continuer jusqu'à la fin de l'exercice 2.b.
En voulant mettre en ligne la première version de mes scripts, j'ai remarqué que je n'avais pas mis la bonne version du script comptes.sh. J'ai donc dû supprimer l'ancienne version, remettre la nouvelle en ligne ainsi que supprimer et refaire mon tag pour qu'il prenne en compte le bon fichier.
Ensuite pour les exercices trois et quatre, je me suis aidée du diaporama mais également d'Internet car je ne savais pas comment demander plusieurs conditions dans la conditions if.

Exercice 4:
Ce script calcul le nombre d'URL valide et non valide contenu dans un fichier.
Il faut d'abord ajouter un seul argument à la commande, sinon le script s'arrête. Ensuite, il lit chaque ligne du fichier contenant des URL, pour chaque lignes commencant par http:// ou https://, le script affiche que l'URL est valide sinon, qu'il ne l'est pas. En arrivant à la fin du fichier, le script affiche le nombre de ligne commençant par une URL valide et le nombre de ligne ne commençant pas par une URL valide.

## 22/10/25
Question 1: nous n'utilisons pas cat car cela aurait exécuté le script dans un sous-shell, les variables auraient disparues après.

Pour la question trois, la ligne echo ne s'éxécutait pas correctement, j'ai dû ajouter l'option -e pour que le terminal affiche une tabulation et non \t.
J'ai demandé de l'aide à une camarade pour afficher le code HTTP et cela m'a aidé pour l'encodage car j'ai repris le même processus.

Toutefois, le script ne marchait pas totalement car une erreur s'affichait à la ligne 6, précisant que l'accès au site https://roboty.magistry.fr/ était impossible. En utilisant la commande "curl -i https://roboty.magistry.fr/", le terminal m'indique que le certificat de ce site a expiré et me renvoie vers un site m'expliquant comment résoudre le problème. Ce site me propose d'utiliser la commande -k/--insecure afin de ne pas passer par l'étape de vérification, mais il précise aussi que cela est très peu recommandé, donc dans le doute, je n'ai pas essayé.
De plus, quand la varaible pour afficher le nombre de mot est placée après la variable pour afficher l'encodage dans la ligne echo, le nombre de mot s'affiche à un endroit aléatoire de la ligne (parfois à la place du "http" de l'URL ou du "char" de "charset"), c'est pourquoi j'ai placé la variable de l'encodage à la fin de la ligne.
Pour finir, j'ai créé un fichier tsv en écrivant la commande pour éxécuter le script suivi de "> tableaux/tableau-fr.tsv".
