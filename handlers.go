package main

import (
	"encoding/json"
	"net/http"
    "io"
    "io/ioutil"
)

func Ping(w http.ResponseWriter, r *http.Request) {
	w.Header().Set("Content-Type", "application/json; charset=UTF-8")
	w.WriteHeader(http.StatusOK)
	if err := json.NewEncoder(w).Encode("Pong!"); err != nil {
		panic(err)
	}
}