Instance: AntibioticSensitivityInterpretation
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/AntibioticSensitivityInterpretation"
* name = "AntibioticSensitivityInterpretation"
* title = "AntibioticSensitivityInterpretation"
* status = #active
* experimental = false
* description = "Terminology Maps AntibioticSensitivityInterpretation"
* sourceCanonical = "http://va.gov/fhir/ValueSet/AntibioticSensitivityInterpretation-vista"
* targetCanonical = "http://va.gov/fhir/ValueSet/AntibioticSensitivityInterpretation"
* group[0].source = "http://va.gov/terminology/vistaDefinedTerms/63.3-5.1+to+160.1"
* group[=].target = "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation"
* group[=].element[0].code = #I
* group[=].element[=].display = "Intermediate"
* group[=].element[=].target.code = #I
* group[=].element[=].target.display = "Intermediate"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #R
* group[=].element[=].display = "Resistant"
* group[=].element[=].target.code = #R
* group[=].element[=].target.display = "Resistant"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #Resistant
* group[=].element[=].display = "Resistant"
* group[=].element[=].target.code = #R
* group[=].element[=].target.display = "Resistant"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #S
* group[=].element[=].display = "Sensitive"
* group[=].element[=].target.code = #S
* group[=].element[=].target.display = "Susceptible"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #Sensitive
* group[=].element[=].display = "Sensitive"
* group[=].element[=].target.code = #S
* group[=].element[=].target.display = "Susceptible"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #SYN-S
* group[=].element[=].target.code = #SYN-S
* group[=].element[=].target.display = "Synergy - susceptible"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #SYN-R
* group[=].element[=].target.code = #SYN-R
* group[=].element[=].target.display = "Synergy - resistant"
* group[=].element[=].target.equivalence = #equal

ValueSet: AntibioticSensitivityInterpretation
Title: "AntibioticSensitivityInterpretation FHIR"
Description: "FHIR Target ValueSet for Terminology Maps AntibioticSensitivityInterpretation"
* ^experimental = false
* ^status = #active
* ^name = "AntibioticSensitivityInterpretation"
* include http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#I "Intermediate"
* include http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#R "Resistant"
* include http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#S "Susceptible"
* include http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#SYN-S "Synergy - susceptible"
* include http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#SYN-R "Synergy - resistant"

ValueSet: AntibioticSensitivityInterpretation-vista
Title: "AntibioticSensitivityInterpretation VistA"
Description: "VistA Source ValueSet for Terminology Maps AntibioticSensitivityInterpretation"
* ^experimental = false
* ^status = #active
* ^name = "AntibioticSensitivityInterpretation_VistA"
* include http://va.gov/terminology/vistaDefinedTerms/63.3-5.1+to+160.1#I "Intermediate"
* include http://va.gov/terminology/vistaDefinedTerms/63.3-5.1+to+160.1#R "Resistant"
* include http://va.gov/terminology/vistaDefinedTerms/63.3-5.1+to+160.1#Resistant "Resistant"
* include http://va.gov/terminology/vistaDefinedTerms/63.3-5.1+to+160.1#S "Sensitive"
* include http://va.gov/terminology/vistaDefinedTerms/63.3-5.1+to+160.1#Sensitive "Sensitive"
* include http://va.gov/terminology/vistaDefinedTerms/63.3-5.1+to+160.1#SYN-S 
* include http://va.gov/terminology/vistaDefinedTerms/63.3-5.1+to+160.1#SYN-R 