Instance: serviceConnected
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/serviceConnected"
* name = "ServiceConnected"
* title = "serviceConnected"
* status = #active
* experimental = false
* description = "Terminology Maps serviceConnected"
* sourceCanonical = "http://va.gov/fhir/ValueSet/serviceConnected-vista"
* targetCanonical = "http://va.gov/fhir/ValueSet/serviceConnected"
* group[0].source = "urn:undefined"
* group[=].target = "http://va.gov/fhir/vistaDefinedTerms/409.1"
* group[=].element[0].code = #SC
* group[=].element[=].display = "SERVICE CONNECTED"
* group[=].element[=].target.code = #SC
* group[=].element[=].target.display = "Service Connected"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #<else>
* group[=].element[=].target.code = #NSC
* group[=].element[=].target.display = "Not Service Connected"
* group[=].element[=].target.equivalence = #wider

ValueSet: serviceConnected
Title: "serviceConnected FHIR"
Description: "FHIR Target ValueSet for Terminology Maps serviceConnected"
* ^experimental = false
* ^status = #active
* ^name = "ServiceConnected"
* include http://va.gov/fhir/vistaDefinedTerms/409.1#SC "Service Connected"
* include http://va.gov/fhir/vistaDefinedTerms/409.1#NSC "Not Service Connected"

ValueSet: serviceConnected-vista
Title: "serviceConnected VistA"
Description: "VistA Source ValueSet for Terminology Maps serviceConnected"
* ^experimental = false
* ^status = #active
* ^name = "ServiceConnected_VistA"
* include urn:undefined#SC "SERVICE CONNECTED"
* include urn:undefined#<else> 