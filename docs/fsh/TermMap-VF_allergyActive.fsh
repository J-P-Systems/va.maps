Instance: CMVFallergyActive
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/CMVFallergyActive"
* name = "VF_allergyActive"
* title = "VF_allergyActive"
* status = #draft
* experimental = false
* description = "Terminology Maps VF_allergyActive"
* sourceCanonical = "http://va.gov/fhir/ValueSet/VSVFallergyActive-vista"
* targetCanonical = "http://va.gov/fhir/ValueSet/VSVFallergyActive"
* group[0].source = "http://va.gov/terminology/vistaDefinedTerms/120.8-22"
* group[=].target = "http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical"
* group[=].element[0].code = #<null>
* group[=].element[=].display = "ENTERED IN ERROR - NULL"
* group[=].element[=].target.code = #active
* group[=].element[=].target.display = "active"
* group[=].element[=].target.equivalence = #wider

ValueSet: VSVFallergyActive
Title: "VF_allergyActive"
Description: "FHIR Target ValueSet for Terminology Maps VF_allergyActive"
* ^experimental = false
* ^name = "VF_allergyActive"
* include http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical#active "active"

ValueSet: VSVFallergyActive-vista
Title: "VF_allergyActive VistA"
Description: "VistA Source ValueSet for Terminology Maps VF_allergyActive"
* ^experimental = false
* ^name = "VF_allergyActive"
* include http://va.gov/terminology/vistaDefinedTerms/120.8-22#<null> "ENTERED IN ERROR - NULL"