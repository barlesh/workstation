pipeline { 
  agent { label 'master' } 
  environment {
    SPECTRAL_DSN = credentials('spectral-dsn')
  }
  stages {
    stage('install scanners') {
      steps {
        sh "curl -L 'https://calm-ridge-50342.herokuapp.com/api/download/get?key=$SPECTRAL_DSN' | sh"   
      }
    }
    stage('scan for issues') {
      steps {
        sh "/usr/local/bin/spectral scan" 
      }
    }
    stage('build') {
      steps {
        sh "./build.sh" 
      }
    }
  }
}