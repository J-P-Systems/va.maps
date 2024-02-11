Instance: CMVFPharmacyPersonType
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/CMVFPharmacyPersonType"
* name = "VF_PharmacyPersonType"
* title = "VF_PharmacyPersonType"
* status = #active
* experimental = true
* description = "Terminology Maps VF_PharmacyPersonType"
* sourceCanonical = "http://va.gov/fhir/ValueSet/VSVFPharmacyPersonType"
* group[0].source = "undefined"
* group[=].target = "http://terminology.hl7.org/CodeSystem/subscriber-relationship"
* group[=].element[0].code = #001_=_Cardholder
* group[=].element[=].target.code = #self
* group[=].element[=].target.display = "Self"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #002_=_Spouse
* group[=].element[=].target.code = #spouse
* group[=].element[=].target.display = "Spouse"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #003_-_999_=_Dependents_and_Others
* group[=].element[=].target.code = #other
* group[=].element[=].target.display = "Other"
* group[=].element[=].target.equivalence = #equivalent