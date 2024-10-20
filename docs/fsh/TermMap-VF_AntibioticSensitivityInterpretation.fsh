Instance: CMVFAntibioticSensitivityInterpretation
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/CMVFAntibioticSensitivityInterpretation"
* name = "VF_AntibioticSensitivityInterpretation"
* title = "VF_AntibioticSensitivityInterpretation"
* status = #draft
* experimental = false
* description = "Terminology Maps VF_AntibioticSensitivityInterpretation"
* sourceCanonical = "http://va.gov/fhir/ValueSet/VSVFAntibioticSensitivityInterpretation-vista"
* targetCanonical = "http://va.gov/fhir/ValueSet/VSVFAntibioticSensitivityInterpretation"
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

ValueSet: VSVFAntibioticSensitivityInterpretation
Title: "VF_AntibioticSensitivityInterpretation"
Description: "FHIR Target ValueSet for Terminology Maps VF_AntibioticSensitivityInterpretation"
* ^experimental = false
* ^name = "VF_AntibioticSensitivityInterpretation"
* include http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#I "Intermediate"
* include http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#R "Resistant"
* include http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#S "Susceptible"
* include http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#SYN-S "Synergy - susceptible"
* include http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#SYN-R "Synergy - resistant"

ValueSet: VSVFAntibioticSensitivityInterpretation-vista
Title: "VF_AntibioticSensitivityInterpretation VistA"
Description: "VistA Source ValueSet for Terminology Maps VF_AntibioticSensitivityInterpretation"
* ^experimental = false
* ^name = "VF_AntibioticSensitivityInterpretation"
* include http://va.gov/terminology/vistaDefinedTerms/63.3-5.1+to+160.1#I "Intermediate"
* include http://va.gov/terminology/vistaDefinedTerms/63.3-5.1+to+160.1#R "Resistant"
* include http://va.gov/terminology/vistaDefinedTerms/63.3-5.1+to+160.1#Resistant "Resistant"
* include http://va.gov/terminology/vistaDefinedTerms/63.3-5.1+to+160.1#S "Sensitive"
* include http://va.gov/terminology/vistaDefinedTerms/63.3-5.1+to+160.1#Sensitive "Sensitive"
* include http://va.gov/terminology/vistaDefinedTerms/63.3-5.1+to+160.1#SYN-S 
* include http://va.gov/terminology/vistaDefinedTerms/63.3-5.1+to+160.1#SYN-R 