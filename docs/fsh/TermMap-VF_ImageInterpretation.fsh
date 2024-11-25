Instance: ImageInterpretation
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/ImageInterpretation"
* name = "ImageInterpretation"
* title = "ImageInterpretation"
* status = #active
* experimental = false
* description = "Terminology Maps ImageInterpretation "
* sourceCanonical = "http://va.gov/fhir/ValueSet/ImageInterpretation-vista"
* targetCanonical = "http://va.gov/fhir/ValueSet/ImageInterpretation"
* group[0].source = "http://va.gov/terminology/vistaDefinedTerms/691.5-.03"
* group[=].target = "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation"
* group[=].element[0].code = #A
* group[=].element[=].display = "ABNORMAL"
* group[=].element[=].target.code = #A
* group[=].element[=].target.display = "Abnormal"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #B
* group[=].element[=].display = "BORDERLINE"
* group[=].element[=].target.code = #E
* group[=].element[=].target.display = "Equivocal"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #N
* group[=].element[=].display = "NORMAL"
* group[=].element[=].target.code = #N
* group[=].element[=].target.display = "Normal"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #T
* group[=].element[=].display = "TECHNICALLY UNSATISFACTORY"
* group[=].element[=].target.code = #IND
* group[=].element[=].target.display = "Indeterminate"
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].target.comment = "'Technically Unsatifactory' is used with EKG/ECG but not ECHO"

ValueSet: ImageInterpretation
Title: "ImageInterpretation FHIR"
Description: "FHIR Target ValueSet for Terminology Maps ImageInterpretation"
* ^experimental = false
* ^status = #active
* ^name = "ImageInterpretation"
* include http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#A "Abnormal"
* include http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#E "Equivocal"
* include http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#N "Normal"
* include http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#IND "Indeterminate"

ValueSet: ImageInterpretation-vista
Title: "ImageInterpretation VistA"
Description: "VistA Source ValueSet for Terminology Maps ImageInterpretation"
* ^experimental = false
* ^status = #active
* ^name = "ImageInterpretation_VistA"
* include http://va.gov/terminology/vistaDefinedTerms/691.5-.03#A "ABNORMAL"
* include http://va.gov/terminology/vistaDefinedTerms/691.5-.03#B "BORDERLINE"
* include http://va.gov/terminology/vistaDefinedTerms/691.5-.03#N "NORMAL"
* include http://va.gov/terminology/vistaDefinedTerms/691.5-.03#T "TECHNICALLY UNSATISFACTORY"