ValueSet: VSVFPharmacyPersonType
Title: "VF_PharmacyPersonType"
Description: "Navigate to [ConceptMap VF_PharmacyPersonType](ConceptMap-CMVFPharmacyPersonType.html)"
* ^experimental = true
* ^name = "VF_PharmacyPersonType"
* include urn:undefined#001_=_Cardholder 
* include urn:undefined#002_=_Spouse 
* include urn:undefined#003_-_999_=_Dependents_and_Others 
* include http://terminology.hl7.org/CodeSystem/subscriber-relationship#self "Self"
* include http://terminology.hl7.org/CodeSystem/subscriber-relationship#spouse "Spouse"
* include http://terminology.hl7.org/CodeSystem/subscriber-relationship#other "Other"