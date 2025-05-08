Instance: VF-ARBillStatus
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/VF-ARBillStatus"
* name = "VF_ARBillStatus"
* title = "VF_ARBillStatus"
* status = #active
* experimental = false
* description = "Terminology Maps VF_ARBillStatus"
* sourceCanonical = "http://va.gov/fhir/ValueSet/ARBillStatus-vista"
* targetCanonical = "http://va.gov/fhir/ValueSet/ARBillStatus"
* group[0].source = "http://va.gov/terminology/vistaDefinedTerms/50.65-.02"
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
* group[=].element[+].code = #28
* group[=].element[=].display = "OLD BILL"
* group[=].element[=].target.code = #issued
* group[=].element[=].target.display = "issued"
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].target.comment = "Added 5/1/2025. The mapping isn't the best but is necessary because status is required in FHIR. Also added an extension on Invoice.status to preserve the original VistA value. Not clear how or IF the Financial Management would use these values. Will also submit a Jira to add additional status values for refunded and write-off."
* group[=].element[+].code = #20
* group[=].element[=].display = "PENDING APPROVAL"
* group[=].element[=].target.code = #draft
* group[=].element[=].target.display = "draft"
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].target.comment = "Added 5/1/2025. The mapping isn't the best but is necessary because status is required in FHIR. Also added an extension on Invoice.status to preserve the original VistA value. Not clear how or IF the Financial Management would use these values. Will also submit a Jira to add additional status values for refunded and write-off."
* group[=].element[+].code = #44
* group[=].element[=].display = "REFUND REVIEW"
* group[=].element[=].target.code = #issued
* group[=].element[=].target.display = "issued"
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].target.comment = "Added 5/1/2025. The mapping isn't the best but is necessary because status is required in FHIR. Also added an extension on Invoice.status to preserve the original VistA value. Not clear how or IF the Financial Management would use these values. Will also submit a Jira to add additional status values for refunded and write-off."
* group[=].element[+].code = #41
* group[=].element[=].display = "REFUNDED"
* group[=].element[=].target.code = #balanced
* group[=].element[=].target.display = "balanced"
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].target.comment = "Added 5/1/2025. The mapping isn't the best but is necessary because status is required in FHIR. Also added an extension on Invoice.status to preserve the original VistA value. Not clear how or IF the Financial Management would use these values. Will also submit a Jira to add additional status values for refunded and write-off."
* group[=].element[+].code = #31
* group[=].element[=].display = "RETURNED FROM AR (NEW)"
* group[=].element[=].target.code = #issued
* group[=].element[=].target.display = "issued"
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].target.comment = "Added 5/1/2025. The mapping isn't the best but is necessary because status is required in FHIR. Also added an extension on Invoice.status to preserve the original VistA value. Not clear how or IF the Financial Management would use these values. Will also submit a Jira to add additional status values for refunded and write-off."
* group[=].element[+].code = #40
* group[=].element[=].display = "SUSPENDED"
* group[=].element[=].target.code = #cancelled
* group[=].element[=].target.display = "cancelled"
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].target.comment = "Added 5/1/2025. The mapping isn't the best but is necessary because status is required in FHIR. Also added an extension on Invoice.status to preserve the original VistA value. Not clear how or IF the Financial Management would use these values. Will also submit a Jira to add additional status values for refunded and write-off."
* group[=].element[+].code = #23
* group[=].element[=].display = "WRITE-OFF"
* group[=].element[=].target.code = #balanced
* group[=].element[=].target.display = "balanced"
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].target.comment = "Added 5/1/2025. The mapping isn't the best but is necessary because status is required in FHIR. Also added an extension on Invoice.status to preserve the original VistA value. Not clear how or IF the Financial Management would use these values. Will also submit a Jira to add additional status values for refunded and write-off."

ValueSet: ARBillStatus
Title: "ARBillStatus FHIR"
Description: "FHIR Target ValueSet for Terminology Maps [VF_ARBillStatus](ConceptMap-VF-ARBillStatus.html)"
* ^experimental = false
* ^status = #active
* ^name = "ARBillStatus"
* include http://hl7.org/fhir/invoice-status#issued "issued"
* include http://hl7.org/fhir/invoice-status#draft "draft"
* include http://hl7.org/fhir/invoice-status#cancelled "cancelled"
* include http://hl7.org/fhir/invoice-status#balanced "balanced"

ValueSet: ARBillStatus-vista
Title: "ARBillStatus VistA"
Description: "VistA Source ValueSet for Terminology Maps [VF_ARBillStatus](ConceptMap-VF-ARBillStatus.html)"
* ^experimental = false
* ^status = #active
* ^name = "ARBillStatus_VistA"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#ACTIVE "ACTIVE"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#BILL_INCOMPLETE "BILL INCOMPLETE"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#CANCELLATION "CANCELLATION"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#CANCELLED_BILL "CANCELLED BILL"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#COLLECTED/CLOSED "COLLECTED/CLOSED"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#INCOMPLETE "INCOMPLETE"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#NEW_BILL "NEW BILL"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#OPEN "OPEN"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#28 "OLD BILL"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#20 "PENDING APPROVAL"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#44 "REFUND REVIEW"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#41 "REFUNDED"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#31 "RETURNED FROM AR (NEW)"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#40 "SUSPENDED"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#23 "WRITE-OFF"