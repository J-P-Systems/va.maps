Instance: VF-ImageInterpretation
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/VF-ImageInterpretation"
* name = "VF_ImageInterpretation"
* title = "VF_ImageInterpretation"
* status = #active
* experimental = false
* description = "Terminology Maps VF_ImageInterpretation"
* sourceCanonical = "http://va.gov/fhir/ValueSet/ImageInterpretation-vista"
* targetCanonical = "http://va.gov/fhir/ValueSet/ImageInterpretation"
* group[0].source = "http://va.gov/terminology/vistaDefinedTerms/50.65-.02"
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
Description: "FHIR Target ValueSet for Terminology Maps [VF_ImageInterpretation](ConceptMap-VF-ImageInterpretation.html)"
* ^experimental = false
* ^status = #active
* ^name = "ImageInterpretation"
* include http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#A "Abnormal"
* include http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#E "Equivocal"
* include http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#N "Normal"
* include http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#IND "Indeterminate"

ValueSet: ImageInterpretation-vista
Title: "ImageInterpretation VistA"
Description: "VistA Source ValueSet for Terminology Maps [VF_ImageInterpretation](ConceptMap-VF-ImageInterpretation.html)"
* ^experimental = false
* ^status = #active
* ^name = "ImageInterpretation_VistA"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#A "ABNORMAL"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#B "BORDERLINE"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#N "NORMAL"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#T "TECHNICALLY UNSATISFACTORY"