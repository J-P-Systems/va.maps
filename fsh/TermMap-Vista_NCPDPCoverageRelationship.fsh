Instance: CMVistaNCPDPCoverageRelationship
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/CMVistaNCPDPCoverageRelationship"
* name = "Vista_NCPDPCoverageRelationship"
* title = "Vista_NCPDPCoverageRelationship"
* status = #draft
* experimental = false
* description = "Terminology Maps Vista_NCPDPCoverageRelationship"
* sourceCanonical = "http://va.gov/fhir/ValueSet/VSVistaNCPDPCoverageRelationship-vista"
* targetCanonical = "http://va.gov/fhir/ValueSet/VSVistaNCPDPCoverageRelationship"
* group[0].source = "urn:undefined"
* group[=].element[0].code = #not_specified
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[+].code = #cardholder
* group[=].element[=].target.code = #self
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #spouse
* group[=].element[=].target.code = #spouse
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #child
* group[=].element[=].target.code = #child
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #other
* group[=].element[=].target.code = #other
* group[=].element[=].target.equivalence = #equal

ValueSet: VSVistaNCPDPCoverageRelationship
Title: "Vista_NCPDPCoverageRelationship"
Description: "FHIR Target ValueSet for Terminology Maps Vista_NCPDPCoverageRelationship"
* ^experimental = false
* ^name = "Vista_NCPDPCoverageRelationship"
* include urn:undefined#self 
* include urn:undefined#spouse 
* include urn:undefined#child 
* include urn:undefined#other 

ValueSet: VSVistaNCPDPCoverageRelationship-vista
Title: "Vista_NCPDPCoverageRelationship VistA"
Description: "VistA Source ValueSet for Terminology Maps Vista_NCPDPCoverageRelationship"
* ^experimental = false
* ^name = "Vista_NCPDPCoverageRelationship"
* include urn:undefined#not_specified 
* include urn:undefined#cardholder 
* include urn:undefined#spouse 
* include urn:undefined#child 
* include urn:undefined#other 