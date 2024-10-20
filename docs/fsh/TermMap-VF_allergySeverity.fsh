Instance: CMVFallergySeverity
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/CMVFallergySeverity"
* name = "VF_allergySeverity"
* title = "VF_allergySeverity"
* status = #draft
* experimental = false
* description = "Terminology Maps VF_allergySeverity"
* sourceCanonical = "http://va.gov/fhir/ValueSet/VSVFallergySeverity-vista"
* targetCanonical = "http://va.gov/fhir/ValueSet/VSVFallergySeverity"
* group[0].source = "http://va.gov/terminology/vistaDefinedTerms/120.85-14.5"
* group[=].target = "http://hl7.org/fhir/reaction-event-severity"
* group[=].element[0].code = #1
* group[=].element[=].display = "MILD"
* group[=].element[=].target.code = #mild
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #2
* group[=].element[=].display = "MODERATE"
* group[=].element[=].target.code = #moderate
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #3
* group[=].element[=].display = "SEVERE"
* group[=].element[=].target.code = #severe
* group[=].element[=].target.equivalence = #equal

ValueSet: VSVFallergySeverity
Title: "VF_allergySeverity"
Description: "FHIR Target ValueSet for Terminology Maps VF_allergySeverity"
* ^experimental = false
* ^name = "VF_allergySeverity"
* include http://hl7.org/fhir/reaction-event-severity#mild 
* include http://hl7.org/fhir/reaction-event-severity#moderate 
* include http://hl7.org/fhir/reaction-event-severity#severe 

ValueSet: VSVFallergySeverity-vista
Title: "VF_allergySeverity VistA"
Description: "VistA Source ValueSet for Terminology Maps VF_allergySeverity"
* ^experimental = false
* ^name = "VF_allergySeverity"
* include http://va.gov/terminology/vistaDefinedTerms/120.85-14.5#1 "MILD"
* include http://va.gov/terminology/vistaDefinedTerms/120.85-14.5#2 "MODERATE"
* include http://va.gov/terminology/vistaDefinedTerms/120.85-14.5#3 "SEVERE"