ValueSet: VSVFExamStatus
Title: "VF_ExamStatus"
Description: "Navigate to [ConceptMap VF_ExamStatus](ConceptMap-CMVFExamStatus.html)\n\n> Note that the FHIR binding is to the codes in the fhir system. The codes from the VistADefinedElements system are map source codes: they may be included in addition to the fhir codes, but they don't address the binding requirement."
* ^experimental = true
* ^name = "VF_ExamStatus"
* include urn:undefined#cancelled 
* include urn:undefined#X "CANCELLED BY MAS"
* include urn:undefined#RX "CANCELLED BY RO"
* include urn:undefined#final 
* include urn:undefined#C "COMPLETED"
* include urn:undefined#registred 
* include urn:undefined#O "OPEN"
* include urn:undefined#preliminary 
* include urn:undefined#T 