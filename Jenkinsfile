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
						
					
						
											
			

						stage("run-docker-image") {
						
											steps {
														sh "docker run -itdp 80:8080  test"
											
			
			}
						
		}
								
						
	}

}
