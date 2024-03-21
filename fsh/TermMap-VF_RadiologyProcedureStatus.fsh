Instance: CMVFRadiologyProcedureStatus
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/CMVFRadiologyProcedureStatus"
* name = "VF_RadiologyProcedureStatus"
* title = "VF_RadiologyProcedureStatus"
* status = #draft
* experimental = false
* description = "Terminology Maps VF_RadiologyProcedureStatus"
* sourceCanonical = "http://va.gov/fhir/ValueSet/VSVFRadiologyProcedureStatus-vista"
* targetCanonical = "http://va.gov/fhir/ValueSet/VSVFRadiologyProcedureStatus"
* group[0].source = "http://va.gov/terminology/vistaDefinedTerms/72-.01"
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

ValueSet: VSVFRadiologyProcedureStatus
Title: "VF_RadiologyProcedureStatus"
Description: "FHIR Target ValueSet for Terminology Maps VF_RadiologyProcedureStatus"
* ^experimental = false
* ^name = "VF_RadiologyProcedureStatus"
* include http://hl7.org/fhir/event-status#preparation "Preparation"
* include http://hl7.org/fhir/event-status#not-done "Not Done"
* include http://hl7.org/fhir/event-status#completed "Completed"
* include http://hl7.org/fhir/event-status#in-progress "In Progress"

ValueSet: VSVFRadiologyProcedureStatus-vista
Title: "VF_RadiologyProcedureStatus VistA"
Description: "VistA Source ValueSet for Terminology Maps VF_RadiologyProcedureStatus"
* ^experimental = false
* ^name = "VF_RadiologyProcedureStatus"
* include http://va.gov/terminology/vistaDefinedTerms/72-.01#CALLED_FOR_EXAM "CALLED FOR EXAM"
* include http://va.gov/terminology/vistaDefinedTerms/72-.01#CANCELLED "CANCELLED"
* include http://va.gov/terminology/vistaDefinedTerms/72-.01#COMPLETE "COMPLETE"
* include http://va.gov/terminology/vistaDefinedTerms/72-.01#EXAMINED "EXAMINED"
* include http://va.gov/terminology/vistaDefinedTerms/72-.01#TRANSCRIBED "TRANSCRIBED"
* include http://va.gov/terminology/vistaDefinedTerms/72-.01#WAITING_FOR_EXAM "WAITING FOR EXAM"