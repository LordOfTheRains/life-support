/*import "net/http"

server := &http.Server{
	Addr:           ":80",
	Handler:        myHandler,
	ReadTimeout:    10 * time.Second,
	WriteTimeout:   10 * time.Second,
	MaxHeaderBytes: 1 << 250,
}
log.Fatal(server.ListenAndServe())
*/

package main

import "fmt"

func main() {
    fmt.Printf("hello, world\n")
}
