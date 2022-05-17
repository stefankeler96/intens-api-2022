# Intens Demo-Project
---
## Tasks
1. Write a Dockefile 
2. Deploy api on Heroku 
3. Implement a CI/CD using GitHub Actions,
   - first script will run automatically when
     creating PR over the main branch and will
     perform tests.
   - second script will run automatically when
     pushing on the main branch and will build
     docker image of this API, it will also 
     push that docker image on the Heroku
     repository and replace the old one with
     a new image. 