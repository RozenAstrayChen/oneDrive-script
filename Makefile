DockerBuild:
	#docker build --no-cache -t $(name) .
	docker build -t $(name) .
#run docker
DockerRun:
	docker run -it --rm -p 8080:8080 $(id)
InsDep:
	sudo apt install libcurl4-openssl-dev -y
	sudo apt install libsqlite3-dev -y
	sudo wget http://master.dl.sourceforge.net/project/d-apt/files/d-apt.list -O /etc/apt/sources.list.d/d-apt.list -y
	sudo apt-get update && sudo apt-get -y --allow-unauthenticated install --reinstall d-apt-keyring -y
	sudo apt-get update && sudo apt-get install dmd-compiler dub -y
Install:
	git clone https://github.com/skilion/onedrive.git
	cd onedrive
	make
	sudo make install
Configuration:
	#cd onedrive
	mkdir -p ~/.config/onedrive
	cp onedrive/config ~/.config/onedrive/config
	#nano ~/.config/onedrive/config

# copy file to docker
DCP:
	echo running with $(id)
	docker cp Makefile $(id):/home
	docker cp config $(id):/home