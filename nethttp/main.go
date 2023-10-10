package main

import (
	"encoding/json"
	"net/http"
)

func helloHandler(w http.ResponseWriter, r *http.Request) {
	w.Header().Set("Content-Type", "application/json")
	json.NewEncoder(w).Encode(map[string]string{"message": "Hello, World!"})
}

func main() {
	http.HandleFunc("/hello", helloHandler)

	if err := http.ListenAndServe(":8080", nil); err != nil {
		panic(err)
	}
}
