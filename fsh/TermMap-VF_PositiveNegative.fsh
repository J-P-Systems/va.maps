Instance: CMVFPositiveNegative
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/CMVFPositiveNegative"
* name = "VF_PositiveNegative"
* title = "VF_PositiveNegative"
* status = #draft
* experimental = false
* description = "Terminology Maps VF_PositiveNegative"
* sourceCanonical = "http://va.gov/fhir/ValueSet/VSVFPositiveNegative-vista"
* targetCanonical = "http://va.gov/fhir/ValueSet/VSVFPositiveNegative"
* group[0].source = "urn:undefined"
* group[=].target = "http://snomed.info/sct"
* group[=].element[0].code = #N
* group[=].element[=].display = "NEGATIVE"
* group[=].element[=].target.code = #260385009
* group[=].element[=].target.display = "Negative"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #P
* group[=].element[=].display = "POSITIVE"
* group[=].element[=].target.code = #10828004
* group[=].element[=].target.display = "Positive"
* group[=].element[=].target.equivalence = #equal

ValueSet: VSVFPositiveNegative
Title: "VF_PositiveNegative"
Description: "FHIR Target ValueSet for Terminology Maps VF_PositiveNegative"
* ^experimental = false
* ^name = "VF_PositiveNegative"
* include http://snomed.info/sct#260385009 "Negative"
* include http://snomed.info/sct#10828004 "Positive"

ValueSet: VSVFPositiveNegative-vista
Title: "VF_PositiveNegative VistA"
Description: "VistA Source ValueSet for Terminology Maps VF_PositiveNegative"
* ^experimental = false
* ^name = "VF_PositiveNegative"
* include urn:undefined#N "NEGATIVE"
* include urn:undefined#P "POSITIVE"