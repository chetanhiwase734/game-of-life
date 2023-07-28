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
														
														sh "docker commit test:1.0 chetanhiwase734/gameoflife:1.0"
														sh  "docker push chetanhiwase734/gameoflife:1.0"
					
				}	
							
			}			
			

						stage("run-docker-image") {
						
											steps {
														sh "docker run -itdp 8080:8080 test:1.00"
											
			
			}
						
		}
								
						
	}

}
