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
                 sh 'sudo docker build -t image1 /var/lib/jenkins/workspace/job1/'
             }
                 
        }
        stage('Push the DockerHub'){
             steps{
                 sh 'sudo docker tag image1 madhu6666/image:latest'
                 sh 'sudo docker push madhu6666/image:latest'
             }
        }
        stage('Deploy'){
            steps{
                ansiblePlaybook credentialsId: 'ansible', disableHostKeyChecking: true, installation: 'ansible', inventory: '/etc/ansible/hosts', playbook: '/etc/ansible/playbook.yml', vaultTmpPath: ''
            }
        }
        
    }
}
