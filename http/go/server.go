package main
import (
  "net/http"
  "encoding/json"
)
func plaintext(w http.ResponseWriter, r *http.Request) {
  w.Write([]byte("Hello, world!"))
}

type msg struct {
  Message    string
}

func jsonHandler(w http.ResponseWriter, r *http.Request) {
  msg := msg{"Hello, world!"}

  js, err := json.Marshal(msg)
  if err != nil {
    http.Error(w, err.Error(), http.StatusInternalServerError)
    return
  }

  w.Header().Set("Content-Type", "application/json")
  w.Write(js)
}


func main() {
  http.HandleFunc("/plaintext", plaintext)
  http.HandleFunc("/json", jsonHandler)
  if err := http.ListenAndServe(":8080", nil); err != nil {
    panic(err)
  }
}