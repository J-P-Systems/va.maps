Instance: VF-VitalsCodes
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/VF-VitalsCodes"
* name = "VF_VitalsCodes"
* title = "VF_VitalsCodes"
* status = #active
* experimental = false
* description = "Terminology Maps VF_VitalsCodes"
* sourceCanonical = "http://va.gov/fhir/ValueSet/VitalsCodes-vista"
* targetCanonical = "http://va.gov/fhir/ValueSet/VitalsCodes"
* group[0].source = "http://terminology.hl7.org/CodeSystem/VHA"
* group[=].target = "http://loinc.org"
* group[=].element[0].code = #4688718
* group[=].element[=].display = "AUDIOMETRY"
* group[=].element[=].target.code = #28615-3
* group[=].element[=].target.display = "Audiology study"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #4500634
* group[=].element[=].display = "BLOOD PRESSURE"
* group[=].element[=].target.code = #85354-9
* group[=].element[=].target.display = "Blood pressure panel with all children optional"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #4536993
* group[=].element[=].display = "BODY MASS INDEX"
* group[=].element[=].target.code = #39156-5
* group[=].element[=].target.display = "Body mass index (BMI) [Ratio]"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #4688719
* group[=].element[=].display = "CENTRAL VENOUS PRESSURE"
* group[=].element[=].target.code = #8591-0
* group[=].element[=].target.display = "Central venous pressure (CVP) Mean"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #4688720
* group[=].element[=].display = "CIRCUMFERENCE/GIRTH"
* group[=].element[=].target.code = #9844-2
* group[=].element[=].target.display = "Body region Circumference"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #4688721
* group[=].element[=].display = "FETAL HEART TONES"
* group[=].element[=].target.code = #11616-0
* group[=].element[=].target.display = "Fetal Heart Narrative Activity US"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #4688722
* group[=].element[=].display = "FUNDAL HEIGHT"
* group[=].element[=].target.code = #11881-0
* group[=].element[=].target.display = "Uterus Fundal height Tape measure"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #4688723
* group[=].element[=].display = "HEARING"
* group[=].element[=].target.code = #32437-6
* group[=].element[=].target.display = "Physical findings of Hearing"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #4688724
* group[=].element[=].display = "HEIGHT"
* group[=].element[=].target.code = #8302-2
* group[=].element[=].target.display = "Body height"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #4500635
* group[=].element[=].display = "PAIN"
* group[=].element[=].target.code = #72514-3
* group[=].element[=].target.display = "Pain severity - 0-10 verbal numeric rating [Score] - Reported"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #4500636
* group[=].element[=].display = "PULSE"
* group[=].element[=].target.code = #8867-4
* group[=].element[=].target.display = "Heart rate"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #4500637
* group[=].element[=].display = "PULSE OXIMETRY"
* group[=].element[=].target.code = #59408-5
* group[=].element[=].target.display = "Oxygen saturation in Arterial blood by Pulse oximetry"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #4500637
* group[=].element[=].display = "PULSE OXIMETRY"
* group[=].element[=].target.code = #2708-6
* group[=].element[=].target.display = "Oxygen saturation in Arterial blood"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #4688725
* group[=].element[=].display = "RESPIRATION"
* group[=].element[=].target.code = #9279-1
* group[=].element[=].target.display = "Respiratory rate"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #4500638
* group[=].element[=].display = "TEMPERATURE"
* group[=].element[=].target.code = #8310-5
* group[=].element[=].target.display = "Body temperature"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #4688726
* group[=].element[=].display = "TONOMETRY"
* group[=].element[=].target.code = #28630-2
* group[=].element[=].target.display = "Tonometry study"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #4688727
* group[=].element[=].display = "VISION CORRECTED"
* group[=].element[=].target.code = #70936-0
* group[=].element[=].target.display = "Vision testing Narrative"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #4688728
* group[=].element[=].display = "VISION UNCORRECTED"
* group[=].element[=].target.code = #70936-0
* group[=].element[=].target.display = "Vision testing Narrative"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #4500639
* group[=].element[=].display = "WEIGHT"
* group[=].element[=].target.code = #29463-7
* group[=].element[=].target.display = "Body weight"
* group[=].element[=].target.equivalence = #equal

