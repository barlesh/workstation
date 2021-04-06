pipeline { 
  agent { label 'master' } 
  environment {
    SPECTRAL_DSN = credentials('spectral-dsn')
  }
  stages {
    stage('install scanners') {
      steps {
        sh "curl -L 'https://bruce-mountain-16192.herokuapp.com/latest/x/sh?dsn=$SPECTRAL_DSN' | sh"   
      }
    }
    stage('scan for issues') {
      steps {
        sh "$HOME/.spectral/spectral scan" 
      }
    }
    stage('build') {
      steps {
        sh "./build.sh" 
      }
    }
    stage('test') {
      steps {
        sh "./test.sh" 
      }
    }
    stage('deploy') {
      steps {
        sh "./deploy.sh" 
      }
    }
  }
}