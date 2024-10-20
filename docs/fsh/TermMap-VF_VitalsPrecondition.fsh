Instance: CMVFVitalsPrecondition
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/CMVFVitalsPrecondition"
* name = "VF_VitalsPrecondition"
* title = "VF_VitalsPrecondition"
* status = #draft
* experimental = false
* description = "Terminology Maps VF_VitalsPrecondition"
* sourceCanonical = "http://va.gov/fhir/ValueSet/VSVFVitalsPrecondition-vista"
* targetCanonical = "http://va.gov/fhir/ValueSet/VSVFVitalsPrecondition"
* group[0].source = "http://terminology.hl7.org/CodeSystem/VHA"
* group[=].target = "http://snomed.info/sct"
* group[=].element[0].code = #4500992
* group[=].element[=].display = "WITH CAST OR BRACE"
* group[=].element[=].target.code = #722810000
* group[=].element[=].target.display = "Prosthesis in situ (finding)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #4500993
* group[=].element[=].display = "WITH PROSTHESIS"
* group[=].element[=].target.code = #722810000
* group[=].element[=].target.display = "Prosthesis in situ (finding)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #4500994
* group[=].element[=].display = "WITHOUT PROSTHESIS"
* group[=].element[=].target.code = #722811001
* group[=].element[=].target.display = "No prosthesis in situ (situation)"
* group[=].element[=].target.equivalence = #equal

ValueSet: VSVFVitalsPrecondition
Title: "VF_VitalsPrecondition"
Description: "FHIR Target ValueSet for Terminology Maps VF_VitalsPrecondition"
* ^experimental = false
* ^name = "VF_VitalsPrecondition"
* include http://snomed.info/sct#722810000 "Prosthesis in situ (finding)"
* include http://snomed.info/sct#722811001 "No prosthesis in situ (situation)"

ValueSet: VSVFVitalsPrecondition-vista
Title: "VF_VitalsPrecondition VistA"
Description: "VistA Source ValueSet for Terminology Maps VF_VitalsPrecondition"
* ^experimental = false
* ^name = "VF_VitalsPrecondition"
* include http://terminology.hl7.org/CodeSystem/VHA#4500992 "WITH CAST OR BRACE"
* include http://terminology.hl7.org/CodeSystem/VHA#4500993 "WITH PROSTHESIS"
* include http://terminology.hl7.org/CodeSystem/VHA#4500994 "WITHOUT PROSTHESIS"