Instance: CMVFPharmacyPersonType
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/CMVFPharmacyPersonType"
* name = "VF_PharmacyPersonType"
* title = "VF_PharmacyPersonType"
* status = #draft
* experimental = true
* description = "Terminology Maps VF_PharmacyPersonType"
* sourceCanonical = "http://va.gov/fhir/ValueSet/VSVFPharmacyPersonType"
* group[0].source = "urn:undefined"
* group[=].target = "http://terminology.hl7.org/CodeSystem/subscriber-relationship"
* group[=].element[0].code = #001
* group[=].element[=].display = "Cardholder"
* group[=].element[=].target.code = #self
* group[=].element[=].target.display = "Self"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #002
* group[=].element[=].display = "Spouse"
* group[=].element[=].target.code = #spouse
* group[=].element[=].target.display = "Spouse"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #003_–_999
* group[=].element[=].display = "Dependents and Others"
* group[=].element[=].target.code = #other
* group[=].element[=].target.display = "Other"
* group[=].element[=].target.equivalence = #equivalent