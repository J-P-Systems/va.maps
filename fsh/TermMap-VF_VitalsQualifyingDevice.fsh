Instance: CMVFVitalsQualifyingDevice
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/CMVFVitalsQualifyingDevice"
* name = "VF_VitalsQualifyingDevice"
* title = "VF_VitalsQualifyingDevice"
* status = #draft
* experimental = false
* description = "Terminology Maps VF_VitalsQualifyingDevice"
* sourceCanonical = "http://va.gov/fhir/ValueSet/VSVFVitalsQualifyingDevice-vista"
* targetCanonical = "http://va.gov/fhir/ValueSet/VSVFVitalsQualifyingDevice"
* group[0].source = "http://terminology.hl7.org/CodeSystem/VHA"
* group[=].target = "http://snomed.info/sct"
* group[=].element[0].code = #4688635
* group[=].element[=].display = "AEROSOL/HUMIDIFIED MASK"
* group[=].element[=].target.code = #426851007
* group[=].element[=].target.display = "Aerosol oxygen mask (physical object)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #4688698
* group[=].element[=].display = "AMBU BAG (BAG VALVE MASK)"
* group[=].element[=].target.code = #371785003
* group[=].element[=].target.display = "Ambu bag (physical object)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #4688701
* group[=].element[=].display = "ARTERIAL LINE"
* group[=].element[=].target.code = #261241001
* group[=].element[=].target.display = "Arterial line (physical object)"
* group[=].element[=].target.equivalence = #equal

ValueSet: VSVFVitalsQualifyingDevice
Title: "VF_VitalsQualifyingDevice"
Description: "FHIR Target ValueSet for Terminology Maps VF_VitalsQualifyingDevice"
* ^experimental = false
* ^name = "VF_VitalsQualifyingDevice"
* include http://snomed.info/sct#426851007 "Aerosol oxygen mask (physical object)"
* include http://snomed.info/sct#371785003 "Ambu bag (physical object)"
* include http://snomed.info/sct#261241001 "Arterial line (physical object)"

ValueSet: VSVFVitalsQualifyingDevice-vista
Title: "VF_VitalsQualifyingDevice VistA"
Description: "VistA Source ValueSet for Terminology Maps VF_VitalsQualifyingDevice"
* ^experimental = false
* ^name = "VF_VitalsQualifyingDevice"
* include http://terminology.hl7.org/CodeSystem/VHA#4688635 "AEROSOL/HUMIDIFIED MASK"
* include http://terminology.hl7.org/CodeSystem/VHA#4688698 "AMBU BAG (BAG VALVE MASK)"
* include http://terminology.hl7.org/CodeSystem/VHA#4688701 "ARTERIAL LINE"