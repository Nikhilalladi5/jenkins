pipeline{
  agent any
  stages{
    stage('Checkout') {
      steps {
        git branch: 'main', changelog: false, poll: false, url: 'https://github.com/Nikhilalladi5/jenkins'
      }
    }
    stage('Install AWS CLI') {
      steps {
        sh 'sudo apt-get update'
        sh 'sudo apt-get install python3-pip'
        sh 'sudo pip install awscli'
      }
    }
    stage('shell') {
      steps{
        sh 'chmod +x aws.sh'
        sh './aws.sh'
      }
    }
  }
}
