ValueSet: VSVFExamStatus
Title: "VF_ExamStatus"
Description: "ValueSet for Terminology Maps VF_ExamStatus"
* ^experimental = true
* ^name = "VF_ExamStatus"
* include http://hl7.org/fhir/observation-status#cancelled 
* include urn:undefined#X "CANCELLED BY MAS"
* include urn:undefined#RX "CANCELLED BY RO"
* include http://hl7.org/fhir/observation-status#final 
* include urn:undefined#C "COMPLETED"
* include http://hl7.org/fhir/observation-status#registred 
* include urn:undefined#O "OPEN"
* include http://hl7.org/fhir/observation-status#preliminary 
* include urn:undefined#T "TRANSFERRED OUT"