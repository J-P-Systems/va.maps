Instance: CMVFDoseUnits
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/CMVFDoseUnits"
* name = "VF_DoseUnits"
* title = "VF_DoseUnits"
* status = #draft
* experimental = false
* description = "Terminology Maps VF_DoseUnits"
* sourceCanonical = "http://va.gov/fhir/ValueSet/VSVFDoseUnits-vista"
* targetCanonical = "http://va.gov/fhir/ValueSet/VSVFDoseUnits"
* group[0].source = "http://va.gov/terminology/vistaDefinedTerms/52.0113-2"
* group[=].target = "http://unitsofmeasure.org"
* group[=].element[0].code = #MG
* group[=].element[=].target.code = #mg
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #MCG
* group[=].element[=].target.code = #ug
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #MEQ
* group[=].element[=].target.code = #meq
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #UNIT
* group[=].element[=].target.code = #{unit}
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #GM
* group[=].element[=].target.code = #g
* group[=].element[=].target.equivalence = #equal

ValueSet: VSVFDoseUnits
Title: "VF_DoseUnits"
Description: "FHIR Target ValueSet for Terminology Maps VF_DoseUnits"
* ^experimental = false
* ^name = "VF_DoseUnits"
* include http://unitsofmeasure.org#mg 
* include http://unitsofmeasure.org#ug 
* include http://unitsofmeasure.org#meq 
* include http://unitsofmeasure.org#{unit} 
* include http://unitsofmeasure.org#g 

ValueSet: VSVFDoseUnits-vista
Title: "VF_DoseUnits VistA"
Description: "VistA Source ValueSet for Terminology Maps VF_DoseUnits"
* ^experimental = false
* ^name = "VF_DoseUnits"
* include http://va.gov/terminology/vistaDefinedTerms/52.0113-2#MG 
* include http://va.gov/terminology/vistaDefinedTerms/52.0113-2#MCG 
* include http://va.gov/terminology/vistaDefinedTerms/52.0113-2#MEQ 
* include http://va.gov/terminology/vistaDefinedTerms/52.0113-2#UNIT 
* include http://va.gov/terminology/vistaDefinedTerms/52.0113-2#GM 