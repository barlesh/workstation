pipeline { 
  agent { label 'master' } 
  environment {
    SPECTRAL_DSN = credentials('spectral-dsn')
  }
  stages {
    stage('checkout project') {
        
    }
    stage('install scanners') {
      steps {
        sh "echo WTF?????"
        // sh "dsn = $SPECTRAL_DSN"
        sh "echo SPECTRAL_DSN: $SPECTRAL_DSN"
        // sh "curl -L 'http://localhost:3001/api/download/get?dsn=$SPECTRAL_DSN' | sh" 
        sh  "curl -L 'https://calm-ridge-50342.herokuapp.com/api/download/get?key=spk-56e211f28423465bbaf5fccec20a146d' | sh"
          
      }
    }
    stage('scan for issues') {
      steps {
        sh 'whoami'
        sh "whereis spectral"
        // sh "where spectral"
        sh "/usr/local/bin/spectral scan" 
        // sh "spectral scan" 
      }
    }
    stage('build') {
      steps {
        sh "./build.sh" 
      }
    }
  }
}