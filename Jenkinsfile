pipeline {

		agent{
				label {
		
						label "slave-1"
			}
			
		}
				stages {
	
						stage("maven-execute") {
						
												steps {
															sh "sudo mvn clean install"
												
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
