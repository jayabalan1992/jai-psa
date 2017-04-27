#!groovy
node {
  stage 'Checkout'
  git 'https://github.com/jayabalan1992/jai-psa'
 
  stage 'Docker build'
  docker.build('Dockerfile:latest')
 
  stage 'Docker push'
  withDockerRegistry([credentialsId: 'githubcredentials', url: 'https://hub.docker.com/r/jayabalan/jenkinsauto/']) {
    docker.image('Dockerfile').push('latest')
  }
}
