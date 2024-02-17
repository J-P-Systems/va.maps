ValueSet: VSVFPharmacyPersonType
Title: "VF_PharmacyPersonType"
Description: "Navigate to [ConceptMap VF_PharmacyPersonType](ConceptMap-CMVFPharmacyPersonType.html)\n\n> Note that the FHIR binding is to the codes in the fhir system. The codes from the VistADefinedElements system are map source codes: they may be included in addition to the fhir codes, but they don't address the binding requirement."
* ^experimental = true
* ^name = "VF_PharmacyPersonType"
* include http://terminology.hl7.org/CodeSystem/subscriber-relationship#self "Self"
* include urn:undefined#001_=_Cardholder 
* include http://terminology.hl7.org/CodeSystem/subscriber-relationship#spouse "Spouse"
* include urn:undefined#002_=_Spouse 
* include http://terminology.hl7.org/CodeSystem/subscriber-relationship#other "Other"
* include urn:undefined#003_-_999_=_Dependents_and_Others 