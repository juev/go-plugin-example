all: plugins build

run:
	go run greeter.go

build:
	go build -o greeter .

plugins:
	go build -buildmode=plugin -o eng/eng.so eng/greeter.go
	go build -buildmode=plugin -o chi/chi.so chi/greeter.go
	go build -buildmode=plugin -o swe/swe.so swe/greeter.go
	go build -buildmode=plugin -o ru/ru.so ru/greeter.go
