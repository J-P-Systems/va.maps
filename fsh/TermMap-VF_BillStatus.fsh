Instance: CMVFBillStatus
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/CMVFBillStatus"
* name = "VF_BillStatus"
* title = "VF_BillStatus"
* status = #draft
* experimental = false
* description = "Terminology Maps VF_BillStatus"
* sourceCanonical = "http://va.gov/fhir/ValueSet/VSVFBillStatus-vista"
* targetCanonical = "http://va.gov/fhir/ValueSet/VSVFBillStatus"
* group[0].source = "urn:undefined"
* group[=].target = "http://hl7.org/fhir/invoice-status"
* group[=].element[0].code = #108
* group[=].element[=].display = "COLLECTED/CLOSED"
* group[=].element[=].target.code = #balanced
* group[=].element[=].target.display = "balanced"
* group[=].element[=].target.equivalence = #equal
* group[+].source = "urn:undefined"
* group[=].element[0].code = #null
* group[=].element[=].target.equivalence = #unmatched

ValueSet: VSVFBillStatus
Title: "VF_BillStatus"
Description: "FHIR Target ValueSet for Terminology Maps VF_BillStatus"
* ^experimental = false
* ^name = "VF_BillStatus"
* include http://hl7.org/fhir/invoice-status#balanced "balanced"

ValueSet: VSVFBillStatus-vista
Title: "VF_BillStatus VistA"
Description: "VistA Source ValueSet for Terminology Maps VF_BillStatus"
* ^experimental = false
* ^name = "VF_BillStatus"
* include urn:undefined#108 "COLLECTED/CLOSED"
* include urn:undefined#null 