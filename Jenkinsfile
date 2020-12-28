pipeline { 
  agent { label 'master' } 
  environment {
    SPECTRAL_DSN = credentials('spectral-dsn')
  }
  stages {
    stage('install scanners') {
      steps {
        sh "curl -L 'http://localhost:3001/api/download/get?dsn=$SPECTRAL_DSN' | sh"   
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