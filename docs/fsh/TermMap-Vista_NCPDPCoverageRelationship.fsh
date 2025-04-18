Instance: Vista-NCPDPCoverageRelationship
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/Vista-NCPDPCoverageRelationship"
* name = "Vista_NCPDPCoverageRelationship"
* title = "Vista_NCPDPCoverageRelationship"
* status = #active
* experimental = false
* description = "Terminology Maps Vista_NCPDPCoverageRelationship"
* sourceCanonical = "http://va.gov/fhir/ValueSet/VistaNCPDPCoverageRelationship-vista"
* targetCanonical = "http://va.gov/fhir/ValueSet/VistaNCPDPCoverageRelationship"
* group[0].source = "http://va.gov/terminology/vistaDefinedTerms/50.65-.02"
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

ValueSet: VistaNCPDPCoverageRelationship
Title: "VistaNCPDPCoverageRelationship FHIR"
Description: "FHIR Target ValueSet for Terminology Maps [Vista_NCPDPCoverageRelationship](ConceptMap-Vista-NCPDPCoverageRelationship.html)"
* ^experimental = false
* ^status = #active
* ^name = "VistaNCPDPCoverageRelationship"
* include urn:undefined#self 
* include urn:undefined#spouse 
* include urn:undefined#child 
* include urn:undefined#other 

ValueSet: VistaNCPDPCoverageRelationship-vista
Title: "VistaNCPDPCoverageRelationship VistA"
Description: "VistA Source ValueSet for Terminology Maps [Vista_NCPDPCoverageRelationship](ConceptMap-Vista-NCPDPCoverageRelationship.html)"
* ^experimental = false
* ^status = #active
* ^name = "VistaNCPDPCoverageRelationship_VistA"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#not_specified 
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#cardholder 
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#spouse 
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#child 
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#other 