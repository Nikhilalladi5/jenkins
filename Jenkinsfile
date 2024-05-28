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
        sh 'sudo apt-get update -y'
        sh 'sudo apt-get install python3-pip -y'
        sh 'sudo pip install awscli -y'
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
