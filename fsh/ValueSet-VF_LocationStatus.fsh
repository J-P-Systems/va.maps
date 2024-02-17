ValueSet: VSVFLocationStatus
Title: "VF_LocationStatus"
Description: "Navigate to [ConceptMap VF_LocationStatus](ConceptMap-CMVFLocationStatus.html)\n\n> Note that the FHIR binding is to the codes in the fhir system. The codes from the VistADefinedElements system are map source codes: they may be included in addition to the fhir codes, but they don't address the binding requirement."
* ^experimental = true
* ^name = "VF_LocationStatus"
* include http://hl7.org/fhir/location-status#active "Active"
* include urn:VAST#A "Active"
* include http://hl7.org/fhir/location-status#inactive "Inactive"
* include urn:VAST#D "Permanently Deactivated"
* include urn:VAST#P "Planned"
* include http://hl7.org/fhir/location-status#suspended "Suspended"
* include urn:VAST#T "Temporarily Deactivated"