Instance: allergySeverity
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/allergySeverity"
* name = "AllergySeverity"
* title = "allergySeverity"
* status = #active
* experimental = false
* description = "Terminology Maps allergySeverity"
* sourceCanonical = "http://va.gov/fhir/ValueSet/allergySeverity-vista"
* targetCanonical = "http://va.gov/fhir/ValueSet/allergySeverity"
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

ValueSet: allergySeverity
Title: "allergySeverity FHIR"
Description: "FHIR Target ValueSet for Terminology Maps allergySeverity"
* ^experimental = false
* ^status = #active
* ^name = "AllergySeverity"
* include http://hl7.org/fhir/reaction-event-severity#mild 
* include http://hl7.org/fhir/reaction-event-severity#moderate 
* include http://hl7.org/fhir/reaction-event-severity#severe 

ValueSet: allergySeverity-vista
Title: "allergySeverity VistA"
Description: "VistA Source ValueSet for Terminology Maps allergySeverity"
* ^experimental = false
* ^status = #active
* ^name = "AllergySeverity_VistA"
* include http://va.gov/terminology/vistaDefinedTerms/120.85-14.5#1 "MILD"
* include http://va.gov/terminology/vistaDefinedTerms/120.85-14.5#2 "MODERATE"
* include http://va.gov/terminology/vistaDefinedTerms/120.85-14.5#3 "SEVERE"