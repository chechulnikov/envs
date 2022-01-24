docker.init:
	@ colima status
	@ colima start
	@ colima status
	@ docker info
	@ docker ps -a

docker.info:	# prints images and containers info
	@ docker images
	@ printf \\n
	@ docker ps -a