ValueSet: VSVFAntibioticSensitivityInterpretation
Title: "VF_AntibioticSensitivityInterpretation"
Description: "Navigate to [ConceptMap VF_AntibioticSensitivityInterpretation](ConceptMap-CMVFAntibioticSensitivityInterpretation.html)\n\n> Note that the FHIR binding is to the codes in the fhir system. The codes from the VistADefinedElements system are map source codes: they may be included in addition to the fhir codes, but they don't address the binding requirement."
* ^experimental = true
* ^name = "VF_AntibioticSensitivityInterpretation"
* include http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#I "Intermediate"
* include urn:undefined#I "Intermediate"
* include http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#R "Resistant"
* include urn:undefined#R "Resistant"
* include urn:undefined#Resistant "Resistant"
* include http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#S "Susceptible"
* include urn:undefined#S "Sensitive"
* include urn:undefined#Sensitive "Sensitive"
* include http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#SYN-S "Synergy - susceptible"
* include urn:undefined#SYN-S 
* include http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#SYN-R "Synergy - resistant"
* include urn:undefined#SYN-R 