Instance: VF-allergySeverity
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/VF-allergySeverity"
* name = "VF_allergySeverity"
* title = "VF_allergySeverity"
* status = #active
* experimental = false
* description = "Terminology Maps VF_allergySeverity"
* sourceCanonical = "http://va.gov/fhir/ValueSet/allergySeverity-vista"
* targetCanonical = "http://va.gov/fhir/ValueSet/allergySeverity"
* group[0].source = "http://va.gov/terminology/vistaDefinedTerms/50.65-.02"
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
Description: "FHIR Target ValueSet for Terminology Maps [VF_allergySeverity](ConceptMap-VF-allergySeverity.html)"
* ^experimental = false
* ^status = #active
* ^name = "AllergySeverity"
* include http://hl7.org/fhir/reaction-event-severity#mild 
* include http://hl7.org/fhir/reaction-event-severity#moderate 
* include http://hl7.org/fhir/reaction-event-severity#severe 

ValueSet: allergySeverity-vista
Title: "allergySeverity VistA"
Description: "VistA Source ValueSet for Terminology Maps [VF_allergySeverity](ConceptMap-VF-allergySeverity.html)"
* ^experimental = false
* ^status = #active
* ^name = "AllergySeverity_VistA"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#1 "MILD"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#2 "MODERATE"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#3 "SEVERE"