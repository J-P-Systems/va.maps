Instance: CMVFARBillStatus
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/CMVFARBillStatus"
* name = "VF_ARBillStatus"
* title = "VF_ARBillStatus"
* status = #draft
* experimental = false
* description = "Terminology Maps VF_ARBillStatus"
* sourceCanonical = "http://va.gov/fhir/ValueSet/VSVFARBillStatus-vista"
* targetCanonical = "http://va.gov/fhir/ValueSet/VSVFARBillStatus"
* group[0].source = "http://va.gov/terminology/vistaDefinedTerms/430.3-.01"
* group[=].target = "http://hl7.org/fhir/invoice-status"
* group[=].element[0].code = #ACTIVE
* group[=].element[=].display = "ACTIVE"
* group[=].element[=].target.code = #issued
* group[=].element[=].target.display = "issued"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #BILL_INCOMPLETE
* group[=].element[=].display = "BILL INCOMPLETE"
* group[=].element[=].target.code = #draft
* group[=].element[=].target.display = "draft"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #CANCELLATION
* group[=].element[=].display = "CANCELLATION"
* group[=].element[=].target.code = #cancelled
* group[=].element[=].target.display = "cancelled"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #CANCELLED_BILL
* group[=].element[=].display = "CANCELLED BILL"
* group[=].element[=].target.code = #cancelled
* group[=].element[=].target.display = "cancelled"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #COLLECTED/CLOSED
* group[=].element[=].display = "COLLECTED/CLOSED"
* group[=].element[=].target.code = #balanced
* group[=].element[=].target.display = "balanced"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #INCOMPLETE
* group[=].element[=].display = "INCOMPLETE"
* group[=].element[=].target.code = #draft
* group[=].element[=].target.display = "draft"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #NEW_BILL
* group[=].element[=].display = "NEW BILL"
* group[=].element[=].target.code = #issued
* group[=].element[=].target.display = "issued"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #OPEN
* group[=].element[=].display = "OPEN"
* group[=].element[=].target.code = #issued
* group[=].element[=].target.display = "issued"
* group[=].element[=].target.equivalence = #equal

ValueSet: VSVFARBillStatus
Title: "VF_ARBillStatus"
Description: "FHIR Target ValueSet for Terminology Maps VF_ARBillStatus"
* ^experimental = false
* ^name = "VF_ARBillStatus"
* include http://hl7.org/fhir/invoice-status#issued "issued"
* include http://hl7.org/fhir/invoice-status#draft "draft"
* include http://hl7.org/fhir/invoice-status#cancelled "cancelled"
* include http://hl7.org/fhir/invoice-status#balanced "balanced"

ValueSet: VSVFARBillStatus-vista
Title: "VF_ARBillStatus VistA"
Description: "VistA Source ValueSet for Terminology Maps VF_ARBillStatus"
* ^experimental = false
* ^name = "VF_ARBillStatus"
* include http://va.gov/terminology/vistaDefinedTerms/430.3-.01#ACTIVE "ACTIVE"
* include http://va.gov/terminology/vistaDefinedTerms/430.3-.01#BILL_INCOMPLETE "BILL INCOMPLETE"
* include http://va.gov/terminology/vistaDefinedTerms/430.3-.01#CANCELLATION "CANCELLATION"
* include http://va.gov/terminology/vistaDefinedTerms/430.3-.01#CANCELLED_BILL "CANCELLED BILL"
* include http://va.gov/terminology/vistaDefinedTerms/430.3-.01#COLLECTED/CLOSED "COLLECTED/CLOSED"
* include http://va.gov/terminology/vistaDefinedTerms/430.3-.01#INCOMPLETE "INCOMPLETE"
* include http://va.gov/terminology/vistaDefinedTerms/430.3-.01#NEW_BILL "NEW BILL"
* include http://va.gov/terminology/vistaDefinedTerms/430.3-.01#OPEN "OPEN"