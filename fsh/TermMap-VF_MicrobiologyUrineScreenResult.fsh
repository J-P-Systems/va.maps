Instance: CMVFMicrobiologyUrineScreenResult
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/CMVFMicrobiologyUrineScreenResult"
* name = "VF_MicrobiologyUrineScreenResult"
* title = "VF_MicrobiologyUrineScreenResult"
* status = #draft
* experimental = false
* description = "Terminology Maps VF_MicrobiologyUrineScreenResult"
* sourceCanonical = "http://va.gov/fhir/ValueSet/VSVFMicrobiologyUrineScreenResult-vista"
* targetCanonical = "http://va.gov/fhir/ValueSet/VSVFMicrobiologyUrineScreenResult"
* group[0].source = "http://va.gov/terminology/vistaDefinedTerms/63.05-11.57"
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
* group[=].element[+].code = #NEGATIVE_BY_UA_IRIS_SCREEN,CULTURE_NOT_DONE
* group[=].element[=].target.code = #260385009
* group[=].element[=].target.display = "Negative"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #POSITIVE_BY_UA_IRIS_SCREEN,CULTURE_DONE
* group[=].element[=].target.code = #10828004
* group[=].element[=].target.display = "Positive"
* group[=].element[=].target.equivalence = #equal

ValueSet: VSVFMicrobiologyUrineScreenResult
Title: "VF_MicrobiologyUrineScreenResult"
Description: "FHIR Target ValueSet for Terminology Maps VF_MicrobiologyUrineScreenResult"
* ^experimental = false
* ^name = "VF_MicrobiologyUrineScreenResult"
* include http://snomed.info/sct#260385009 "Negative"
* include http://snomed.info/sct#10828004 "Positive"

ValueSet: VSVFMicrobiologyUrineScreenResult-vista
Title: "VF_MicrobiologyUrineScreenResult VistA"
Description: "VistA Source ValueSet for Terminology Maps VF_MicrobiologyUrineScreenResult"
* ^experimental = false
* ^name = "VF_MicrobiologyUrineScreenResult"
* include http://va.gov/terminology/vistaDefinedTerms/63.05-11.57#N "NEGATIVE"
* include http://va.gov/terminology/vistaDefinedTerms/63.05-11.57#P "POSITIVE"
* include http://va.gov/terminology/vistaDefinedTerms/63.05-11.57#NEGATIVE_BY_UA_IRIS_SCREEN,CULTURE_NOT_DONE 
* include http://va.gov/terminology/vistaDefinedTerms/63.05-11.57#POSITIVE_BY_UA_IRIS_SCREEN,CULTURE_DONE 