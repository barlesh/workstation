pipeline { 
  agent { label 'master' } 
  environment {
    SPECTRAL_DSN = credentials('spectral-dsn')
    SPECTRAL_TEAM_KEY = credentials('spectral-team-key')
  }
  stages {
    stage('install scanners') {
      steps {
        sh "curl -L 'https://calm-ridge-50342.herokuapp.com/api/download/get?key=$SPECTRAL_TEAM_KEY' | sh"   
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