#!groovy
node {
  stage 'Checkout'
  git 'https://github.com/jayabalan1992/jai-psa'
 
  stage 'Docker build'
  docker.build('Dockerfile')
 
  stage 'Docker push'
  docker.withRegistry('https://hub.docker.com/r/jayabalan/jenkinsauto/', 'githubcredentials') {
    docker.image('Dockerfile').push('latest')
  }
}
