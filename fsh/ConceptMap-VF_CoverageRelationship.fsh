Instance: CMVFCoverageRelationship
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/CMVFCoverageRelationship"
* name = "VF_CoverageRelationship"
* title = "VF_CoverageRelationship"
* status = #draft
* experimental = true
* description = "Terminology Maps VF_CoverageRelationship"
* sourceCanonical = "http://va.gov/fhir/ValueSet/VSVFCoverageRelationship"
* group[0].source = "urn:undefined"
* group[=].target = "http://terminology.hl7.org/CodeSystem/subscriber-relationship"
* group[=].element[0].code = #HIPAA_18_SELF
* group[=].element[=].target.code = #self
* group[=].element[=].target.display = "Self"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #HIPAA_01_SPOUSE
* group[=].element[=].target.code = #spouse
* group[=].element[=].target.display = "Spouse"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #HIPAA_19_CHILD
* group[=].element[=].target.code = #child
* group[=].element[=].target.display = "Child"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #HIPAA_20_EMPLOYEE
* group[=].element[=].target.code = #other
* group[=].element[=].target.display = "Other"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #HIPAA_39_ORGAN_DONOR
* group[=].element[=].target.code = #other
* group[=].element[=].target.display = "Other"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #HIPAA_41_INJURED_PLAINTIFF
* group[=].element[=].target.code = #injured
* group[=].element[=].target.display = "Injured Party"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #HIPAA_32_MOTHER
* group[=].element[=].target.code = #parent
* group[=].element[=].target.display = "Parent"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #HIPAA_33_FATHER
* group[=].element[=].target.code = #parent
* group[=].element[=].target.display = "Parent"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #HIPAA_29_SIGNIFICANT_OTHER
* group[=].element[=].target.code = #other
* group[=].element[=].target.display = "Other"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #HIPAA_53_LIFE_PARTNER
* group[=].element[=].target.code = #common
* group[=].element[=].target.display = "Common Law Spouse"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #HIPAA_G8_OTHER_RELATIONSHIP
* group[=].element[=].target.code = #other
* group[=].element[=].target.display = "Other"
* group[=].element[=].target.equivalence = #equivalent