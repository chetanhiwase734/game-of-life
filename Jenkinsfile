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
														sh "docker build -t test:1.0 ."
											
				}
				
			}
						
						stage("dockerhub-push") {
						
											steps {
														
														
														sh  "sudo docker push chetanhiwase734/test:1.0"
					
				}	
							
			}			
			

						stage("run-docker-image") {
						
											steps {
														sh "docker run -itdp 8080:8080 --name test test:1.00"
											
			
			}
						
		}
								
						
	}

}
