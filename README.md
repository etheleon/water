The package holds several R functions

1. set.cores()
2. mc()

|Function| what it does|
|----|----|
|set.cores()| finds out how many cores were allocated|
|mc()|calls set core and the parallel library()|


#Usage

```Rscript
library(water)
mc()    #call mc() which wraps set.cores() and calls the parallel package

someList <- mclapply(someVector, 
    function(x){
        some steps 
        ...
    })
```
