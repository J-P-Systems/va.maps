Instance: VF-VitalsMethod
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/VF-VitalsMethod"
* name = "VF_VitalsMethod"
* title = "VF_VitalsMethod"
* status = #active
* experimental = false
* description = "Terminology Maps VF_VitalsMethod"
* sourceCanonical = "http://va.gov/fhir/ValueSet/VitalsMethod-vista"
* targetCanonical = "http://va.gov/fhir/ValueSet/VitalsMethod"
* group[0].source = "http://terminology.hl7.org/CodeSystem/VHA"
* group[=].target = "http://snomed.info/sct"
* group[=].element[0].code = #4688634
* group[=].element[=].display = "ACTUAL"
* group[=].element[=].target.code = #258104002
* group[=].element[=].target.display = "Measured (qualifier value)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #4688702
* group[=].element[=].display = "AFTER EXERCISE"
* group[=].element[=].target.code = #255214003
* group[=].element[=].target.display = "After exercise (qualifier value)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #4688697
* group[=].element[=].display = "AT REST"
* group[=].element[=].target.code = #263678003
* group[=].element[=].target.display = "At rest (qualifier value)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #4688639
* group[=].element[=].display = "AUSCULTATE"
* group[=].element[=].target.code = #37931006
* group[=].element[=].target.display = "Auscultation (procedure)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #4537031
* group[=].element[=].display = "CALCULATED"
* group[=].element[=].target.code = #258090004
* group[=].element[=].target.display = "Calculated (qualifier value)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #4688652
* group[=].element[=].display = "DRY"
* group[=].element[=].target.code = #13880007
* group[=].element[=].target.display = "Dry (qualifier value)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #4688653
* group[=].element[=].display = "ESTIMATED"
* group[=].element[=].target.code = #414135002
* group[=].element[=].target.display = "Estimated (qualifier value)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #4691085
* group[=].element[=].display = "ESTIMATED BY ARM SPAN"
* group[=].element[=].target.code = #414135002
* group[=].element[=].target.display = "Estimated (qualifier value)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #4688700
* group[=].element[=].display = "INVASIVE"
* group[=].element[=].target.code = #386341005
* group[=].element[=].target.display = "Invasive hemodynamic monitoring (regime/therapy)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #4688668
* group[=].element[=].display = "NON-INVASIVE (NONINVASIVE)"
* group[=].element[=].target.code = #704042003
* group[=].element[=].target.display = "Non-invasive cardiac output monitoring (regime/therapy)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #4688669
* group[=].element[=].display = "PALPATED"
* group[=].element[=].target.code = #113011001
* group[=].element[=].target.display = "Palpation (procedure)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #4688681
* group[=].element[=].display = "ROOM AIR"
* group[=].element[=].target.code = #722742002
* group[=].element[=].target.display = "Breathing room air (finding)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #4688706
* group[=].element[=].display = "SPONTANEOUS"
* group[=].element[=].target.code = #241700002
* group[=].element[=].target.display = "Spontaneous respiration (finding)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #4688692
* group[=].element[=].display = "STATED"
* group[=].element[=].target.code = #418799008
* group[=].element[=].target.display = "Finding reported by subject or history provider (finding)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #4688683
* group[=].element[=].display = "TRANSTRACHEAL"
* group[=].element[=].target.code = #264237001
* group[=].element[=].target.display = "Transtracheal approach (qualifier value)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #4688699
* group[=].element[=].display = "WITH ACTIVITY"
* group[=].element[=].target.code = #309604004
* group[=].element[=].target.display = "During exercise (qualifier value)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #4536421
* group[=].element[=].display = "WITH AMBULATION"
* group[=].element[=].target.code = #870595007
* group[=].element[=].target.display = "Walking (qualifier value)"
* group[=].element[=].target.equivalence = #equal

ValueSet: VitalsMethod
Title: "VitalsMethod FHIR"
Description: "FHIR Target ValueSet for Terminology Maps [VF_VitalsMethod](ConceptMap-VF-VitalsMethod.html)"
* ^experimental = false
* ^status = #active
* ^name = "VitalsMethod"
* include http://snomed.info/sct#258104002 "Measured (qualifier value)"
* include http://snomed.info/sct#255214003 "After exercise (qualifier value)"
* include http://snomed.info/sct#263678003 "At rest (qualifier value)"
* include http://snomed.info/sct#37931006 "Auscultation (procedure)"
* include http://snomed.info/sct#258090004 "Calculated (qualifier value)"
* include http://snomed.info/sct#13880007 "Dry (qualifier value)"
* include http://snomed.info/sct#414135002 "Estimated (qualifier value)"
* include http://snomed.info/sct#386341005 "Invasive hemodynamic monitoring (regime/therapy)"
* include http://snomed.info/sct#704042003 "Non-invasive cardiac output monitoring (regime/therapy)"
* include http://snomed.info/sct#113011001 "Palpation (procedure)"
* include http://snomed.info/sct#722742002 "Breathing room air (finding)"
* include http://snomed.info/sct#241700002 "Spontaneous respiration (finding)"
* include http://snomed.info/sct#418799008 "Finding reported by subject or history provider (finding)"
* include http://snomed.info/sct#264237001 "Transtracheal approach (qualifier value)"
* include http://snomed.info/sct#309604004 "During exercise (qualifier value)"
* include http://snomed.info/sct#870595007 "Walking (qualifier value)"

ValueSet: VitalsMethod-vista
Title: "VitalsMethod VistA"
Description: "VistA Source ValueSet for Terminology Maps [VF_VitalsMethod](ConceptMap-VF-VitalsMethod.html)"
* ^experimental = false
* ^status = #active
* ^name = "VitalsMethod_VistA"
* include http://terminology.hl7.org/CodeSystem/VHA#4688634 "ACTUAL"
* include http://terminology.hl7.org/CodeSystem/VHA#4688702 "AFTER EXERCISE"
* include http://terminology.hl7.org/CodeSystem/VHA#4688697 "AT REST"
* include http://terminology.hl7.org/CodeSystem/VHA#4688639 "AUSCULTATE"
* include http://terminology.hl7.org/CodeSystem/VHA#4537031 "CALCULATED"
* include http://terminology.hl7.org/CodeSystem/VHA#4688652 "DRY"
* include http://terminology.hl7.org/CodeSystem/VHA#4688653 "ESTIMATED"
* include http://terminology.hl7.org/CodeSystem/VHA#4691085 "ESTIMATED BY ARM SPAN"
* include http://terminology.hl7.org/CodeSystem/VHA#4688700 "INVASIVE"
* include http://terminology.hl7.org/CodeSystem/VHA#4688668 "NON-INVASIVE (NONINVASIVE)"
* include http://terminology.hl7.org/CodeSystem/VHA#4688669 "PALPATED"
* include http://terminology.hl7.org/CodeSystem/VHA#4688681 "ROOM AIR"
* include http://terminology.hl7.org/CodeSystem/VHA#4688706 "SPONTANEOUS"
* include http://terminology.hl7.org/CodeSystem/VHA#4688692 "STATED"
* include http://terminology.hl7.org/CodeSystem/VHA#4688683 "TRANSTRACHEAL"
* include http://terminology.hl7.org/CodeSystem/VHA#4688699 "WITH ACTIVITY"
* include http://terminology.hl7.org/CodeSystem/VHA#4536421 "WITH AMBULATION"