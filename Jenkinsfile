pipeline {
    agent {
        label 'slave'
    }

    stages {
        
        stage('Build-Docker-app') {
            steps {
                withCredentials([usernamePassword(credentialsId: 'docker', passwordVariable: 'DOCKERPASS', usernameVariable: 'DOCKERENAME')]) {
                    sh """ 
                    docker build . -t app02:latest
                    docker login -u ${DOCKERENAME} -p ${DOCKERPASS}
                    docker tag app02:latest fkdevops/kubernetes-images
                    docker push fkdevops/kubernetes-images
                    """
                }
            }
        }
        stage('Deploy-app') {
            steps {
               withCredentials([usernamePassword(credentialsId: 'docker', passwordVariable: 'DOCKERPASS', usernameVariable: 'DOCKERENAME')]) {
                    sh """
                    docker login -u ${DOCKERENAME} -p ${DOCKERPASS}
                    kubectl delete deployment --all -n simple-web
                    kubectl apply -f deploy-app/app-ns.yaml
                    kubectl apply -f deploy-app/app-deploy.yaml
                    kubectl apply -f deploy-app/app-svc.yaml
                    """
               }
            }
        }
    }
}
