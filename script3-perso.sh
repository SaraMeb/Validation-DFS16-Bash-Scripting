#!/bin/bash
#Fonctions 
#Fonctions pour les bigMenus
bigHC () {
    echo "Big Hungry Chicken"
    prix=8
}
bigHB(){
    echo "Big Hungry Beef BBQ"
    prix=8
}
bigHF(){
    echo "Big Hungry Fish"
    prix=7
}
bigVH(){
    echo "Big Veggie Hungry"
    prix=7
}
# Fonctions pour les Menus
menuHC () {
    echo "Menu Hungry Chicken"
    prix=6
}
menuHB(){
    echo "Menu Hungry Beef BBQ"
    prix=6
}
menuHF(){
    echo "Menu Hungry Fish"
    prix=5
}
menuVH(){
    echo "Menu Veggie Hungry"
    prix=5
}
# Fonctions pour les ChildMenus
HungryCB(){
    echo "Burger"
    prix=4
    read -p "A) Chicken Child, B) Beef Child, C) Fish Child   " childChoice 
}
HungryCN(){
    echo "Nuggets de poulet"
    prix=4
}
HungryCF (){
    echo "Bâtonnets de poisson"
    prix=4
}
PURPLE='\033[0;35;5m'
BLUE='\033[0;34;5m'
NC='\033[0m' # No Color


echo -e "${PURPLE} Bienvenue chez HungryGame ${NC}"

reponse=0
total=0
while [ $reponse != "annuler" ]
do
    read -p "1) Commander 2) Valider ma commande, 3) Annuler   " reponse
    if [[ $reponse == '1' ]]
    then 
        echo "Veuillez selectionner votre menu" 
        read -p "a) Menu Big Hungry, b) Menu Hungry, c) Menu Child Hungry   " selection
        if [[ $selection == 'a' ]]
        then
            read -p "1) Big Hungry Chicken, 2) Big Hungry Beef BBQ, 3) Big Hungry Fish, 4) Big Veggie Hungry   " bigChoice
            case $bigChoice in
                1) bigHC ;;
                2) bigHB ;;
                3) bigHF ;;
                4) bigVH ;;
            esac
            echo "Selectionnez un accompagnement"
            read -p "0) Frites A) Potatoes    " accompagnement
            echo "Selectionnez une sauce"
            read -p "B) Ketchup C) Mayonnaise D) Sauce BBQ E) Sauce Curry   " sauce
            echo "Selectionner votre boisson"
            read -p "5) Eau minérale, 6) Coca 7) Fanta 8) Icetea 9) Sprite   " boisson
            total=$(( $prix + $total ))
        elif [[ $selection == 'b' ]]
        then
            read -p "1) Hungry Chicken, 2) Hungry Beef BBQ, 3) Hungry Fish, 4) Veggie Hungry   " choice
            case $choice in
                1) menuHC ;;
                2) menuHB ;;
                3) menuHF ;;
                4) menuVH ;;
            esac
            echo "Selectionnez un accompagnement"
            read -p "0) Frites A) Potatoes    " accompagnement
            echo "Selectionnez une sauce"
            read -p "B) Ketchup C) Mayonnaise D) Sauce BBQ E) Sauce Curry   " sauce
            echo "Selectionner votre boisson"
            read -p "5) Eau minérale, 6) Coca 7) Fanta 8) Icetea 9) Sprite   " boisson
            total=$(( $prix + $total ))
        elif [[ $selection == 'c' ]]
        then
            echo "1) Burger 2) Nuggets de poulet 3) Bâtonnets de poisson"
            read choixEnfant
            case $choixEnfant in
                1) HungryCB ;;
                2) HungryCN ;;
                3) HungryCF ;;

            esac
            if [[ $choixEnfant == "a" ]]
            then
                HungryCB 
            elif [[ $choixEnfant == "b" ]]
            then 
                HungryCN
            elif [[ $choixEnfant == "c" ]]
            then 
                HungryCF
            fi 
            echo "Selectionnez un accompagnement"
            read -p  "0) Frites 1) Potatoes 2) Carottes   " accompagnement
            echo "Selectionnez une sauce"
            read -p "4) Ketchup 5) Mayonnaise    " sauce
            echo "Selectionner votre boisson"
            read -p "a) Eau minérale, b) Coca c) Fanta d) Jus de Fruits    " boisson
            echo "Choisissez un dessert"
            read -p "e) Yaourt à boire f) Compote g) Glaces    " dessert
            read -p "6) Jouet Fille 7) Jouet Garçon    " FG
            total=$(( $prix + $total ))
        fi
    elif [[ $reponse == '2' ]]
    then
        echo "le total de votre commande est $total €"
        echo "Voulez-vous finaliser votre commande?"
        read -p "1) Oui 2) Continuer votre commande" final
        if [[ $final == 1 ]]
        then
            echo "Votre commande de $total € a bien été prise en compte"
            reponse="annuler"
        fi

    elif [[ $reponse == '3' ]]
    then
    echo -e "${BLUE} A bientôt ${NC}"
    exit

    fi 
    
done
echo "Merci d'avoir choisi HungryGame... A bientôt"






