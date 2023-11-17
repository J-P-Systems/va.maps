Instance: CMVFVitalsMethod
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/CMVFVitalsMethod"
* name = "VF_VitalsMethod"
* title = "VF_VitalsMethod"
* status = #active
* experimental = true
* description = "Terminology Maps VF_VitalsMethod"
* sourceCanonical = "http://va.gov/fhir/ValueSet/VSVFVitalsMethod"
* group[0].source = "http://va.gov/terminology/vistaDefinedElements/120.5-5"
* group[=].target = "http://snomed.info/sct"
* group[=].element[0].code = #4711345
* group[=].element[=].target.code = #258104002
* group[=].element[=].target.display = "Measured (qualifier value)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].display = "ACTUAL"
* group[=].element[+].code = #4711309
* group[=].element[=].target.code = #255214003
* group[=].element[=].target.display = "After exercise (qualifier value)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].display = "AFTER EXERCISE"
* group[=].element[+].code = #4711313
* group[=].element[=].target.code = #263678003
* group[=].element[=].target.display = "At rest (qualifier value)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].display = "AT REST"
* group[=].element[+].code = #4711314
* group[=].element[=].target.code = #37931006
* group[=].element[=].target.display = "Auscultation (procedure)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].display = "AUSCULTATE"
* group[=].element[+].code = #4712397
* group[=].element[=].target.code = #258090004
* group[=].element[=].target.display = "Calculated (qualifier value)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].display = "CALCULATED"
* group[=].element[+].code = #4711346
* group[=].element[=].target.code = #445541000
* group[=].element[=].target.display = "Dry body weight (observable entity)"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "OE, not method"
* group[=].element[=].display = "DRY"
* group[=].element[+].code = #4711347
* group[=].element[=].target.code = #414135002
* group[=].element[=].target.display = "Estimated (qualifier value)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].display = "ESTIMATED"
* group[=].element[+].code = #4711348
* group[=].element[=].target.code = #414135002
* group[=].element[=].target.display = "Estimated (qualifier value)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].display = "ESTIMATED BY ARM SPAN"
* group[=].element[+].code = #4711325
* group[=].element[=].target.code = #386341005
* group[=].element[=].target.display = "Invasive hemodynamic monitoring (regime/therapy)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].display = "INVASIVE"
* group[=].element[+].code = #4711335
* group[=].element[=].target.code = #704042003
* group[=].element[=].target.display = "Non-invasive cardiac output monitoring (regime/therapy)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].display = "NON-INVASIVE (NONINVASIVE)"
* group[=].element[+].code = #4711337
* group[=].element[=].target.code = #113011001
* group[=].element[=].target.display = "Palpation (procedure)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].display = "PALPATED"
* group[=].element[+].code = #4711353
* group[=].element[=].target.code = #15158005
* group[=].element[=].target.display = "Air (substance)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].display = "ROOM AIR"
* group[=].element[+].code = #4711360
* group[=].element[=].target.code = #241700002
* group[=].element[=].target.display = "Spontaneous respiration (finding)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].display = "SPONTANEOUS"
* group[=].element[+].code = #4711363
* group[=].element[=].target.code = #418799008
* group[=].element[=].target.display = "Finding reported by subject or history provider (finding)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].display = "STATED"
* group[=].element[+].code = #4711368
* group[=].element[=].target.code = #426129001
* group[=].element[=].target.display = "Transtracheal oxygen catheter (physical object)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].display = "TRANSTRACHEAL"
* group[=].element[+].code = #4710817
* group[=].element[=].target.code = #309604004
* group[=].element[=].target.display = "During exercise (qualifier value)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].display = "WITH ACTIVITY"
* group[=].element[+].code = #4710818
* group[=].element[=].target.code = #129006008
* group[=].element[=].target.display = "Walking (observable entity)"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "OE, not method"
* group[=].element[=].display = "WITH AMBULATION"
* group[=].element[+].code = #4710819
* group[=].element[=].target.code = #303474004
* group[=].element[=].target.display = "Does not remove prosthesis (finding)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].display = "WITH CAST OR BRACE"
* group[=].element[+].code = #4710820
* group[=].element[=].target.code = #303474004
* group[=].element[=].target.display = "Does not remove prosthesis (finding)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].display = "WITH PROSTHESIS"
* group[=].element[+].code = #4710821
* group[=].element[=].target.code = #303473005
* group[=].element[=].target.display = "Does remove prosthesis (finding)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].display = "WITHOUT PROSTHESIS"