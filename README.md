# davinci-epdx
FHIR IG Payer Data Exchange (PDex)

This Repository is used by HL7 to publish the Continuous Integration Build of the Da Vinci Payer Data Exchange (PDex)
Implementation Guide (IG). You can find the published IG at: http://build.fhir.org/ig/HL7/davinci-epdx/index.html

The PDex IG is the work product of the HL7 Da Vinci Project.
More information about the Da Vinci Interoperability Project can be found here: http://www.hl7.org/about/davinci/
The PDex project information can be found here: https://confluence.hl7.org/pages/viewpage.action?pageId=40738760

The PDex IG was originally published using the Trifolia FHIR Publisher. 
The publisher can be found at: https://trifolia-fhir.lantanagroup.com/home

For version 0.3.7 FHIR Shorthand and Sushi were used to compile the PDex IG. The source code for the IG 
is found in the fishtank folder in this repository.

Check out the README.md in the Fishtank folder for instructions on compiling the IG using Sushi.

The primary author of this IG is: Mark Scrimshire of OnyxHealth.io. You can reach him at mark@ekivemark.com.

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

