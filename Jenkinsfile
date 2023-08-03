pipeline {

		agent{
				label {
		
						label "built-in"
			}
			
		}
				stages {
	
						stage("maven-execute") {
						
												steps {
															sh "sudo mvn pakage"
												
				}

			}
	
						stage("build-image") {
								
				
											steps {
														sh "sudo docker build -t test ."
											
				}
				
			}
						
					
						
											
			

						stage("run-docker-image") {
						
											steps {
														sh "sudo docker run -itdp 8081:8080  test"
											
			
			}
						
		}
								
						
	}

}
