Instance: CMVFLabInterpretation
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/CMVFLabInterpretation"
* name = "VF_LabInterpretation"
* title = "VF_LabInterpretation"
* status = #draft
* experimental = false
* description = "Terminology Maps VF_LabInterpretation"
* sourceCanonical = "http://va.gov/fhir/ValueSet/VSVFLabInterpretation-vista"
* targetCanonical = "http://va.gov/fhir/ValueSet/VSVFLabInterpretation"
* group[0].source = "http://va.gov/terminology/vistaDefinedTerms/63.04-2+through+862"
* group[=].target = "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation"
* group[=].element[0].code = #H
* group[=].element[=].target.code = #H
* group[=].element[=].target.display = "High"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #L
* group[=].element[=].target.code = #L
* group[=].element[=].target.display = "Low"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #H*
* group[=].element[=].target.code = #HH
* group[=].element[=].target.display = "Critical high"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #L*
* group[=].element[=].target.code = #LL
* group[=].element[=].target.display = "Critical low"
* group[=].element[=].target.equivalence = #equal

ValueSet: VSVFLabInterpretation
Title: "VF_LabInterpretation"
Description: "FHIR Target ValueSet for Terminology Maps VF_LabInterpretation"
* ^experimental = false
* ^name = "VF_LabInterpretation"
* include http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#H "High"
* include http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#L "Low"
* include http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#HH "Critical high"
* include http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#LL "Critical low"

ValueSet: VSVFLabInterpretation-vista
Title: "VF_LabInterpretation VistA"
Description: "VistA Source ValueSet for Terminology Maps VF_LabInterpretation"
* ^experimental = false
* ^name = "VF_LabInterpretation"
* include http://va.gov/terminology/vistaDefinedTerms/63.04-2+through+862#H 
* include http://va.gov/terminology/vistaDefinedTerms/63.04-2+through+862#L 
* include http://va.gov/terminology/vistaDefinedTerms/63.04-2+through+862#H* 
* include http://va.gov/terminology/vistaDefinedTerms/63.04-2+through+862#L* 