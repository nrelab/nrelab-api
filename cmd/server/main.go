package main

import (
	"log"
	"net/http"

	"nrelab.github.io/nrelab-api/internal/router"
)

func main() {
	r := router.New()

	log.Println("🚀 nrelab-api running on :8080")
	log.Fatal(http.ListenAndServe(":8080", r))
}
