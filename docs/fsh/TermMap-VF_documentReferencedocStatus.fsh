Instance: VF-documentReferencedocStatus
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/VF-documentReferencedocStatus"
* name = "VF_documentReferencedocStatus"
* title = "VF_documentReferencedocStatus"
* status = #active
* experimental = false
* description = "Terminology Maps VF_documentReferencedocStatus"
* sourceCanonical = "http://va.gov/fhir/ValueSet/documentReferencedocStatus-vista"
* targetCanonical = "http://va.gov/fhir/ValueSet/documentReferencedocStatus"
* group[0].source = "http://terminology.hl7.org/CodeSystem/VHA"
* group[=].target = "http://hl7.org/fhir/composition-status"
* group[=].element[0].code = #4696298
* group[=].element[=].display = "ACTIVE"
* group[=].element[=].target.code = #preliminary
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #4501286
* group[=].element[=].display = "AMENDED"
* group[=].element[=].target.code = #amended
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #4501014
* group[=].element[=].display = "COMPLETED"
* group[=].element[=].target.code = #final
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #4500698
* group[=].element[=].display = "DELETED"
* group[=].element[=].target.code = #entered-in-error
* group[=].element[=].target.equivalence = #wider
* group[=].element[+].code = #4501288
* group[=].element[=].display = "RETRACTED"
* group[=].element[=].target.code = #entered-in-error
* group[=].element[=].target.equivalence = #wider
* group[=].element[+].code = #4501290
* group[=].element[=].display = "UNCOSIGNED"
* group[=].element[=].target.code = #preliminary
* group[=].element[=].target.equivalence = #wider
* group[=].element[+].code = #4501291
* group[=].element[=].display = "UNDICTATED"
* group[=].element[=].target.code = #preliminary
* group[=].element[=].target.equivalence = #wider
* group[=].element[+].code = #4696299
* group[=].element[=].display = "UNRELEASED"
* group[=].element[=].target.code = #preliminary
* group[=].element[=].target.equivalence = #wider
* group[=].element[+].code = #4501292
* group[=].element[=].display = "UNSIGNED"
* group[=].element[=].target.code = #preliminary
* group[=].element[=].target.equivalence = #wider
* group[=].element[+].code = #4501293
* group[=].element[=].display = "UNTRANSCRIBED"
* group[=].element[=].target.code = #preliminary
* group[=].element[=].target.equivalence = #wider
* group[=].element[+].code = #4501294
* group[=].element[=].display = "UNVERIFIED"
* group[=].element[=].target.code = #preliminary
* group[=].element[=].target.equivalence = #wider

ValueSet: documentReferencedocStatus
Title: "documentReferencedocStatus FHIR"
Description: "FHIR Target ValueSet for Terminology Maps [VF_documentReferencedocStatus](ConceptMap-VF-documentReferencedocStatus.html)"
* ^experimental = false
* ^status = #active
* ^name = "DocumentReferencedocStatus"
* include http://hl7.org/fhir/composition-status#preliminary 
* include http://hl7.org/fhir/composition-status#amended 
* include http://hl7.org/fhir/composition-status#final 
* include http://hl7.org/fhir/composition-status#entered-in-error 

ValueSet: documentReferencedocStatus-vista
Title: "documentReferencedocStatus VistA"
Description: "VistA Source ValueSet for Terminology Maps [VF_documentReferencedocStatus](ConceptMap-VF-documentReferencedocStatus.html)"
* ^experimental = false
* ^status = #active
* ^name = "DocumentReferencedocStatus_VistA"
* include http://terminology.hl7.org/CodeSystem/VHA#4696298 "ACTIVE"
* include http://terminology.hl7.org/CodeSystem/VHA#4501286 "AMENDED"
* include http://terminology.hl7.org/CodeSystem/VHA#4501014 "COMPLETED"
* include http://terminology.hl7.org/CodeSystem/VHA#4500698 "DELETED"
* include http://terminology.hl7.org/CodeSystem/VHA#4501288 "RETRACTED"
* include http://terminology.hl7.org/CodeSystem/VHA#4501290 "UNCOSIGNED"
* include http://terminology.hl7.org/CodeSystem/VHA#4501291 "UNDICTATED"
* include http://terminology.hl7.org/CodeSystem/VHA#4696299 "UNRELEASED"
* include http://terminology.hl7.org/CodeSystem/VHA#4501292 "UNSIGNED"
* include http://terminology.hl7.org/CodeSystem/VHA#4501293 "UNTRANSCRIBED"
* include http://terminology.hl7.org/CodeSystem/VHA#4501294 "UNVERIFIED"