#!/bin/bash
git init
echo "Un repos Git vide a été créé"
git status
git add --all
git status
echo "entrez le message pour votre commit "
read message
git status
git commit -m "$message"
echo "Veuillez renseigner l'URL de votre remote"
read url
git remote add origin $url
git branch
echo "Choisissez la branche sur laquelle vous souhaitez envoyer votre travail"
read branch
git checkout $branch
git push origin $branch
echo "Votre travail a bien été sauvegardé sur GitHub"