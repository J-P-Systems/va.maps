Instance: VF-VitalsUnits
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/VF-VitalsUnits"
* name = "VF_VitalsUnits"
* title = "VF_VitalsUnits"
* status = #active
* experimental = false
* description = "Terminology Maps VF_VitalsUnits"
* sourceCanonical = "http://va.gov/fhir/ValueSet/VitalsUnits-vista"
* targetCanonical = "http://va.gov/fhir/ValueSet/VitalsUnits"
* group[0].source = "http://terminology.hl7.org/CodeSystem/VHA"
* group[=].target = "http://unitsofmeasure.org"
* group[=].element[0].code = #4688718
* group[=].element[=].display = "AUDIOMETRY"
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[+].code = #4500634
* group[=].element[=].display = "BLOOD PRESSURE"
* group[=].element[=].target.code = #mm[Hg]
* group[=].element[=].target.display = "mm[Hg]"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #4536993
* group[=].element[=].display = "BODY MASS INDEX"
* group[=].element[=].target.code = #kg/m2
* group[=].element[=].target.display = "kg/m2"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #4688719
* group[=].element[=].display = "CENTRAL VENOUS PRESSURE"
* group[=].element[=].target.code = #cm[H2O]
* group[=].element[=].target.display = "cm[H2O]"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #4688720
* group[=].element[=].display = "CIRCUMFERENCE/GIRTH"
* group[=].element[=].target.code = #[in_i]
* group[=].element[=].target.display = "[in_i]"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #4688721
* group[=].element[=].display = "FETAL HEART TONES"
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[+].code = #4688722
* group[=].element[=].display = "FUNDAL HEIGHT"
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[+].code = #4688723
* group[=].element[=].display = "HEARING"
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[+].code = #4688724
* group[=].element[=].display = "HEIGHT"
* group[=].element[=].target.code = #[in_i]
* group[=].element[=].target.display = "[in_i]"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #4500635
* group[=].element[=].display = "PAIN"
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[+].code = #4500636
* group[=].element[=].display = "PULSE"
* group[=].element[=].target.code = #/min
* group[=].element[=].target.display = "/min"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #4500637
* group[=].element[=].display = "PULSE OXIMETRY"
* group[=].element[=].target.code = #%
* group[=].element[=].target.display = "%"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #4688725
* group[=].element[=].display = "RESPIRATION"
* group[=].element[=].target.code = #/min
* group[=].element[=].target.display = "/min"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #4500638
* group[=].element[=].display = "TEMPERATURE"
* group[=].element[=].target.code = #[degF]
* group[=].element[=].target.display = "[degF]"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #4688726
* group[=].element[=].display = "TONOMETRY"
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[+].code = #4688727
* group[=].element[=].display = "VISION CORRECTED"
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[+].code = #4688728
* group[=].element[=].display = "VISION UNCORRECTED"
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[+].code = #4500639
* group[=].element[=].display = "WEIGHT"
* group[=].element[=].target.code = #[lb_av]
* group[=].element[=].target.display = "[lb_av]"
* group[=].element[=].target.equivalence = #equal

ValueSet: VitalsUnits
Title: "VitalsUnits FHIR"
Description: "FHIR Target ValueSet for Terminology Maps [VF_VitalsUnits](ConceptMap-VF-VitalsUnits.html)"
* ^experimental = false
* ^status = #active
* ^name = "VitalsUnits"
* include http://unitsofmeasure.org#mm[Hg] "mm[Hg]"
* include http://unitsofmeasure.org#kg/m2 "kg/m2"
* include http://unitsofmeasure.org#cm[H2O] "cm[H2O]"
* include http://unitsofmeasure.org#[in_i] "[in_i]"
* include http://unitsofmeasure.org#/min "/min"
* include http://unitsofmeasure.org#% "%"
* include http://unitsofmeasure.org#[degF] "[degF]"
* include http://unitsofmeasure.org#[lb_av] "[lb_av]"

ValueSet: VitalsUnits-vista
Title: "VitalsUnits VistA"
Description: "VistA Source ValueSet for Terminology Maps [VF_VitalsUnits](ConceptMap-VF-VitalsUnits.html)"
* ^experimental = false
* ^status = #active
* ^name = "VitalsUnits_VistA"
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