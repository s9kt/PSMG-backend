package main

import (
	"net/http"
)

func main() {
	router := CreateRouter()
	server := http.Server{
		Addr:    ":3000",
		Handler: router,
	}

	server.ListenAndServe()
}
