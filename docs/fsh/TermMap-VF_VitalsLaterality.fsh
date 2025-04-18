Instance: VF-VitalsLaterality
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/VF-VitalsLaterality"
* name = "VF_VitalsLaterality"
* title = "VF_VitalsLaterality"
* status = #active
* experimental = false
* description = "Terminology Maps VF_VitalsLaterality"
* sourceCanonical = "http://va.gov/fhir/ValueSet/VitalsLaterality-vista"
* targetCanonical = "http://va.gov/fhir/ValueSet/VitalsLaterality"
* group[0].source = "http://terminology.hl7.org/CodeSystem/VHA"
* group[=].target = "http://snomed.info/sct"
* group[=].element[0].code = #4688660
* group[=].element[=].display = "LEFT"
* group[=].element[=].target.code = #31156008
* group[=].element[=].target.display = "Structure of left half of body (body structure)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].target.comment = "deprecated"
* group[=].element[+].code = #4688680
* group[=].element[=].display = "RIGHT"
* group[=].element[=].target.code = #85421007
* group[=].element[=].target.display = "Structure of right half of body (body structure)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].target.comment = "deprecated"

ValueSet: VitalsLaterality
Title: "VitalsLaterality FHIR"
Description: "FHIR Target ValueSet for Terminology Maps [VF_VitalsLaterality](ConceptMap-VF-VitalsLaterality.html)"
* ^experimental = false
* ^status = #active
* ^name = "VitalsLaterality"
* include http://snomed.info/sct#31156008 "Structure of left half of body (body structure)"
* include http://snomed.info/sct#85421007 "Structure of right half of body (body structure)"

ValueSet: VitalsLaterality-vista
Title: "VitalsLaterality VistA"
Description: "VistA Source ValueSet for Terminology Maps [VF_VitalsLaterality](ConceptMap-VF-VitalsLaterality.html)"
* ^experimental = false
* ^status = #active
* ^name = "VitalsLaterality_VistA"
* include http://terminology.hl7.org/CodeSystem/VHA#4688660 "LEFT"
* include http://terminology.hl7.org/CodeSystem/VHA#4688680 "RIGHT"