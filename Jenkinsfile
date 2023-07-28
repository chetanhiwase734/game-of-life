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
						
											steps {
														
														
														sh  "docker push chetanhiwase734/test"
					
				}	
							
			}			
			

						stage("run-docker-image") {
						
											steps {
														sh "docker run -itdp 8080:8080  test"
											
			
			}
						
		}
								
						
	}

}
