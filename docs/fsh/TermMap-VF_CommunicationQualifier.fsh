Instance: VF-CommunicationQualifier
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/VF-CommunicationQualifier"
* name = "VF_CommunicationQualifier"
* title = "VF_CommunicationQualifier"
* status = #active
* experimental = false
* description = "Terminology Maps VF_CommunicationQualifier"
* sourceCanonical = "http://va.gov/fhir/ValueSet/CommunicationQualifier-vista"
* targetCanonical = "http://va.gov/fhir/ValueSet/CommunicationQualifier"
* group[0].source = "http://va.gov/terminology/vistADefinedTerms/365.26-.04"
* group[=].target = "urn:oid:2.16.840.1.113883.3.8901.3.1.3658026.8004"
* group[=].element[0].code = #EM
* group[=].element[=].display = "Electronic Mail"
* group[=].element[=].target.code = #email
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #FX
* group[=].element[=].display = "Facsimile"
* group[=].element[=].target.code = #fax
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #TE
* group[=].element[=].display = "Telephone"
* group[=].element[=].target.code = #phone
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #EX
* group[=].element[=].display = "Telephone Extension"
* group[=].element[=].target.code = #phone
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #HP
* group[=].element[=].display = "Home Phone Number"
* group[=].element[=].target.code = #phone/home
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #WP
* group[=].element[=].display = "Work Phone Number"
* group[=].element[=].target.code = #phone/work
* group[=].element[=].target.equivalence = #equal

ValueSet: CommunicationQualifier
Title: "CommunicationQualifier FHIR"
Description: "FHIR Target ValueSet for Terminology Maps [VF_CommunicationQualifier](ConceptMap-VF-CommunicationQualifier.html)"
* ^experimental = false
* ^status = #active
* ^name = "CommunicationQualifier"
* include urn:oid:2.16.840.1.113883.3.8901.3.1.3658026.8004#email 
* include urn:oid:2.16.840.1.113883.3.8901.3.1.3658026.8004#fax 
* include urn:oid:2.16.840.1.113883.3.8901.3.1.3658026.8004#phone 
* include urn:oid:2.16.840.1.113883.3.8901.3.1.3658026.8004#phone/home 
* include urn:oid:2.16.840.1.113883.3.8901.3.1.3658026.8004#phone/work 

ValueSet: CommunicationQualifier-vista
Title: "CommunicationQualifier VistA"
Description: "VistA Source ValueSet for Terminology Maps [VF_CommunicationQualifier](ConceptMap-VF-CommunicationQualifier.html)"
* ^experimental = false
* ^status = #active
* ^name = "CommunicationQualifier_VistA"
* include http://va.gov/terminology/vistADefinedTerms/365.26-.04#EM "Electronic Mail"
* include http://va.gov/terminology/vistADefinedTerms/365.26-.04#FX "Facsimile"
* include http://va.gov/terminology/vistADefinedTerms/365.26-.04#TE "Telephone"
* include http://va.gov/terminology/vistADefinedTerms/365.26-.04#EX "Telephone Extension"
* include http://va.gov/terminology/vistADefinedTerms/365.26-.04#HP "Home Phone Number"
* include http://va.gov/terminology/vistADefinedTerms/365.26-.04#WP "Work Phone Number"