ValueSet: VitalsCodes
Title: "VitalsCodes FHIR"
Description: "FHIR Target ValueSet for Terminology Maps [VF_VitalsCodes](ConceptMap-VF-VitalsCodes.html)"
* ^experimental = false
* ^status = #active
* ^name = "VitalsCodes"
* include http://loinc.org#28615-3 "Audiology study"
* include http://loinc.org#85354-9 "Blood pressure panel with all children optional"
* include http://loinc.org#39156-5 "Body mass index (BMI) [Ratio]"
* include http://loinc.org#8591-0 "Central venous pressure (CVP) Mean"
* include http://loinc.org#9844-2 "Body region Circumference"
* include http://loinc.org#11616-0 "Fetal Heart Narrative Activity US"
* include http://loinc.org#11881-0 "Uterus Fundal height Tape measure"
* include http://loinc.org#32437-6 "Physical findings of Hearing"
* include http://loinc.org#8302-2 "Body height"
* include http://loinc.org#72514-3 "Pain severity - 0-10 verbal numeric rating [Score] - Reported"
* include http://loinc.org#8867-4 "Heart rate"
* include http://loinc.org#59408-5 "Oxygen saturation in Arterial blood by Pulse oximetry"
* include http://loinc.org#2708-6 "Oxygen saturation in Arterial blood"
* include http://loinc.org#9279-1 "Respiratory rate"
* include http://loinc.org#8310-5 "Body temperature"
* include http://loinc.org#28630-2 "Tonometry study"
* include http://loinc.org#70936-0 "Vision testing Narrative"
* include http://loinc.org#29463-7 "Body weight"

ValueSet: VitalsCodes-vista
Title: "VitalsCodes VistA"
Description: "VistA Source ValueSet for Terminology Maps [VF_VitalsCodes](ConceptMap-VF-VitalsCodes.html)"
* ^experimental = false
* ^status = #active
* ^name = "VitalsCodes_VistA"
* include http://terminology.hl7.org/CodeSystem/VHA#4688718 "AUDIOMETRY"
* include http://terminology.hl7.org/CodeSystem/VHA#4500634 "BLOOD PRESSURE"
* include http://terminology.hl7.org/CodeSystem/VHA#4536993 "BODY MASS INDEX"
* include http://terminology.hl7.org/CodeSystem/VHA#4688719 "CENTRAL VENOUS PRESSURE"
* include http://terminology.hl7.org/CodeSystem/VHA#4688720 "CIRCUMFERENCE/GIRTH"
* include http://terminology.hl7.org/CodeSystem/VHA#4688721 "FETAL HEART TONES"
* include http://terminology.hl7.org/CodeSystem/VHA#4688722 "FUNDAL HEIGHT"
* include http://terminology.hl7.org/CodeSystem/VHA#4688723 "HEARING"
* include http://terminology.hl7.org/CodeSystem/VHA#4688724 "HEIGHT"
* include http://terminology.hl7.org/CodeSystem/VHA#4500635 "PAIN"
* include http://terminology.hl7.org/CodeSystem/VHA#4500636 "PULSE"
* include http://terminology.hl7.org/CodeSystem/VHA#4500637 "PULSE OXIMETRY"
* include http://terminology.hl7.org/CodeSystem/VHA#4688725 "RESPIRATION"
* include http://terminology.hl7.org/CodeSystem/VHA#4500638 "TEMPERATURE"
* include http://terminology.hl7.org/CodeSystem/VHA#4688726 "TONOMETRY"
* include http://terminology.hl7.org/CodeSystem/VHA#4688727 "VISION CORRECTED"
* include http://terminology.hl7.org/CodeSystem/VHA#4688728 "VISION UNCORRECTED"
* include http://terminology.hl7.org/CodeSystem/VHA#4500639 "WEIGHT"