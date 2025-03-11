Instance: VF-DoseUnits
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/VF-DoseUnits"
* name = "VF_DoseUnits"
* title = "VF_DoseUnits"
* status = #active
* experimental = false
* description = "Terminology Maps VF_DoseUnits"
* sourceCanonical = "http://va.gov/fhir/ValueSet/DoseUnits-vista"
* targetCanonical = "http://va.gov/fhir/ValueSet/DoseUnits"
* group[0].source = "http://va.gov/terminology/vistaDefinedTerms/50.65-.02"
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

ValueSet: DoseUnits
Title: "DoseUnits FHIR"
Description: "FHIR Target ValueSet for Terminology Maps [VF_DoseUnits](ConceptMap-VF-DoseUnits.html)"
* ^experimental = false
* ^status = #active
* ^name = "DoseUnits"
* include http://unitsofmeasure.org#mg 
* include http://unitsofmeasure.org#ug 
* include http://unitsofmeasure.org#meq 
* include http://unitsofmeasure.org#{unit} 
* include http://unitsofmeasure.org#g 

ValueSet: DoseUnits-vista
Title: "DoseUnits VistA"
Description: "VistA Source ValueSet for Terminology Maps [VF_DoseUnits](ConceptMap-VF-DoseUnits.html)"
* ^experimental = false
* ^status = #active
* ^name = "DoseUnits_VistA"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#MG 
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#MCG 
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#MEQ 
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#UNIT 
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#GM 