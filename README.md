The package holds several R functions

1. set.cores()
2. mc()

|Function| what it does|
|----|----|
|set.cores()| determines the number of CPU cores allocated and restricts any multicore process to this number|
|mc()|wrapper function which calls set.cores() and the parallel library|


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
