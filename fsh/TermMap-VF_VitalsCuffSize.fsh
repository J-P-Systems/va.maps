Instance: CMVFVitalsCuffSize
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/CMVFVitalsCuffSize"
* name = "VF_VitalsCuffSize"
* title = "VF_VitalsCuffSize"
* status = #draft
* experimental = false
* description = "Terminology Maps VF_VitalsCuffSize"
* sourceCanonical = "http://va.gov/fhir/ValueSet/VSVFVitalsCuffSize-vista"
* targetCanonical = "http://va.gov/fhir/ValueSet/VSVFVitalsCuffSize"
* group[0].source = "urn:undefined"
* group[=].target = "http://snomed.info/sct"
* group[=].element[0].code = #ADULT
* group[=].element[=].display = "ADULT"
* group[=].element[=].target.code = #720737000
* group[=].element[=].target.display = "Blood pressure cuff, adult size (physical object)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #4500641
* group[=].element[=].display = "ADULT CUFF"
* group[=].element[=].target.code = #720737000
* group[=].element[=].target.display = "Blood pressure cuff, adult size (physical object)"
* group[=].element[=].target.equivalence = #equal

ValueSet: VSVFVitalsCuffSize
Title: "VF_VitalsCuffSize"
Description: "FHIR Target ValueSet for Terminology Maps VF_VitalsCuffSize"
* ^experimental = false
* ^name = "VF_VitalsCuffSize"
* include http://snomed.info/sct#720737000 "Blood pressure cuff, adult size (physical object)"

ValueSet: VSVFVitalsCuffSize-vista
Title: "VF_VitalsCuffSize VistA"
Description: "VistA Source ValueSet for Terminology Maps VF_VitalsCuffSize"
* ^experimental = false
* ^name = "VF_VitalsCuffSize"
* include urn:undefined#ADULT "ADULT"
* include urn:undefined#4500641 "ADULT CUFF"