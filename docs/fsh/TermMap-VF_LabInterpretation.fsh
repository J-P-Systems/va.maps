Instance: LabInterpretation
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/LabInterpretation"
* name = "LabInterpretation"
* title = "LabInterpretation"
* status = #active
* experimental = false
* description = "Terminology Maps LabInterpretation"
* sourceCanonical = "http://va.gov/fhir/ValueSet/LabInterpretation-vista"
* targetCanonical = "http://va.gov/fhir/ValueSet/LabInterpretation"
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
* group[=].element[+].code = #A
* group[=].element[=].target.code = #A
* group[=].element[=].target.display = "Abnormal"
* group[=].element[=].target.equivalence = #equal

ValueSet: LabInterpretation
Title: "LabInterpretation FHIR"
Description: "FHIR Target ValueSet for Terminology Maps LabInterpretation"
* ^experimental = false
* ^status = #active
* ^name = "LabInterpretation"
* include http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#H "High"
* include http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#L "Low"
* include http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#HH "Critical high"
* include http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#LL "Critical low"
* include http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#A "Abnormal"

ValueSet: LabInterpretation-vista
Title: "LabInterpretation VistA"
Description: "VistA Source ValueSet for Terminology Maps LabInterpretation"
* ^experimental = false
* ^status = #active
* ^name = "LabInterpretation_VistA"
* include http://va.gov/terminology/vistaDefinedTerms/63.04-2+through+862#H 
* include http://va.gov/terminology/vistaDefinedTerms/63.04-2+through+862#L 
* include http://va.gov/terminology/vistaDefinedTerms/63.04-2+through+862#H* 
* include http://va.gov/terminology/vistaDefinedTerms/63.04-2+through+862#L* 
* include http://va.gov/terminology/vistaDefinedTerms/63.04-2+through+862#A 