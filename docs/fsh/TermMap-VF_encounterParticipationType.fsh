Instance: VF-encounterParticipationType
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/VF-encounterParticipationType"
* name = "VF_encounterParticipationType"
* title = "VF_encounterParticipationType"
* status = #active
* experimental = false
* description = "Terminology Maps VF_encounterParticipationType"
* sourceCanonical = "http://va.gov/fhir/ValueSet/encounterParticipationType-vista"
* targetCanonical = "http://va.gov/fhir/ValueSet/encounterParticipationType"
* group[0].source = "http://va.gov/terminology/vistaDefinedElements/9000010.06-.04"
* group[=].target = "http://terminology.hl7.org/CodeSystem/v3-ParticipationType"
* group[=].element[0].code = #P
* group[=].element[=].display = "PRIMARY"
* group[=].element[=].target.code = #PPRF
* group[=].element[=].target.display = "primary performer"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #S
* group[=].element[=].display = "SECONDARY"
* group[=].element[=].target.code = #SPRF
* group[=].element[=].target.display = "secondary performer"
* group[=].element[=].target.equivalence = #equal

ValueSet: encounterParticipationType
Title: "encounterParticipationType FHIR"
Description: "FHIR Target ValueSet for Terminology Maps [VF_encounterParticipationType](ConceptMap-VF-encounterParticipationType.html)"
* ^experimental = false
* ^status = #active
* ^name = "EncounterParticipationType"
* include http://terminology.hl7.org/CodeSystem/v3-ParticipationType#PPRF "primary performer"
* include http://terminology.hl7.org/CodeSystem/v3-ParticipationType#SPRF "secondary performer"

ValueSet: encounterParticipationType-vista
Title: "encounterParticipationType VistA"
Description: "VistA Source ValueSet for Terminology Maps [VF_encounterParticipationType](ConceptMap-VF-encounterParticipationType.html)"
* ^experimental = false
* ^status = #active
* ^name = "EncounterParticipationType_VistA"
* include http://va.gov/terminology/vistaDefinedElements/9000010.06-.04#P "PRIMARY"
* include http://va.gov/terminology/vistaDefinedElements/9000010.06-.04#S "SECONDARY"