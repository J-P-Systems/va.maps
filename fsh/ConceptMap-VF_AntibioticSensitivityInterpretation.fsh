Instance: CMVFAntibioticSensitivityInterpretation
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/CMVFAntibioticSensitivityInterpretation"
* name = "VF_AntibioticSensitivityInterpretation"
* title = "VF_AntibioticSensitivityInterpretation"
* status = #active
* experimental = true
* description = "Terminology Maps VF_AntibioticSensitivityInterpretation"
* sourceCanonical = "http://va.gov/fhir/ValueSet/VSVFAntibioticSensitivityInterpretation"
* group[0].source = "http://va.gov/terminology/vistaDefinedElements/63.3-5.1+to+160.1"
* group[=].target = "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation"
* group[=].element[0].code = #I
* group[=].element[=].target.code = #I
* group[=].element[=].target.display = "Intermediate"
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].display = "Intermediate"
* group[=].element[+].code = #R
* group[=].element[=].target.code = #R
* group[=].element[=].target.display = "Resistant"
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].display = "Resistant"
* group[=].element[+].code = #Resistant
* group[=].element[=].target.code = #R
* group[=].element[=].target.display = "Resistant"
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].display = "Resistant"
* group[=].element[+].code = #S
* group[=].element[=].target.code = #S
* group[=].element[=].target.display = "Susceptible"
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].display = "Sensitive"
* group[=].element[+].code = #Sensitive
* group[=].element[=].target.code = #S
* group[=].element[=].target.display = "Susceptible"
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].display = "Sensitive"
* group[=].element[+].code = #SYN-S
* group[=].element[=].target.code = #SYN-S
* group[=].element[=].target.display = "Synergy - susceptible"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #SYN-R
* group[=].element[=].target.code = #SYN-R
* group[=].element[=].target.display = "Synergy - resistant"
* group[=].element[=].target.equivalence = #equal