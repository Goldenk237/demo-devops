# Demo DevOps Project

![CI Status](https://github.com/Goldenk237/demo-devops/actions/workflows/ci.yml/badge.svg)
![Docker Build](https://github.com/Goldenk237/demo-devops/actions/workflows/publish.yml/badge.svg)

Ce projet est une démonstration de mise en place d'un pipeline CI/CD complet avec GitHub Actions.

## Objectifs
- Versionning du code
- Intégration Continue (CI) : Tests et Build
- Dockerisation
- Déploiement Continu (CD) : Docker Hub et GitHub Pages

## Structure
- `index.html` : Site statique simple
- `.github/workflows` : Définitions des pipelines CI/CD
- `Dockerfile` : Configuration pour l'image Docker

## Commandes
- `npm test` : Lancer les tests (simulés)
- `npm run build` : Construire le site (copie dans `build/`)