ValueSet: VSVFICDVersion
Title: "VF_ICDVersion"
Description: "Navigate to [ConceptMap VF_ICDVersion](ConceptMap-CMVFICDVersion.html)\n\n> Note that the FHIR binding is to the codes in the fhir system. The codes from the VistADefinedElements system are map source codes: they may be included in addition to the fhir codes, but they don't address the binding requirement."
* ^experimental = true
* ^name = "VF_ICDVersion"
* include urn:undefined#http://hl7.org/fhir/sid/icd-10-cm 
* include urn:undefined#10D "ICD-10-CM"
* include urn:undefined#http://hl7.org/fhir/sid/icd-10-pcs 
* include urn:undefined#10P "ICD-10-PCS"
* include urn:undefined#http://hl7.org/fhir/sid/icd-9-pcs 
* include urn:undefined#ICP "ICD-9 Proc"
* include urn:undefined#http://hl7.org/fhir/sid/icd-9-cm 
* include urn:undefined#ICD "ICD-9-CM"