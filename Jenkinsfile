#!groovy
node {
  stage 'Checkout'
  git 'https://github.com/jayabalan1992/jai-psa'
 
  stage 'Docker build'
  def image = docker.build('jayabalan/jenkinsauto:latest')
 

  docker.withRegistry("https://registry.hub.docker.com", "Dockerhub") {
        image.push()
    }

}
