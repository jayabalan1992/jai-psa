#!groovy
node {
  stage 'Checkout'
  git 'ssh://git@github.com:irwin-tech/docker-pipeline-demo.git'
 
  stage 'Docker build'
  docker.build('demo')
 
  stage 'Docker push'
  docker.withRegistry('https://1234567890.dkr.ecr.us-east-1.amazonaws.com', 'ecr:us-east-1:demo-ecr-credentials') {
    docker.image('demo').push('latest')
  }
}
