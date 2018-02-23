Balmhorn-Bold.otf: Balmhorn-Bold.ufo
	docker --log-level=error build -t balmhorn .
	docker --log-level=error create --name=balmhorn-container balmhorn
	docker --log-level=error cp balmhorn-container:master_otf/Balmhorn-Bold.otf .
	docker --log-level=error rm balmhorn-container

clean:
	rm -f *~ */*~ */*/*~ Balmhorn-Bold.otf
