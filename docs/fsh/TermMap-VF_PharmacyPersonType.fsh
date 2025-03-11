Instance: VF-PharmacyPersonType
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/VF-PharmacyPersonType"
* name = "VF_PharmacyPersonType"
* title = "VF_PharmacyPersonType"
* status = #active
* experimental = false
* description = "Terminology Maps VF_PharmacyPersonType"
* sourceCanonical = "http://va.gov/fhir/ValueSet/PharmacyPersonType-vista"
* targetCanonical = "http://va.gov/fhir/ValueSet/PharmacyPersonType"
* group[0].source = "http://va.gov/terminology/vistaDefinedTerms/50.65-.02"
* group[=].target = "http://terminology.hl7.org/CodeSystem/subscriber-relationship"
* group[=].element[0].code = #001
* group[=].element[=].display = "Cardholder"
* group[=].element[=].target.code = #self
* group[=].element[=].target.display = "Self"
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].target.comment = "deprecated"
* group[=].element[+].code = #002
* group[=].element[=].display = "Spouse"
* group[=].element[=].target.code = #spouse
* group[=].element[=].target.display = "Spouse"
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].target.comment = "deprecated"
* group[=].element[+].code = #003_-_999
* group[=].element[=].display = "Dependents and Others"
* group[=].element[=].target.code = #other
* group[=].element[=].target.display = "Other"
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].target.comment = "deprecated"

ValueSet: PharmacyPersonType
Title: "PharmacyPersonType FHIR"
Description: "FHIR Target ValueSet for Terminology Maps [VF_PharmacyPersonType](ConceptMap-VF-PharmacyPersonType.html)"
* ^experimental = false
* ^status = #active
* ^name = "PharmacyPersonType"
* include http://terminology.hl7.org/CodeSystem/subscriber-relationship#self "Self"
* include http://terminology.hl7.org/CodeSystem/subscriber-relationship#spouse "Spouse"
* include http://terminology.hl7.org/CodeSystem/subscriber-relationship#other "Other"

ValueSet: PharmacyPersonType-vista
Title: "PharmacyPersonType VistA"
Description: "VistA Source ValueSet for Terminology Maps [VF_PharmacyPersonType](ConceptMap-VF-PharmacyPersonType.html)"
* ^experimental = false
* ^status = #active
* ^name = "PharmacyPersonType_VistA"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#001 "Cardholder"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#002 "Spouse"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#003_-_999 "Dependents and Others"