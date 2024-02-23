Instance: CMVFCommunicationQualifier
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/CMVFCommunicationQualifier"
* name = "VF_CommunicationQualifier"
* title = "VF_CommunicationQualifier"
* status = #draft
* experimental = true
* description = "Terminology Maps VF_CommunicationQualifier"
* sourceCanonical = "http://va.gov/fhir/ValueSet/VSVFCommunicationQualifier"
* group[0].source = "http://va.gov/Terminology/VistADefinedTerms/365.26-.04"
* group[=].target = "urn:oid:2.16.840.1.113883.3.8901.3.1.3658026.8004"
* group[=].element[0].code = #EM
* group[=].element[=].display = "Electronic Mail"
* group[=].element[=].target.code = #email
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #FX
* group[=].element[=].display = "Facsimile"
* group[=].element[=].target.code = #fax
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #TE
* group[=].element[=].display = "Telephone"
* group[=].element[=].target.code = #phone
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #EX
* group[=].element[=].display = "Telephone Extension"
* group[=].element[=].target.code = #phone
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #HP
* group[=].element[=].display = "Home Phone Number"
* group[=].element[=].target.code = #phone/home
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #WP
* group[=].element[=].display = "Work Phone Number"
* group[=].element[=].target.code = #phone/work
* group[=].element[=].target.equivalence = #equivalent