pipeline{
  agent any
  stages{
    stage('Checkout') {
      steps {
        git branch: 'main', changelog: false, poll: false, url: 'https://github.com/Nikhilalladi5/jenkins'
      }
    }
    stage('shell') {
      steps{
        sh './aws.sh'
      }
    }
  }
}
