Instance: CMVFencounterParticipationType
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/CMVFencounterParticipationType"
* name = "VF_encounterParticipationType"
* title = "VF_encounterParticipationType"
* status = #draft
* experimental = false
* description = "Terminology Maps VF_encounterParticipationType"
* sourceCanonical = "http://va.gov/fhir/ValueSet/VSVFencounterParticipationType-vista"
* targetCanonical = "http://va.gov/fhir/ValueSet/VSVFencounterParticipationType"
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

ValueSet: VSVFencounterParticipationType
Title: "VF_encounterParticipationType"
Description: "FHIR Target ValueSet for Terminology Maps VF_encounterParticipationType"
* ^experimental = false
* ^name = "VF_encounterParticipationType"
* include http://terminology.hl7.org/CodeSystem/v3-ParticipationType#PPRF "primary performer"
* include http://terminology.hl7.org/CodeSystem/v3-ParticipationType#SPRF "secondary performer"

ValueSet: VSVFencounterParticipationType-vista
Title: "VF_encounterParticipationType VistA"
Description: "VistA Source ValueSet for Terminology Maps VF_encounterParticipationType"
* ^experimental = false
* ^name = "VF_encounterParticipationType"
* include http://va.gov/terminology/vistaDefinedElements/9000010.06-.04#P "PRIMARY"
* include http://va.gov/terminology/vistaDefinedElements/9000010.06-.04#S "SECONDARY"