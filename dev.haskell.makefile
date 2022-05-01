IMAGE = haskell:9.2
CONTAINER = env.dev.haskell

dev.hs:		# run docker with Haskell lang tooling and mounts $(SRC_PATH) to /sources
	@ docker run --rm -d -t \
		--name $(CONTAINER) \
		-v $(SRC_PATH):/workdir \
		-w /workdir \
		$(IMAGE)

dev.ghci:	# run GHCi in Docker container
	@ docker run -it --rm $(IMAGE)

dev.hs.cmd:	# run command in Go container
	@ docker exec -it \
		-w /workdir/$(DIR) \
		$(CONTAINER) \
		$(CMD)

dev.hs.kill:	# kill docker container
	@ docker rm -f $(CONTAINER)