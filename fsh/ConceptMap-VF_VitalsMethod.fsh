Instance: CMVFVitalsMethod
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/CMVFVitalsMethod"
* name = "VF_VitalsMethod"
* title = "VF_VitalsMethod"
* status = #draft
* experimental = true
* description = "Terminology Maps VF_VitalsMethod"
* sourceCanonical = "http://va.gov/fhir/ValueSet/VSVFVitalsMethod"
* group[0].source = "http://va.gov/terminology/vistaDefinedElements/120.5-5"
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
* group[=].element[=].target.code = #445541000
* group[=].element[=].target.display = "Dry body weight (observable entity)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].target.comment = "OE, not method"
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
* group[=].element[=].target.code = #15158005
* group[=].element[=].target.display = "Air (substance)"
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
* group[=].element[=].target.code = #426129001
* group[=].element[=].target.display = "Transtracheal oxygen catheter (physical object)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #4688699
* group[=].element[=].display = "WITH ACTIVITY"
* group[=].element[=].target.code = #309604004
* group[=].element[=].target.display = "During exercise (qualifier value)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #4536421
* group[=].element[=].display = "WITH AMBULATION"
* group[=].element[=].target.code = #129006008
* group[=].element[=].target.display = "Walking (observable entity)"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "OE, not method"
* group[=].element[+].code = #4500992
* group[=].element[=].display = "WITH CAST OR BRACE"
* group[=].element[=].target.code = #303474004
* group[=].element[=].target.display = "Does not remove prosthesis (finding)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #4500993
* group[=].element[=].display = "WITH PROSTHESIS"
* group[=].element[=].target.code = #303474004
* group[=].element[=].target.display = "Does not remove prosthesis (finding)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #4500994
* group[=].element[=].display = "WITHOUT PROSTHESIS"
* group[=].element[=].target.code = #303473005
* group[=].element[=].target.display = "Does remove prosthesis (finding)"
* group[=].element[=].target.equivalence = #equal