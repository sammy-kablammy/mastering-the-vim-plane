// You don't need LSP or plugins to do formatting!

// :help 'formatprg'
// :set formatprg=gofmt

package main

import (
	"fmt"
	"os"
)

// gqip
func    main        () {
  // wowee pardner that is some ugly formattin'
		fmt.Println("well howdy there, neovimconf 🤠"   )
	len := 100; results := 0
	for i := 0; i < len; i++ {
		if i % 2 == 0 {
			results +=1
							}
	}
	fmt.Println(results)
os.Exit(69)
}

// Also see "How to Do 90% of What Plugins Do (With Just Vim)"
// (https://www.youtube.com/watch?v=XA2WjJbmmoM)
