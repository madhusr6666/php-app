pipeline{
    agent any
    stages{
        stage('CheckOut'){
            steps{
                git branch: 'main', url: 'https://github.com/madhusr6666/php-app.git'
            }
        }
        stage('Build'){
             steps{
                 sh 'docker build -t image1 /var/lib/jenkins/workspace/job1/'
             }
        }
        stage('Deploy'){
            steps{
                ansiblePlaybook credentialsId: 'ansible', disableHostKeyChecking: true, installation: 'ansible', inventory: '/etc/ansible/hosts', playbook: '/etc/ansible/playbook.yml', vaultTmpPath: ''
            }
        }
        
    }
}
