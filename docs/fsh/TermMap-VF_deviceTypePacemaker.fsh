Instance: VF-deviceTypePacemaker
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/VF-deviceTypePacemaker"
* name = "VF_deviceTypePacemaker"
* title = "VF_deviceTypePacemaker"
* status = #active
* experimental = false
* description = "Terminology Maps VF_deviceTypePacemaker"
* sourceCanonical = "http://va.gov/fhir/ValueSet/deviceTypePacemaker-vista"
* targetCanonical = "http://va.gov/fhir/ValueSet/deviceTypePacemaker"
* group[0].source = "http://va.gov/terminology/vistaDefinedTerms/50.65-.02"
* group[=].target = "http://snomed.info/sct"
* group[=].element[0].code = #A
* group[=].element[=].display = "'A' FOR A LEAD;"
* group[=].element[=].target.code = #360129009
* group[=].element[=].target.display = "Cardiac pacemaker lead (physical object)"
* group[=].element[=].target.equivalence = #wider
* group[=].element[=].target.comment = "A more specific SNOMED code will be requested for the VA Extension"
* group[=].element[+].code = #AV
* group[=].element[=].display = "'AV' FOR BOTH A LEAD AND V LEAD;"
* group[=].element[=].target.code = #360129009
* group[=].element[=].target.display = "Cardiac pacemaker lead (physical object)"
* group[=].element[=].target.equivalence = #wider
* group[=].element[=].target.comment = "A more specific SNOMED code will be requested for the VA Extension"
* group[=].element[+].code = #G
* group[=].element[=].display = "'G' FOR GENERATOR;"
* group[=].element[=].target.code = #118378005
* group[=].element[=].target.display = "Pacemaker pulse generator, device (physical object)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #P
* group[=].element[=].display = "'P' FOR PSA ANALYZER;"
* group[=].element[=].target.code = #303476002
* group[=].element[=].target.display = "Cardiovascular equipment (physical object)"
* group[=].element[=].target.equivalence = #wider
* group[=].element[=].target.comment = "Pacing System Analyzer. A more specific SNOMED code will be requested for the VA Extension"
* group[=].element[+].code = #T
* group[=].element[=].display = "'T' FOR TELEPHONE TRANSMITTER;"
* group[=].element[=].target.code = #706635000
* group[=].element[=].target.display = "Telephone transmitter/receiver system (physical object)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #V
* group[=].element[=].display = "'V' FOR V LEAD;"
* group[=].element[=].target.code = #360129009
* group[=].element[=].target.display = "Cardiac pacemaker lead (physical object)"
* group[=].element[=].target.equivalence = #wider
* group[=].element[=].target.comment = "A more specific SNOMED code will be requested for the VA Extension"

ValueSet: deviceTypePacemaker
Title: "deviceTypePacemaker FHIR"
Description: "FHIR Target ValueSet for Terminology Maps [VF_deviceTypePacemaker](ConceptMap-VF-deviceTypePacemaker.html)"
* ^experimental = false
* ^status = #active
* ^name = "DeviceTypePacemaker"
* include http://snomed.info/sct#360129009 "Cardiac pacemaker lead (physical object)"
* include http://snomed.info/sct#118378005 "Pacemaker pulse generator, device (physical object)"
* include http://snomed.info/sct#303476002 "Cardiovascular equipment (physical object)"
* include http://snomed.info/sct#706635000 "Telephone transmitter/receiver system (physical object)"

ValueSet: deviceTypePacemaker-vista
Title: "deviceTypePacemaker VistA"
Description: "VistA Source ValueSet for Terminology Maps [VF_deviceTypePacemaker](ConceptMap-VF-deviceTypePacemaker.html)"
* ^experimental = false
* ^status = #active
* ^name = "DeviceTypePacemaker_VistA"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#A "'A' FOR A LEAD;"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#AV "'AV' FOR BOTH A LEAD AND V LEAD;"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#G "'G' FOR GENERATOR;"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#P "'P' FOR PSA ANALYZER;"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#T "'T' FOR TELEPHONE TRANSMITTER;"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#V "'V' FOR V LEAD;"