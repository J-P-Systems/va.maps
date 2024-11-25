Instance: PharmacyPersonType
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/PharmacyPersonType"
* name = "PharmacyPersonType"
* title = "PharmacyPersonType"
* status = #active
* experimental = false
* description = "Terminology Maps PharmacyPersonType "
* sourceCanonical = "http://va.gov/fhir/ValueSet/PharmacyPersonType-vista"
* targetCanonical = "http://va.gov/fhir/ValueSet/PharmacyPersonType"
* group[0].source = "urn:undefined"
* group[=].target = "http://terminology.hl7.org/CodeSystem/subscriber-relationship"
* group[=].element[0].code = #001
* group[=].element[=].display = "Cardholder"
* group[=].element[=].target.code = #self
* group[=].element[=].target.display = "Self"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #002
* group[=].element[=].display = "Spouse"
* group[=].element[=].target.code = #spouse
* group[=].element[=].target.display = "Spouse"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #003_-_999
* group[=].element[=].display = "Dependents and Others"
* group[=].element[=].target.code = #other
* group[=].element[=].target.display = "Other"
* group[=].element[=].target.equivalence = #equal

ValueSet: PharmacyPersonType
Title: "PharmacyPersonType FHIR"
Description: "FHIR Target ValueSet for Terminology Maps PharmacyPersonType"
* ^experimental = false
* ^status = #active
* ^name = "PharmacyPersonType"
* include http://terminology.hl7.org/CodeSystem/subscriber-relationship#self "Self"
* include http://terminology.hl7.org/CodeSystem/subscriber-relationship#spouse "Spouse"
* include http://terminology.hl7.org/CodeSystem/subscriber-relationship#other "Other"

ValueSet: PharmacyPersonType-vista
Title: "PharmacyPersonType VistA"
Description: "VistA Source ValueSet for Terminology Maps PharmacyPersonType"
* ^experimental = false
* ^status = #active
* ^name = "PharmacyPersonType_VistA"
* include urn:undefined#001 "Cardholder"
* include urn:undefined#002 "Spouse"
* include urn:undefined#003_-_999 "Dependents and Others"