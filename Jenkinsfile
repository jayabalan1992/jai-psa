#!groovy
node {
  stage 'Checkout'
  git 'https://github.com/jayabalan1992/jai-psa'
 
  stage 'Docker build'
  def image = docker.build('jayabalan/jenkinsauto:latest')
 
  stage 'Docker push'
  withDockerRegistry([credentialsId: 'Dockerhub', url: 'https://registry.hub.docker.com']) {
    image.push()
  }
}
