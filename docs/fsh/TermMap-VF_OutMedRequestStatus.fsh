Instance: VF-OutMedRequestStatus
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/VF-OutMedRequestStatus"
* name = "VF_OutMedRequestStatus"
* title = "VF_OutMedRequestStatus"
* status = #active
* experimental = false
* description = "Terminology Maps VF_OutMedRequestStatus"
* sourceCanonical = "http://va.gov/fhir/ValueSet/OutMedRequestStatus-vista"
* targetCanonical = "http://va.gov/fhir/ValueSet/OutMedRequestStatus"
* group[0].source = "http://va.gov/terminology/vistADefinedTerms/52-100"
* group[=].target = "http://hl7.org/fhir/CodeSystem/medicationrequest-status"
* group[=].element[0].code = #0
* group[=].element[=].display = "ACTIVE"
* group[=].element[=].target.code = #active
* group[=].element[=].target.display = "active"
* group[=].element[=].target.equivalence = #wider
* group[=].element[+].code = #NULL
* group[=].element[=].display = "ACTIVE"
* group[=].element[=].target.code = #active
* group[=].element[=].target.display = "active"
* group[=].element[=].target.equivalence = #wider
* group[=].element[+].code = #13
* group[=].element[=].display = "DELETED"
* group[=].element[=].target.code = #entered-in-error
* group[=].element[=].target.display = "Entered in Error"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #12
* group[=].element[=].display = "DISCONTINUED"
* group[=].element[=].target.code = #stopped
* group[=].element[=].target.display = "stopped"
* group[=].element[=].target.equivalence = #wider
* group[=].element[+].code = #12
* group[=].element[=].display = "DISCONTINUED"
* group[=].element[=].target.code = #stopped
* group[=].element[=].target.display = "stopped"
* group[=].element[=].target.equivalence = #wider
* group[=].element[+].code = #15
* group[=].element[=].display = "DISCONTINUED (EDIT)"
* group[=].element[=].target.code = #stopped
* group[=].element[=].target.display = "stopped"
* group[=].element[=].target.equivalence = #wider
* group[=].element[+].code = #14
* group[=].element[=].display = "DISCONTINUED BY PROVIDER"
* group[=].element[=].target.code = #stopped
* group[=].element[=].target.display = "stopped"
* group[=].element[=].target.equivalence = #wider
* group[=].element[+].code = #4
* group[=].element[=].display = "DRUG INTERACTIONS"
* group[=].element[=].target.code = #draft
* group[=].element[=].target.display = "draft"
* group[=].element[=].target.equivalence = #wider
* group[=].element[+].code = #11
* group[=].element[=].display = "EXPIRED"
* group[=].element[=].target.code = #completed
* group[=].element[=].target.display = "completed"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #3
* group[=].element[=].display = "HOLD"
* group[=].element[=].target.code = #active
* group[=].element[=].target.display = "active"
* group[=].element[=].target.equivalence = #wider
* group[=].element[+].code = #1
* group[=].element[=].display = "NON-VERIFIED"
* group[=].element[=].target.code = #draft
* group[=].element[=].target.display = "draft"
* group[=].element[=].target.equivalence = #wider
* group[=].element[+].code = #16
* group[=].element[=].display = "PROVIDER HOLD"
* group[=].element[=].target.code = #active
* group[=].element[=].target.display = "active"
* group[=].element[=].target.equivalence = #wider
* group[=].element[+].code = #5
* group[=].element[=].display = "SUSPENDED"
* group[=].element[=].target.code = #active
* group[=].element[=].target.display = "active"
* group[=].element[=].target.equivalence = #wider

ValueSet: OutMedRequestStatus
Title: "OutMedRequestStatus FHIR"
Description: "FHIR Target ValueSet for Terminology Maps [VF_OutMedRequestStatus](ConceptMap-VF-OutMedRequestStatus.html)"
* ^experimental = false
* ^status = #active
* ^name = "OutMedRequestStatus"
* include http://hl7.org/fhir/CodeSystem/medicationrequest-status#active "active"
* include http://hl7.org/fhir/CodeSystem/medicationrequest-status#entered-in-error "Entered in Error"
* include http://hl7.org/fhir/CodeSystem/medicationrequest-status#stopped "stopped"
* include http://hl7.org/fhir/CodeSystem/medicationrequest-status#draft "draft"
* include http://hl7.org/fhir/CodeSystem/medicationrequest-status#completed "completed"

ValueSet: OutMedRequestStatus-vista
Title: "OutMedRequestStatus VistA"
Description: "VistA Source ValueSet for Terminology Maps [VF_OutMedRequestStatus](ConceptMap-VF-OutMedRequestStatus.html)"
* ^experimental = false
* ^status = #active
* ^name = "OutMedRequestStatus_VistA"
* include http://va.gov/terminology/vistADefinedTerms/52-100#0 "ACTIVE"
* include http://va.gov/terminology/vistADefinedTerms/52-100#NULL "ACTIVE"
* include http://va.gov/terminology/vistADefinedTerms/52-100#13 "DELETED"
* include http://va.gov/terminology/vistADefinedTerms/52-100#12 "DISCONTINUED"
* include http://va.gov/terminology/vistADefinedTerms/52-100#15 "DISCONTINUED (EDIT)"
* include http://va.gov/terminology/vistADefinedTerms/52-100#14 "DISCONTINUED BY PROVIDER"
* include http://va.gov/terminology/vistADefinedTerms/52-100#4 "DRUG INTERACTIONS"
* include http://va.gov/terminology/vistADefinedTerms/52-100#11 "EXPIRED"
* include http://va.gov/terminology/vistADefinedTerms/52-100#3 "HOLD"
* include http://va.gov/terminology/vistADefinedTerms/52-100#1 "NON-VERIFIED"
* include http://va.gov/terminology/vistADefinedTerms/52-100#16 "PROVIDER HOLD"
* include http://va.gov/terminology/vistADefinedTerms/52-100#5 "SUSPENDED"