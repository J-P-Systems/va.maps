Instance: VF-RadiologyProcedureStatus
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/VF-RadiologyProcedureStatus"
* name = "VF_RadiologyProcedureStatus"
* title = "VF_RadiologyProcedureStatus"
* status = #active
* experimental = false
* description = "Terminology Maps VF_RadiologyProcedureStatus"
* sourceCanonical = "http://va.gov/fhir/ValueSet/RadiologyProcedureStatus-vista"
* targetCanonical = "http://va.gov/fhir/ValueSet/RadiologyProcedureStatus"
* group[0].source = "http://va.gov/terminology/vistaDefinedTerms/50.65-.02"
* group[=].target = "http://hl7.org/fhir/event-status"
* group[=].element[0].code = #CALLED_FOR_EXAM
* group[=].element[=].display = "CALLED FOR EXAM"
* group[=].element[=].target.code = #preparation
* group[=].element[=].target.display = "Preparation"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #CANCELLED
* group[=].element[=].display = "CANCELLED"
* group[=].element[=].target.code = #not-done
* group[=].element[=].target.display = "Not Done"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #COMPLETE
* group[=].element[=].display = "COMPLETE"
* group[=].element[=].target.code = #completed
* group[=].element[=].target.display = "Completed"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #EXAMINED
* group[=].element[=].display = "EXAMINED"
* group[=].element[=].target.code = #in-progress
* group[=].element[=].target.display = "In Progress"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #TRANSCRIBED
* group[=].element[=].display = "TRANSCRIBED"
* group[=].element[=].target.code = #in-progress
* group[=].element[=].target.display = "In Progress"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #WAITING_FOR_EXAM
* group[=].element[=].display = "WAITING FOR EXAM"
* group[=].element[=].target.code = #preparation
* group[=].element[=].target.display = "Preparation"
* group[=].element[=].target.equivalence = #equal

ValueSet: RadiologyProcedureStatus
Title: "RadiologyProcedureStatus FHIR"
Description: "FHIR Target ValueSet for Terminology Maps [VF_RadiologyProcedureStatus](ConceptMap-VF-RadiologyProcedureStatus.html)"
* ^experimental = false
* ^status = #active
* ^name = "RadiologyProcedureStatus"
* include http://hl7.org/fhir/event-status#preparation "Preparation"
* include http://hl7.org/fhir/event-status#not-done "Not Done"
* include http://hl7.org/fhir/event-status#completed "Completed"
* include http://hl7.org/fhir/event-status#in-progress "In Progress"

ValueSet: RadiologyProcedureStatus-vista
Title: "RadiologyProcedureStatus VistA"
Description: "VistA Source ValueSet for Terminology Maps [VF_RadiologyProcedureStatus](ConceptMap-VF-RadiologyProcedureStatus.html)"
* ^experimental = false
* ^status = #active
* ^name = "RadiologyProcedureStatus_VistA"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#CALLED_FOR_EXAM "CALLED FOR EXAM"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#CANCELLED "CANCELLED"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#COMPLETE "COMPLETE"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#EXAMINED "EXAMINED"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#TRANSCRIBED "TRANSCRIBED"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#WAITING_FOR_EXAM "WAITING FOR EXAM"