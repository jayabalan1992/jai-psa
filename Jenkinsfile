#!groovy
node {
  stage 'Checkout'
  git 'https://github.com/jayabalan1992/jai-psa'
 
  stage 'Docker build'
  docker.build('jayabalan/jenkinsauto:latest')
 
  stage 'Docker push'
  withDockerRegistry([credentialsId: 'Dockerhub', url: 'https://hub.docker.com/r/jayabalan/jenkinsauto/']) {
    docker.image('jayabalan/jenkinsauto:latest').push('latest')
  }
}
