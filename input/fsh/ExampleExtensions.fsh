// Example Extensions

Instance: Example-Last-Transmitted
InstanceOf: LastTransmission
Description: "Example extension to record date of last transmission for member in PDex Provider Group."
Usage: #inline
* valueDateTime = "2024-03-21T17:18:00.000Z"


Instance: Example-Last-Types
InstanceOf: LastTypes
Description: "Example extension to record resources requested for member in PDex Provider Group."
Usage: #inline
* valueString = "Patient,Condition,Observation,Procedure"


Instance: Example-Last-Filters
InstanceOf: LastFilters
Description: "Example extension to record filters on resources requested for member in PDex Provider Group."
Usage: #inline
* valueString = "Condition?recordedDate=ge2023-09-23,Procedure?performed=ge2023-03-21"
