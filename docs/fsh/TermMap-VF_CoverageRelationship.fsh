Instance: VF-CoverageRelationship
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/VF-CoverageRelationship"
* name = "VF_CoverageRelationship"
* title = "VF_CoverageRelationship"
* status = #active
* experimental = false
* description = "Terminology Maps VF_CoverageRelationship"
* sourceCanonical = "http://va.gov/fhir/ValueSet/CoverageRelationship-vista"
* targetCanonical = "http://va.gov/fhir/ValueSet/CoverageRelationship"
* group[0].source = "http://va.gov/terminology/vistaDefinedTerms/50.65-.02"
* group[=].target = "http://terminology.hl7.org/CodeSystem/subscriber-relationship"
* group[=].element[0].code = #HIPAA_18_SELF
* group[=].element[=].target.code = #self
* group[=].element[=].target.display = "Self"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #HIPAA_01_SPOUSE
* group[=].element[=].target.code = #spouse
* group[=].element[=].target.display = "Spouse"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #HIPAA_19_CHILD
* group[=].element[=].target.code = #child
* group[=].element[=].target.display = "Child"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #HIPAA_20_EMPLOYEE
* group[=].element[=].target.code = #other
* group[=].element[=].target.display = "Other"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #HIPAA_39_ORGAN_DONOR
* group[=].element[=].target.code = #other
* group[=].element[=].target.display = "Other"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #HIPAA_41_INJURED_PLAINTIFF
* group[=].element[=].target.code = #injured
* group[=].element[=].target.display = "Injured Party"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #HIPAA_32_MOTHER
* group[=].element[=].target.code = #parent
* group[=].element[=].target.display = "Parent"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #HIPAA_33_FATHER
* group[=].element[=].target.code = #parent
* group[=].element[=].target.display = "Parent"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #HIPAA_29_SIGNIFICANT_OTHER
* group[=].element[=].target.code = #other
* group[=].element[=].target.display = "Other"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #HIPAA_53_LIFE_PARTNER
* group[=].element[=].target.code = #common
* group[=].element[=].target.display = "Common Law Spouse"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #HIPAA_G8_OTHER_RELATIONSHIP
* group[=].element[=].target.code = #other
* group[=].element[=].target.display = "Other"
* group[=].element[=].target.equivalence = #equal

ValueSet: CoverageRelationship
Title: "CoverageRelationship FHIR"
Description: "FHIR Target ValueSet for Terminology Maps [VF_CoverageRelationship](ConceptMap-VF-CoverageRelationship.html)"
* ^experimental = false
* ^status = #active
* ^name = "CoverageRelationship"
* include http://terminology.hl7.org/CodeSystem/subscriber-relationship#self "Self"
* include http://terminology.hl7.org/CodeSystem/subscriber-relationship#spouse "Spouse"
* include http://terminology.hl7.org/CodeSystem/subscriber-relationship#child "Child"
* include http://terminology.hl7.org/CodeSystem/subscriber-relationship#other "Other"
* include http://terminology.hl7.org/CodeSystem/subscriber-relationship#injured "Injured Party"
* include http://terminology.hl7.org/CodeSystem/subscriber-relationship#parent "Parent"
* include http://terminology.hl7.org/CodeSystem/subscriber-relationship#common "Common Law Spouse"

ValueSet: CoverageRelationship-vista
Title: "CoverageRelationship VistA"
Description: "VistA Source ValueSet for Terminology Maps [VF_CoverageRelationship](ConceptMap-VF-CoverageRelationship.html)"
* ^experimental = false
* ^status = #active
* ^name = "CoverageRelationship_VistA"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#HIPAA_18_SELF 
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#HIPAA_01_SPOUSE 
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#HIPAA_19_CHILD 
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#HIPAA_20_EMPLOYEE 
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#HIPAA_39_ORGAN_DONOR 
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#HIPAA_41_INJURED_PLAINTIFF 
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#HIPAA_32_MOTHER 
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#HIPAA_33_FATHER 
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#HIPAA_29_SIGNIFICANT_OTHER 
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#HIPAA_53_LIFE_PARTNER 
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#HIPAA_G8_OTHER_RELATIONSHIP 