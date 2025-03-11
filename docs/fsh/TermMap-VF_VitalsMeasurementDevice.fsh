Instance: VF-VitalsMeasurementDevice
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/VF-VitalsMeasurementDevice"
* name = "VF_VitalsMeasurementDevice"
* title = "VF_VitalsMeasurementDevice"
* status = #active
* experimental = false
* description = "Terminology Maps VF_VitalsMeasurementDevice"
* sourceCanonical = "http://va.gov/fhir/ValueSet/VitalsMeasurementDevice-vista"
* targetCanonical = "http://va.gov/fhir/ValueSet/VitalsMeasurementDevice"
* group[0].source = "http://terminology.hl7.org/CodeSystem/VHA"
* group[=].target = "http://snomed.info/sct"
* group[=].element[0].code = #4688701
* group[=].element[=].display = "ARTERIAL LINE"
* group[=].element[=].target.code = #261241001
* group[=].element[=].target.display = "Arterial line (physical object)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #4711312
* group[=].element[=].display = "ASSISTED VENTILATOR"
* group[=].element[=].target.code = #706172005
* group[=].element[=].target.display = "Ventilator (physical object)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #4688641
* group[=].element[=].display = "BED"
* group[=].element[=].target.code = #466289007
* group[=].element[=].target.display = "Bed scale (physical object)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #4688646
* group[=].element[=].display = "CHAIR"
* group[=].element[=].target.code = #467496001
* group[=].element[=].target.display = "Chair scale, mechanical (physical object)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #4688647
* group[=].element[=].display = "CONTROLLED VENTILATOR"
* group[=].element[=].target.code = #706172005
* group[=].element[=].target.display = "Ventilator (physical object)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #4688649
* group[=].element[=].display = "CUFF-AUTOMATED (AUTOMATED CUFF)"
* group[=].element[=].target.code = #445949006
* group[=].element[=].target.display = "Electronic sphygmomanometer (physical object)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #4688688
* group[=].element[=].display = "CUFF-MANUAL (MANUAL CUFF)"
* group[=].element[=].target.code = #464069000
* group[=].element[=].target.display = "Mercury manual sphygmomanometer (physical object)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #4688650
* group[=].element[=].display = "DOPPLER"
* group[=].element[=].target.code = #43770009
* group[=].element[=].target.display = "Doppler device (physical object)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #4688659
* group[=].element[=].display = "LEAD"
* group[=].element[=].target.code = #257467001
* group[=].element[=].target.display = "Electrocardiogram lead (physical object)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #4688684
* group[=].element[=].display = "LIFT SCALE"
* group[=].element[=].target.code = #462242008
* group[=].element[=].target.display = "Patient sling scale (physical object)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #4688665
* group[=].element[=].display = "MONITOR"
* group[=].element[=].target.code = #706767009
* group[=].element[=].target.display = "Patient data recorder (physical object)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #4688715
* group[=].element[=].display = "VENTILATOR"
* group[=].element[=].target.code = #706172005
* group[=].element[=].target.display = "Ventilator (physical object)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #4688693
* group[=].element[=].display = "WHEELCHAIR SCALE"
* group[=].element[=].target.code = #466532009
* group[=].element[=].target.display = "Wheelchair scale (physical object)"
* group[=].element[=].target.equivalence = #equal

ValueSet: VitalsMeasurementDevice
Title: "VitalsMeasurementDevice FHIR"
Description: "FHIR Target ValueSet for Terminology Maps [VF_VitalsMeasurementDevice](ConceptMap-VF-VitalsMeasurementDevice.html)"
* ^experimental = false
* ^status = #active
* ^name = "VitalsMeasurementDevice"
* include http://snomed.info/sct#261241001 "Arterial line (physical object)"
* include http://snomed.info/sct#706172005 "Ventilator (physical object)"
* include http://snomed.info/sct#466289007 "Bed scale (physical object)"
* include http://snomed.info/sct#467496001 "Chair scale, mechanical (physical object)"
* include http://snomed.info/sct#445949006 "Electronic sphygmomanometer (physical object)"
* include http://snomed.info/sct#464069000 "Mercury manual sphygmomanometer (physical object)"
* include http://snomed.info/sct#43770009 "Doppler device (physical object)"
* include http://snomed.info/sct#257467001 "Electrocardiogram lead (physical object)"
* include http://snomed.info/sct#462242008 "Patient sling scale (physical object)"
* include http://snomed.info/sct#706767009 "Patient data recorder (physical object)"
* include http://snomed.info/sct#466532009 "Wheelchair scale (physical object)"

ValueSet: VitalsMeasurementDevice-vista
Title: "VitalsMeasurementDevice VistA"
Description: "VistA Source ValueSet for Terminology Maps [VF_VitalsMeasurementDevice](ConceptMap-VF-VitalsMeasurementDevice.html)"
* ^experimental = false
* ^status = #active
* ^name = "VitalsMeasurementDevice_VistA"
* include http://terminology.hl7.org/CodeSystem/VHA#4688701 "ARTERIAL LINE"
* include http://terminology.hl7.org/CodeSystem/VHA#4711312 "ASSISTED VENTILATOR"
* include http://terminology.hl7.org/CodeSystem/VHA#4688641 "BED"
* include http://terminology.hl7.org/CodeSystem/VHA#4688646 "CHAIR"
* include http://terminology.hl7.org/CodeSystem/VHA#4688647 "CONTROLLED VENTILATOR"
* include http://terminology.hl7.org/CodeSystem/VHA#4688649 "CUFF-AUTOMATED (AUTOMATED CUFF)"
* include http://terminology.hl7.org/CodeSystem/VHA#4688688 "CUFF-MANUAL (MANUAL CUFF)"
* include http://terminology.hl7.org/CodeSystem/VHA#4688650 "DOPPLER"
* include http://terminology.hl7.org/CodeSystem/VHA#4688659 "LEAD"
* include http://terminology.hl7.org/CodeSystem/VHA#4688684 "LIFT SCALE"
* include http://terminology.hl7.org/CodeSystem/VHA#4688665 "MONITOR"
* include http://terminology.hl7.org/CodeSystem/VHA#4688715 "VENTILATOR"
* include http://terminology.hl7.org/CodeSystem/VHA#4688693 "WHEELCHAIR SCALE"