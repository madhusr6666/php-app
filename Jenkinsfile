pipeline{
    agent any
    stages{
        stage('CheckOut'){
            steps{
                git branch: 'main', url: 'https://github.com/madhusr6666/php-app.git'
            }
        }
        stage('Automated Test'){
            steps{
                sh 'docker build -t $imagename /var/lib/jenkins/workspace/job1/tests'
            }
        }
        state('Build'){
             steps{
                 sh 'docker build -t $imagename /var/lib/jenkins/workspace/job1/'
             }
        }
        stage('Deploy'){
            steps{
                sh 'docker run -itd --name $contname -p $contport:80 $imagename'
            }
        }
        
    }
}
