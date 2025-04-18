Instance: VF-MaritalStatus
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/VF-MaritalStatus"
* name = "VF_MaritalStatus"
* title = "VF_MaritalStatus"
* status = #active
* experimental = false
* description = "Terminology Maps VF_MaritalStatus"
* sourceCanonical = "http://va.gov/fhir/ValueSet/MaritalStatus-vista"
* targetCanonical = "http://va.gov/fhir/ValueSet/MaritalStatus"
* group[0].source = "http://va.gov/terminology/vistaDefinedElements/2-.05"
* group[=].target = "http://terminology.hl7.org/CodeSystem/v3-MaritalStatus"
* group[=].element[0].code = #DIVORCED
* group[=].element[=].display = "DIVORCED"
* group[=].element[=].target.code = #D
* group[=].element[=].target.display = "Divorced"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #MARRIED
* group[=].element[=].display = "MARRIED"
* group[=].element[=].target.code = #M
* group[=].element[=].target.display = "Married"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #NEVER_MARRIED
* group[=].element[=].display = "NEVER MARRIED"
* group[=].element[=].target.code = #S
* group[=].element[=].target.display = "Never Married"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #SEPARATED
* group[=].element[=].display = "SEPARATED"
* group[=].element[=].target.code = #L
* group[=].element[=].target.display = "Legally Separated"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #WIDOWED
* group[=].element[=].display = "WIDOWED"
* group[=].element[=].target.code = #W
* group[=].element[=].target.display = "Widowed"
* group[=].element[=].target.equivalence = #equal
* group[+].source = "http://va.gov/terminology/vistaDefinedElements/2-.05"
* group[=].target = "http://terminology.hl7.org/CodeSystem/v3-NullFlavor"
* group[=].element[0].code = #UNKNOWN
* group[=].element[=].display = "UNKNOWN"
* group[=].element[=].target.code = #UNK
* group[=].element[=].target.display = "unknown"
* group[=].element[=].target.equivalence = #equal

ValueSet: MaritalStatus
Title: "MaritalStatus FHIR"
Description: "FHIR Target ValueSet for Terminology Maps [VF_MaritalStatus](ConceptMap-VF-MaritalStatus.html)"
* ^experimental = false
* ^status = #active
* ^name = "MaritalStatus"
* include http://terminology.hl7.org/CodeSystem/v3-MaritalStatus#D "Divorced"
* include http://terminology.hl7.org/CodeSystem/v3-MaritalStatus#M "Married"
* include http://terminology.hl7.org/CodeSystem/v3-MaritalStatus#S "Never Married"
* include http://terminology.hl7.org/CodeSystem/v3-MaritalStatus#L "Legally Separated"
* include http://terminology.hl7.org/CodeSystem/v3-MaritalStatus#W "Widowed"
* include http://terminology.hl7.org/CodeSystem/v3-NullFlavor#UNK "unknown"

ValueSet: MaritalStatus-vista
Title: "MaritalStatus VistA"
Description: "VistA Source ValueSet for Terminology Maps [VF_MaritalStatus](ConceptMap-VF-MaritalStatus.html)"
* ^experimental = false
* ^status = #active
* ^name = "MaritalStatus_VistA"
* include http://va.gov/terminology/vistaDefinedElements/2-.05#DIVORCED "DIVORCED"
* include http://va.gov/terminology/vistaDefinedElements/2-.05#MARRIED "MARRIED"
* include http://va.gov/terminology/vistaDefinedElements/2-.05#NEVER_MARRIED "NEVER MARRIED"
* include http://va.gov/terminology/vistaDefinedElements/2-.05#SEPARATED "SEPARATED"
* include http://va.gov/terminology/vistaDefinedElements/2-.05#WIDOWED "WIDOWED"
* include http://va.gov/terminology/vistaDefinedElements/2-.05#UNKNOWN "UNKNOWN"