Instance: CMVFVitalsMeasurementDevice
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/CMVFVitalsMeasurementDevice"
* name = "VF_VitalsMeasurementDevice"
* title = "VF_VitalsMeasurementDevice"
* status = #draft
* experimental = true
* description = "Terminology Maps VF_VitalsMeasurementDevice"
* sourceCanonical = "http://va.gov/fhir/ValueSet/VSVFVitalsMeasurementDevice"
* group[0].source = "urn:undefined"
* group[=].target = "http://snomed.info/sct"
* group[=].element[0].code = #4711312
* group[=].element[=].display = "ASSISTED VENTILATOR"
* group[=].element[=].target.code = #243141005
* group[=].element[=].target.display = "Mechanically assisted spontaneous ventilation (procedure)"
* group[=].element[=].target.equivalence = #equal