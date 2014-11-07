set.core <- structure(function#Setting cores
(n = NA ##<< The number of cores
### Function sets the number of cores to be used by Rscripts using the parallel package. For older package:multicore use XC's chaos package
){
##author<< Wesley GOI
    if(is.na(n))
    {
        n <- Sys.getenv('NSLOTS')
        if(n <= 0)
        {
            hostname <- Sys.getenv('HOSTNAME')
            if(length(grep("c.*\\d.*.local$", hostname)) > 0)   #the regex is specific to water compute-0-0; this will be a qlogin case
            {
                n <- 1
            }else
            {
                require(parallel)   #other case
                n <- parallel:::detectCores()
            }
        }
    }
    options('mc.cores' = n)
})

mc <- structure(function #wrapper function to call 
(){
    library(parallel)
    set.cores()
})
