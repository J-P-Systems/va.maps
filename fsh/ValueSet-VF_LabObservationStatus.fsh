ValueSet: VSVFLabObservationStatus
Title: "VF_LabObservationStatus"
Description: "Navigate to [ConceptMap VF_LabObservationStatus](ConceptMap-CMVFLabObservationStatus.html)"
* ^experimental = true
* ^name = "VF_LabObservationStatus"
* include urn:undefined#F "FINAL REPORT"
* include urn:undefined#P "PRELIMINARY REPORT"
* include urn:undefined#NULL 
* include http://hl7.org/fhir/observation-status#final "Final"
* include http://hl7.org/fhir/observation-status#preliminary "Preliminary"
* include http://hl7.org/fhir/observation-status#unknown "Unknown"