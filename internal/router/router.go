package router

import (
	"net/http"

	"nrelab.github.io/nrelab-api/internal/handlers"
)

func New() http.Handler {
	mux := http.NewServeMux()
	mux.HandleFunc("/health", handlers.Health)
	return mux
}
