IMAGE = golang:1.18-rc
CONTAINER = env.dev.go

dev.go: # run docker with Go lang tooling and mounts $(PATH) to /sources
	@ docker run --rm -d -t \
		--name $(CONTAINER) \
		-v $(SRC_PATH):/workdir \
		-w /workdir \
		$(IMAGE)

dev.go.cmd:	# run command in Go container
	@ docker exec -it \
		-w /workdir/$(DIR) \
		$(CONTAINER) \
		$(CMD)

dev.go.test:	# run tests in Go container 
	@ make dev.go.cmd DIR=$(DIR) CMD="go test"

dev.go.kill:	# kill docker container
	@ docker rm -f $(CONTAINER)