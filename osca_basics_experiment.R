## Run inside the bioconductor/bioconductor_docker:RELEASE_3_13 image

## Packages used in OSCA basics quality control section

pkgs_OSCA_basics_qc <- c('scRNAseq','scuttle', 'robustbase', 'scater', 'org.Mm.eg.db')


## Run AnVIL install which is binary installation
AnVIL::install(pkgs_OSCA_basics_qc)
         
## Run Traditional BiocManager install
BiocManager::install(pkgs_OSCA_basics_qc) 

## benchmark the two to compare
## Note: It will take some time.

res2 <- microbenchmark::microbenchmark(
    "binary" = {AnVIL::install(pkgs_OSCA_basics_qc)},
    "traditional" = {BiocManager::install(pkgs_OSCA_basics_qc), force = TRUE)},
    times = 2L ## Run the same process two times
)

res2
