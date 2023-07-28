pipeline {

		agent{
				label {
		
						label "built-in"
			}
			
		}
				stages {
	
						stage("maven-execute") {
						
												steps {
															sh "mvn install"
												
				}

			}
	
						stage("build-image") {
								
				
											steps {
														sh "docker build -t test ."
											
				}
				
			}
						
						stage("dockerhub-push") {
						
											stage('Publish image to Docker Hub') {
          
            steps {
        withDockerRegistry([ credentialsId: "chetanhiwase734", url: "https://hub.docker.com/repositories/chetanhiwase734" ]) {
          sh  'docker push test'
        //  sh  'docker push test:$BUILD_NUMBER' 
        }
                  
          }
        }
		}	

						stage("run-docker-image") {
						
											steps {
														sh "docker run -itdp 8080:8080  test"
											
			
			}
						
		}
								
						
	}

}
