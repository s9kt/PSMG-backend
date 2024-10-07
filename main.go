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

func CreateRouter() *http.ServeMux {
	router := http.NewServeMux()

	return router
}
