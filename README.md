# BioconductorOnCloud-Oct2021

22nd National and 5th International Biostatistics Conference - Turkey

## Slides

https://bit.ly/bioc-cloud-oct2021

## Fast package installation demo

https://nturaga.github.io/bioc2021-bioconductor-binaries/ 

## Binary installation benchmarking

### Start docker image with

```
docker run -it bioconductor/bioconductor_docker:RELEASE_3_13 bash
```

### Run the test on your machine

```
AnVIL::install('microbenchmark')

res <- microbenchmark::microbenchmark(
    "binary" = {AnVIL::install(c('Rhtslib', 'rhdf5'))},
    "traditional" = {BiocManager::install(c('Rhtslib', 'rhdf5'), force = TRUE)},
    times = 2L ## Run the same process two times
)

res
```
