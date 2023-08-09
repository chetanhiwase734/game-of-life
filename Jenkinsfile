pipeline {

		agent{
				label {
		
						label "slave-1"
			}
			
		}
				stages {
	
						stage("maven-execute") {
						
												steps {
													//sh "sudo docker stop test"
													sh "sudo docker system prune -a -f "
													sh "sudo mvn install"
												
				}

			}
	
						stage("build-image") {
								
				
											steps {
														sh "sudo docker build -t test ."
											
				}
				
			}
						
					
						
											
			

						stage("run-docker-image") {
						
											steps {
														sh "sudo docker run -itdp 80:8080  --name test-1 test"
											
			
			}
						
		}
								
						
	}

}
