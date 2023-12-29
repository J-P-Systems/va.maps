Instance: CMVFCoverageRelationship
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/CMVFCoverageRelationship"
* name = "VF_CoverageRelationship"
* title = "VF_CoverageRelationship"
* status = #active
* experimental = true
* description = "Terminology Maps VF_CoverageRelationship"
* sourceCanonical = "http://va.gov/fhir/ValueSet/VSVFCoverageRelationship"
* group[0].source = "undefined"
* group[=].target = "http://terminology.hl7.org/CodeSystem/subscriber-relationship"
* group[=].element[0].code = #"HIPAA 18 SELF"
* group[=].element[=].target.code = #self
* group[=].element[=].target.display = "Self"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #"HIPAA 01 SPOUSE"
* group[=].element[=].target.code = #spouse
* group[=].element[=].target.display = "Spouse"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #"HIPAA 19 CHILD"
* group[=].element[=].target.code = #child
* group[=].element[=].target.display = "Child"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #"HIPAA 20 EMPLOYEE"
* group[=].element[=].target.code = #other
* group[=].element[=].target.display = "Other"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #"HIPAA 39 ORGAN DONOR"
* group[=].element[=].target.code = #other
* group[=].element[=].target.display = "Other"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #"HIPAA 41 INJURED PLAINTIFF"
* group[=].element[=].target.code = #injured
* group[=].element[=].target.display = "Injured Party"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #"HIPAA 32 MOTHER"
* group[=].element[=].target.code = #parent
* group[=].element[=].target.display = "Parent"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #"HIPAA 33 FATHER"
* group[=].element[=].target.code = #parent
* group[=].element[=].target.display = "Parent"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #"HIPAA 29 SIGNIFICANT OTHER"
* group[=].element[=].target.code = #other
* group[=].element[=].target.display = "Other"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #"HIPAA 53 LIFE PARTNER"
* group[=].element[=].target.code = #common
* group[=].element[=].target.display = "Common Law Spouse"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #"HIPAA G8 OTHER RELATIONSHIP"
* group[=].element[=].target.code = #other
* group[=].element[=].target.display = "Other"
* group[=].element[=].target.equivalence = #equivalent