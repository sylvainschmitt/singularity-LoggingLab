R and LoggingLab package
================
Sylvain Schmitt
May 4, 2023

**R and LoggingLab package**

This container includes:

- R 4.0.3
- LoggingLab (dev)

`LoggingLab` is an R Package to Simulate Forest Logging.

\[<https://github.com/VincyaneBadouard/LoggingLab>\]

Singularity container based on the recipe:
[Singularity](https://github.com/sylvainschmitt/singularity-LoggingLab/blob/main/Singularity)

Package installation using Miniconda3 V4.7.12

Image singularity (V\>=3.3) is automatically test and built and pushed
on the registry using
[test.yml](https://github.com/sylvainschmitt/singularity-LoggingLab/blob/main/.github/workflows/test.yml)
&
[builder.yml](https://github.com/sylvainschmitt/singularity-LoggingLab/blob/main/.github/workflows/builder.yml)

**build**:

``` bash
sudo singularity build LoggingLab.sif Singularity
```

**pull**:

``` bash
singularity pull https://github.com/sylvainschmitt/singularity-LoggingLab/releases/download/0.0.1/sylvainschmitt-singularity-template.latest.sif
```

**snakemake**:

``` python
    singularity: 
        "https://github.com/sylvainschmitt/singularity-LoggingLab/releases/download/0.0.1/sylvainschmitt-singularity-template.latest.sif"
```

**test**:

``` bash
singularity run -e LoggingLab.sif Rscript test.R
```
