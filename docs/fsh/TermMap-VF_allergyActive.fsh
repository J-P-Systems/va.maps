Instance: allergyActive
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/allergyActive"
* name = "AllergyActive"
* title = "allergyActive"
* status = #active
* experimental = false
* description = "Terminology Maps allergyActive"
* sourceCanonical = "http://va.gov/fhir/ValueSet/allergyActive-vista"
* targetCanonical = "http://va.gov/fhir/ValueSet/allergyActive"
* group[0].source = "http://va.gov/terminology/vistaDefinedTerms/120.8-22"
* group[=].target = "http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical"
* group[=].element[0].code = #<null>
* group[=].element[=].display = "ENTERED IN ERROR - NULL"
* group[=].element[=].target.code = #active
* group[=].element[=].target.display = "active"
* group[=].element[=].target.equivalence = #wider

ValueSet: allergyActive
Title: "allergyActive FHIR"
Description: "FHIR Target ValueSet for Terminology Maps allergyActive"
* ^experimental = false
* ^status = #active
* ^name = "AllergyActive"
* include http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical#active "active"

ValueSet: allergyActive-vista
Title: "allergyActive VistA"
Description: "VistA Source ValueSet for Terminology Maps allergyActive"
* ^experimental = false
* ^status = #active
* ^name = "AllergyActive_VistA"
* include http://va.gov/terminology/vistaDefinedTerms/120.8-22#<null> "ENTERED IN ERROR - NULL"