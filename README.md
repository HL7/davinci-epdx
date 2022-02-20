# davinci-epdx
FHIR IG Payer Data Exchange (PDex)

This Repository is used by HL7 to publish the Continuous Integration Build of the Da Vinci Payer Data Exchange (PDex)
Implementation Guide (IG). You can find the published IG at: http://build.fhir.org/ig/HL7/davinci-epdx/index.html

The PDex IG is the work product of the HL7 Da Vinci Project.
More information about the Da Vinci Interoperability Project can be found here: http://www.hl7.org/about/davinci/
The PDex project information can be found here: https://confluence.hl7.org/pages/viewpage.action?pageId=40738760

PDex Version 1.0.0 was published using FHIR Shorthand and Sushi. 

For the PDex STU Update version 1.0.1 Sushi was upgraded to the 1.x release. The source code for the IG
is found in the fishtank (input/fsh) folder in this repository.

Check out the README.md in the Fishtank folder for instructions on compiling the IG using Sushi.

The primary author of this IG is: Mark Scrimshire of OnyxHealth.io. You can reach him at mark@ekivemark.com.

## Environment setup

Update to latest Sushi:

    npm install -g fsh-sushi

Check Sushi Version:

     sushi -v


## Building the IG

Run the following commands from the base directory.

To run Sushi only:

    sushi fsh -o ./input

To prepare to run the publisher:

    ./_updatePublisher.sh
    
The following command will also run sushi since the FSH files are in the /fsh folder.

To run the publisher:

    ./_genonce.sh
    
If publisher has timeout issues when running sushi. edit the fsh.ini file to adjust the timeout value. 

Da Vinci IG Template: http://build.fhir.org/ig/HL7/ig-template-davinci/branches/master/index.html

## Jira-Spec-Artifacts

Important: You can't remove a version once it is recorded in this repo. 
Because of the change in naming to use 2.0.0-ballot from 2.0.0 it was necessary to mark 2.0.0 as deprecated.

    <version code="current" url="http://build.fhir.org/ig/HL7/davinci-epdx"/>
    <version code="2.0.0-ballot" url="http://hl7.org/fhir/us/davinci-pdex/2022May"/>
    <version code="1.0.0" url="http://hl7.org/fhir/us/davinci-pdex/STU1"/>
    <version code="0.0.1" deprecated="true" url="http://hl7.org/fhir/us/davinci-pdex/2019Jun"/>
    <version code="2.0.0" url="http://hl7.org/fhir/us/davinci-pdex/STU2" deprecated="true"/>
    <version code="0.1" deprecated="true"/>
