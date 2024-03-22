Instance: CMVFOrganizationIdentifierType
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/CMVFOrganizationIdentifierType"
* name = "VF_OrganizationIdentifierType"
* title = "VF_OrganizationIdentifierType"
* status = #draft
* experimental = false
* description = "Terminology Maps VF_OrganizationIdentifierType"
* sourceCanonical = "http://va.gov/fhir/ValueSet/VSVFOrganizationIdentifierType-vista"
* targetCanonical = "http://va.gov/fhir/ValueSet/VSVFOrganizationIdentifierType"
* group[0].source = "http://va.gov/Terminology/VistADefinedTerms/36-6.01"
* group[=].target = "urn:oid:2.16.840.1.113883.3.8901.3.1.36.68001"
* group[=].element[0].code = #2U
* group[=].element[=].display = "PAYER ID #"
* group[=].element[=].target.code = #INSTPAYER
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #FY
* group[=].element[=].display = "CLAIM OFFICE #"
* group[=].element[=].target.code = #INSTOFFICE
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #NF
* group[=].element[=].display = "NAIC CODE"
* group[=].element[=].target.code = #INSTNAIC
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #TJ
* group[=].element[=].display = "FED TAXPAYER #;"
* group[=].element[=].target.code = #INSTTAXPAYER
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #2U
* group[=].element[=].display = "PAYER ID #"
* group[=].element[=].target.code = #PROFPAYER
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #FY
* group[=].element[=].display = "CLAIM OFFICE #"
* group[=].element[=].target.code = #PROFOFFICE
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #NF
* group[=].element[=].display = "NAIC CODE"
* group[=].element[=].target.code = #PROFNAIC
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #TJ
* group[=].element[=].display = "FED TAXPAYER #"
* group[=].element[=].target.code = #PROFTAXPAYER
* group[=].element[=].target.equivalence = #equal

ValueSet: VSVFOrganizationIdentifierType
Title: "VF_OrganizationIdentifierType"
Description: "FHIR Target ValueSet for Terminology Maps VF_OrganizationIdentifierType"
* ^experimental = false
* ^name = "VF_OrganizationIdentifierType"
* include urn:oid:2.16.840.1.113883.3.8901.3.1.36.68001#INSTPAYER 
* include urn:oid:2.16.840.1.113883.3.8901.3.1.36.68001#INSTOFFICE 
* include urn:oid:2.16.840.1.113883.3.8901.3.1.36.68001#INSTNAIC 
* include urn:oid:2.16.840.1.113883.3.8901.3.1.36.68001#INSTTAXPAYER 
* include urn:oid:2.16.840.1.113883.3.8901.3.1.36.68001#PROFPAYER 
* include urn:oid:2.16.840.1.113883.3.8901.3.1.36.68001#PROFOFFICE 
* include urn:oid:2.16.840.1.113883.3.8901.3.1.36.68001#PROFNAIC 
* include urn:oid:2.16.840.1.113883.3.8901.3.1.36.68001#PROFTAXPAYER 

ValueSet: VSVFOrganizationIdentifierType-vista
Title: "VF_OrganizationIdentifierType VistA"
Description: "VistA Source ValueSet for Terminology Maps VF_OrganizationIdentifierType"
* ^experimental = false
* ^name = "VF_OrganizationIdentifierType"
* include http://va.gov/Terminology/VistADefinedTerms/36-6.01#2U "PAYER ID #"
* include http://va.gov/Terminology/VistADefinedTerms/36-6.01#FY "CLAIM OFFICE #"
* include http://va.gov/Terminology/VistADefinedTerms/36-6.01#NF "NAIC CODE"
* include http://va.gov/Terminology/VistADefinedTerms/36-6.01#TJ "FED TAXPAYER #;"