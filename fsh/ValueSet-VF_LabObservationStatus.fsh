ValueSet: VSVFLabObservationStatus
Title: "VF_LabObservationStatus"
Description: "Navigate to [ConceptMap VF_LabObservationStatus](ConceptMap-CMVFLabObservationStatus.html)\n\n> Note that the FHIR binding is to the codes in the fhir system. The codes from the VistADefinedElements system are map source codes: they may be included in addition to the fhir codes, but they don't address the binding requirement."
* ^experimental = true
* ^name = "VF_LabObservationStatus"
* include http://hl7.org/fhir/observation-status#final "Final"
* include urn:undefined#F "FINAL REPORT"
* include http://hl7.org/fhir/observation-status#preliminary "Preliminary"
* include urn:undefined#P "PRELIMINARY REPORT"
* include http://hl7.org/fhir/observation-status#unknown "Unknown"
* include urn:undefined#NULL 