Instance: CMVFVitalsBodyPosition
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/CMVFVitalsBodyPosition"
* name = "VF_VitalsBodyPosition"
* title = "VF_VitalsBodyPosition"
* status = #draft
* experimental = false
* description = "Terminology Maps VF_VitalsBodyPosition"
* sourceCanonical = "http://va.gov/fhir/ValueSet/VSVFVitalsBodyPosition-vista"
* targetCanonical = "http://va.gov/fhir/ValueSet/VSVFVitalsBodyPosition"
* group[0].source = "http://terminology.hl7.org/CodeSystem/VHA"
* group[=].target = "http://snomed.info/sct"
* group[=].element[0].code = #5335366
* group[=].element[=].display = "LEFT LATERAL RECUMBENT"
* group[=].element[=].target.code = #102536004
* group[=].element[=].target.display = "Left lateral decubitus position (finding)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #4688663
* group[=].element[=].display = "LYING"
* group[=].element[=].target.code = #102538003
* group[=].element[=].target.display = "Recumbent body position (finding)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #5335362
* group[=].element[=].display = "PRONE"
* group[=].element[=].target.code = #1240000
* group[=].element[=].target.display = "Prone body position (finding)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #5335364
* group[=].element[=].display = "RIGHT LATERAL RECUMBENT"
* group[=].element[=].target.code = #102535000
* group[=].element[=].target.display = "Right lateral decubitus position (finding)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #4688682
* group[=].element[=].display = "SEMIFOWLERS"
* group[=].element[=].target.code = #426408003
* group[=].element[=].target.display = "Semi-Fowler's position (finding)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #4688703
* group[=].element[=].display = "SITTING"
* group[=].element[=].target.code = #33586001
* group[=].element[=].target.display = "Sitting position (finding)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #4688707
* group[=].element[=].display = "STANDING"
* group[=].element[=].target.code = #10904000
* group[=].element[=].target.display = "Orthostatic body position (finding)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #4500643
* group[=].element[=].display = "STANDING WEIGHT"
* group[=].element[=].target.code = #10904000
* group[=].element[=].target.display = "Orthostatic body position (finding)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #4688694
* group[=].element[=].display = "TRENDELENBURG"
* group[=].element[=].target.code = #34106002
* group[=].element[=].target.display = "Trendelenburg position (finding)"
* group[=].element[=].target.equivalence = #equal

ValueSet: VSVFVitalsBodyPosition
Title: "VF_VitalsBodyPosition"
Description: "FHIR Target ValueSet for Terminology Maps VF_VitalsBodyPosition"
* ^experimental = false
* ^name = "VF_VitalsBodyPosition"
* include http://snomed.info/sct#102536004 "Left lateral decubitus position (finding)"
* include http://snomed.info/sct#102538003 "Recumbent body position (finding)"
* include http://snomed.info/sct#1240000 "Prone body position (finding)"
* include http://snomed.info/sct#102535000 "Right lateral decubitus position (finding)"
* include http://snomed.info/sct#426408003 "Semi-Fowler's position (finding)"
* include http://snomed.info/sct#33586001 "Sitting position (finding)"
* include http://snomed.info/sct#10904000 "Orthostatic body position (finding)"
* include http://snomed.info/sct#34106002 "Trendelenburg position (finding)"

ValueSet: VSVFVitalsBodyPosition-vista
Title: "VF_VitalsBodyPosition VistA"
Description: "VistA Source ValueSet for Terminology Maps VF_VitalsBodyPosition"
* ^experimental = false
* ^name = "VF_VitalsBodyPosition"
* include http://terminology.hl7.org/CodeSystem/VHA#5335366 "LEFT LATERAL RECUMBENT"
* include http://terminology.hl7.org/CodeSystem/VHA#4688663 "LYING"
* include http://terminology.hl7.org/CodeSystem/VHA#5335362 "PRONE"
* include http://terminology.hl7.org/CodeSystem/VHA#5335364 "RIGHT LATERAL RECUMBENT"
* include http://terminology.hl7.org/CodeSystem/VHA#4688682 "SEMIFOWLERS"
* include http://terminology.hl7.org/CodeSystem/VHA#4688703 "SITTING"
* include http://terminology.hl7.org/CodeSystem/VHA#4688707 "STANDING"
* include http://terminology.hl7.org/CodeSystem/VHA#4500643 "STANDING WEIGHT"
* include http://terminology.hl7.org/CodeSystem/VHA#4688694 "TRENDELENBURG"