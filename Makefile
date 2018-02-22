Balmhorn-Regular.otf: Balmhorn-Regular.ufo
	docker --log-level=error build -t balmhorn .
	docker --log-level=error create --name=balmhorn-container balmhorn
	docker --log-level=error cp balmhorn-container:master_otf/Balmhorn-Regular.otf .
	docker --log-level=error rm balmhorn-container

clean:
	rm -f *~ Balmhorn-Regular.otf
