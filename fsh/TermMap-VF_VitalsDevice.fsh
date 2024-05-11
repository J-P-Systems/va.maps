Instance: CMVFVitalsDevice
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/CMVFVitalsDevice"
* name = "VF_VitalsDevice"
* title = "VF_VitalsDevice"
* status = #draft
* experimental = false
* description = "Terminology Maps VF_VitalsDevice"
* sourceCanonical = "http://va.gov/fhir/ValueSet/VSVFVitalsDevice-vista"
* targetCanonical = "http://va.gov/fhir/ValueSet/VSVFVitalsDevice"
* group[0].source = "urn:undefined"
* group[=].target = "http://terminology.hl7.org/CodeSystem/v3-NullFlavor"
* group[=].element[0].code = #null
* group[=].element[=].target.code = #UNK
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].target.comment = "placeholder"

ValueSet: VSVFVitalsDevice
Title: "VF_VitalsDevice"
Description: "FHIR Target ValueSet for Terminology Maps VF_VitalsDevice"
* ^experimental = false
* ^name = "VF_VitalsDevice"
* include http://terminology.hl7.org/CodeSystem/v3-NullFlavor#UNK 

ValueSet: VSVFVitalsDevice-vista
Title: "VF_VitalsDevice VistA"
Description: "VistA Source ValueSet for Terminology Maps VF_VitalsDevice"
* ^experimental = false
* ^name = "VF_VitalsDevice"
* include urn:undefined#null 