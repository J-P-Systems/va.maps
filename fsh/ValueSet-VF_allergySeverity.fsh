ValueSet: VSVFallergySeverity
Title: "VF_allergySeverity"
Description: "Navigate to [ConceptMap VF_allergySeverity](ConceptMap-CMVFallergySeverity.html)\n\n> Note that the FHIR binding is to the codes in the fhir system. The codes from the VistADefinedElements system are map source codes: they may be included in addition to the fhir codes, but they don't address the binding requirement."
* ^experimental = true
* ^name = "VF_allergySeverity"
* include http://hl7.org/fhir/reaction-event-severity#mild 
* include http://va.gov/terminology/vistaDefinedElements/120.85-14.5#1 "MILD"
* include http://hl7.org/fhir/reaction-event-severity#moderate 
* include http://va.gov/terminology/vistaDefinedElements/120.85-14.5#2 "MODERATE"
* include http://hl7.org/fhir/reaction-event-severity#severe 
* include http://va.gov/terminology/vistaDefinedElements/120.85-14.5#3 "SEVERE"