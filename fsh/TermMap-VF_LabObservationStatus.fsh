Instance: CMVFLabObservationStatus
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/CMVFLabObservationStatus"
* name = "VF_LabObservationStatus"
* title = "VF_LabObservationStatus"
* status = #draft
* experimental = false
* description = "Terminology Maps VF_LabObservationStatus"
* sourceCanonical = "http://va.gov/fhir/ValueSet/VSVFLabObservationStatus-vista"
* targetCanonical = "http://va.gov/fhir/ValueSet/VSVFLabObservationStatus"
* group[0].source = "http://terminology.hl7.org/ValueSet/v2-0123"
* group[=].target = "http://hl7.org/fhir/observation-status"
* group[=].element[0].code = #F
* group[=].element[=].display = "FINAL RESULTS"
* group[=].element[=].target.code = #final
* group[=].element[=].target.display = "Final"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #P
* group[=].element[=].display = "PRELIMINARY"
* group[=].element[=].target.code = #preliminary
* group[=].element[=].target.display = "Preliminary"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #<NULL>
* group[=].element[=].target.code = #unknown
* group[=].element[=].target.display = "Unknown"
* group[=].element[=].target.equivalence = #equal

ValueSet: VSVFLabObservationStatus
Title: "VF_LabObservationStatus"
Description: "FHIR Target ValueSet for Terminology Maps VF_LabObservationStatus"
* ^experimental = false
* ^name = "VF_LabObservationStatus"
* include http://hl7.org/fhir/observation-status#final "Final"
* include http://hl7.org/fhir/observation-status#preliminary "Preliminary"
* include http://hl7.org/fhir/observation-status#unknown "Unknown"

ValueSet: VSVFLabObservationStatus-vista
Title: "VF_LabObservationStatus VistA"
Description: "VistA Source ValueSet for Terminology Maps VF_LabObservationStatus"
* ^experimental = false
* ^name = "VF_LabObservationStatus"
* include http://terminology.hl7.org/ValueSet/v2-0123#F "FINAL RESULTS"
* include http://terminology.hl7.org/ValueSet/v2-0123#P "PRELIMINARY"
* include http://terminology.hl7.org/ValueSet/v2-0123#<NULL> 