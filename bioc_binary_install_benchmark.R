## Start docker image with

## docker run -it bioconductor/bioconductor_docker:RELEASE_3_13 bash

## Run the test on your machine

AnVIL::install('microbenchmark')

res <- microbenchmark::microbenchmark(
    "binary" = {AnVIL::install(c('Rhtslib', 'rhdf5'))},
    "traditional" = {BiocManager::install(c('Rhtslib', 'rhdf5'), force = TRUE)},
    times = 2L ## Run the same process two times
)

res
