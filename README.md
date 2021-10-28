# BioconductorOnCloud-Oct2021

22nd National and 5th International Biostatistics Conference - Turkey

## Author

Nitesh Turaga

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

## OSCA Basics book - quality control experiment

```
pkgs_OSCA_basics_qc <- c('scRNAseq','scuttle', 'robustbase', 'scater', 'org.Mm.eg.db')

AnVIL::install(pkgs_OSCA_basics_qc) # binary install
         
BiocManager::install(pkgs_OSCA_basics_qc) # traditional install

## benchmark if needed

res2 <- microbenchmark::microbenchmark(
    "binary" = {AnVIL::install(pkgs_OSCA_basics_qc)},
    "traditional" = {BiocManager::install(pkgs_OSCA_basics_qc), force = TRUE)},
    times = 2L ## Run the same process two times
)

res2
```

## Links in slides

Bioconductor release : https://bioconductor.org/books/release/

Bioconductor build check results page: http://bioconductor.org/checkResults/

OSCA basic book: http://bioconductor.org/books/3.14/OSCA.basic/

OSCA basic book quality control `sessionInfo()`: http://bioconductor.org/books/3.14/OSCA.basic/quality-control.html#session-info

Bioconductor docker images: http://bioconductor.org/help/docker/

Bioconductor docker images on Microsoft container registry: https://hub.docker.com/_/microsoft-bioconductor-bioconductor-docker

Bioconductor docker images on Dockerhub: https://hub.docker.com/repository/docker/bioconductor/bioconductor_docker

How to add / modify Bioconductor docker images: http://bioconductor.org/help/docker/#modify 

BiocKubeInstall github page: https://github.com/Bioconductor/BiocKubeInstall/

AnVIL: https:anvil.terra.bio

AnVIL usage demo: 

- Login, Create workspace (if it does not exist), Start RStudio interactive environment, Use Bioconductor

https://www.loom.com/share/1c7e775f74594446b5ad5244f5d13197

Bioconductor SLACK channel: https://bioc-community.herokuapp.com/

## Questions

Please direct them to `nitesh at ds.dfci.harvard.edu`



