Instance: CMVFdeviceTypePacemaker
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/CMVFdeviceTypePacemaker"
* name = "VF_deviceTypePacemaker"
* title = "VF_deviceTypePacemaker"
* status = #active
* experimental = true
* description = "Terminology Maps VF_deviceTypePacemaker"
* sourceCanonical = "http://va.gov/fhir/ValueSet/VSVFdeviceTypePacemaker"
* group[0].source = "http://va.gov/terminology/vistaDefinedElements/698.4-1"
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