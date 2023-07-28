pipeline {

		agent{
				label {
		
						label "built-in"
			}
			
		}
				stages {
	
						stage ("maven-execute") {
						
												stapes {
															sh "mvn install"
												
				}

			}
	
						stage ("build-image") {
								
				
											stapes {
														sh "docker build -t test:1.0"
											
				}
				
			}

						stage ("run-docker-image") {
						
											stapes {
														sh "docker run -itdp 8080:8080 test:1.00"
											
			}		
		}

						
	}

}
