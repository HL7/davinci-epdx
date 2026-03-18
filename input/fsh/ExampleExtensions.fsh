// Example Extensions
// Note: LastTransmission, LastTypes and LastFilters extension examples were removed in v2.2.0
// when those extensions were deleted (FHIR-55987).

// ---------------------------------------
// Prior Authorization ExplanationOfBenefit Adjudication All Slices
// Add Date Time
Instance: Example-WhenAdjudicated
InstanceOf: WhenAdjudicated
Description: "Example of when an adjudication action took place. NOTE: that this extension may be replaced by an inter-version extension after R6 version of the EOB implements this DataTime element."
Usage: #inline
* valueDateTime = "2024-07-23T17:26:23.217+00:00"
