# Build from PDex IG FHIR ShortHand (FSH)

Author: mark
Created: 2021-08-22.11:20

## davinci-epdx 

This is the Hl7 Da Vinci Payer Data Exchange (PDex) Implementation Guide (IG)
developed using FHIR Shorthand and compiled using Sushi 1.x.

To use sushi you should follow the installation instructions here:

https://fshschool.org/docs/sushi/installation/

Sushi requires the installation of Node.js and npm. 

This IG was built using:
- Node v16.4.2
- Npm 7.19.1
- Sushi


Build with Sushi as follows:

``` bash
sushi input
```

Sushi will automatically run as part of the FHIR IG publisher.

``` bash
./_genonce.sh
```
    
The config.yaml file in the input/fsh directory controls the configuration of the Implementation Guide.

The table of contents in the IG is controlled in the Pages section of config.yaml.

To see the output of the IG in a browser:

``` bash
    {base url}/output/index.html
```

To see the output locally in your filesystem:
``` bash
file:///{base directory}/output/index.html
```
