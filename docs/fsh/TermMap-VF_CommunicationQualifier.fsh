Instance: CMVFCommunicationQualifier
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/CMVFCommunicationQualifier"
* name = "VF_CommunicationQualifier"
* title = "VF_CommunicationQualifier"
* status = #draft
* experimental = false
* description = "Terminology Maps VF_CommunicationQualifier"
* sourceCanonical = "http://va.gov/fhir/ValueSet/VSVFCommunicationQualifier-vista"
* targetCanonical = "http://va.gov/fhir/ValueSet/VSVFCommunicationQualifier"
* group[0].source = "http://va.gov/Terminology/VistADefinedTerms/365.26-.04"
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

ValueSet: VSVFCommunicationQualifier
Title: "VF_CommunicationQualifier"
Description: "FHIR Target ValueSet for Terminology Maps VF_CommunicationQualifier"
* ^experimental = false
* ^name = "VF_CommunicationQualifier"
* include urn:oid:2.16.840.1.113883.3.8901.3.1.3658026.8004#email 
* include urn:oid:2.16.840.1.113883.3.8901.3.1.3658026.8004#fax 
* include urn:oid:2.16.840.1.113883.3.8901.3.1.3658026.8004#phone 
* include urn:oid:2.16.840.1.113883.3.8901.3.1.3658026.8004#phone/home 
* include urn:oid:2.16.840.1.113883.3.8901.3.1.3658026.8004#phone/work 

ValueSet: VSVFCommunicationQualifier-vista
Title: "VF_CommunicationQualifier VistA"
Description: "VistA Source ValueSet for Terminology Maps VF_CommunicationQualifier"
* ^experimental = false
* ^name = "VF_CommunicationQualifier"
* include http://va.gov/Terminology/VistADefinedTerms/365.26-.04#EM "Electronic Mail"
* include http://va.gov/Terminology/VistADefinedTerms/365.26-.04#FX "Facsimile"
* include http://va.gov/Terminology/VistADefinedTerms/365.26-.04#TE "Telephone"
* include http://va.gov/Terminology/VistADefinedTerms/365.26-.04#EX "Telephone Extension"
* include http://va.gov/Terminology/VistADefinedTerms/365.26-.04#HP "Home Phone Number"
* include http://va.gov/Terminology/VistADefinedTerms/365.26-.04#WP "Work Phone Number"