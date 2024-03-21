Instance: CMVFVitalsMeasurementDevice
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/CMVFVitalsMeasurementDevice"
* name = "VF_VitalsMeasurementDevice"
* title = "VF_VitalsMeasurementDevice"
* status = #draft
* experimental = false
* description = "Terminology Maps VF_VitalsMeasurementDevice"
* sourceCanonical = "http://va.gov/fhir/ValueSet/VSVFVitalsMeasurementDevice-vista"
* targetCanonical = "http://va.gov/fhir/ValueSet/VSVFVitalsMeasurementDevice"
* group[0].source = "http://terminology.hl7.org/CodeSystem/VHA"
* group[=].target = "http://snomed.info/sct"
* group[=].element[0].code = #4711312
* group[=].element[=].display = "ASSISTED VENTILATOR"
* group[=].element[=].target.code = #243141005
* group[=].element[=].target.display = "Mechanically assisted spontaneous ventilation (procedure)"
* group[=].element[=].target.equivalence = #equal

ValueSet: VSVFVitalsMeasurementDevice
Title: "VF_VitalsMeasurementDevice"
Description: "FHIR Target ValueSet for Terminology Maps VF_VitalsMeasurementDevice"
* ^experimental = false
* ^name = "VF_VitalsMeasurementDevice"
* include http://snomed.info/sct#243141005 "Mechanically assisted spontaneous ventilation (procedure)"

ValueSet: VSVFVitalsMeasurementDevice-vista
Title: "VF_VitalsMeasurementDevice VistA"
Description: "VistA Source ValueSet for Terminology Maps VF_VitalsMeasurementDevice"
* ^experimental = false
* ^name = "VF_VitalsMeasurementDevice"
* include http://terminology.hl7.org/CodeSystem/VHA#4711312 "ASSISTED VENTILATOR"