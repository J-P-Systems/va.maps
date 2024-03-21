Instance: CMVFPharmacyPersonType
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/CMVFPharmacyPersonType"
* name = "VF_PharmacyPersonType"
* title = "VF_PharmacyPersonType"
* status = #draft
* experimental = false
* description = "Terminology Maps VF_PharmacyPersonType"
* sourceCanonical = "http://va.gov/fhir/ValueSet/VSVFPharmacyPersonType-vista"
* targetCanonical = "http://va.gov/fhir/ValueSet/VSVFPharmacyPersonType"
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
* group[=].element[+].code = #003_–_999
* group[=].element[=].display = "Dependents and Others"
* group[=].element[=].target.code = #other
* group[=].element[=].target.display = "Other"
* group[=].element[=].target.equivalence = #equal

ValueSet: VSVFPharmacyPersonType
Title: "VF_PharmacyPersonType"
Description: "FHIR Target ValueSet for Terminology Maps VF_PharmacyPersonType"
* ^experimental = false
* ^name = "VF_PharmacyPersonType"
* include http://terminology.hl7.org/CodeSystem/subscriber-relationship#self "Self"
* include http://terminology.hl7.org/CodeSystem/subscriber-relationship#spouse "Spouse"
* include http://terminology.hl7.org/CodeSystem/subscriber-relationship#other "Other"

ValueSet: VSVFPharmacyPersonType-vista
Title: "VF_PharmacyPersonType VistA"
Description: "VistA Source ValueSet for Terminology Maps VF_PharmacyPersonType"
* ^experimental = false
* ^name = "VF_PharmacyPersonType"
* include urn:undefined#001 "Cardholder"
* include urn:undefined#002 "Spouse"
* include urn:undefined#003_–_999 "Dependents and Others"