ValueSet: VSVFLabObservationStatus
Title: "VF_LabObservationStatus"
Description: "ValueSet for Terminology Maps VF_LabObservationStatus"
* ^experimental = true
* ^name = "VF_LabObservationStatus"
* include http://hl7.org/fhir/observation-status#final "Final"
* include urn:undefined#F "FINAL REPORT"
* include http://hl7.org/fhir/observation-status#preliminary "Preliminary"
* include urn:undefined#P "PRELIMINARY REPORT"
* include http://hl7.org/fhir/observation-status#unknown "Unknown"
* include urn:undefined#NULL 