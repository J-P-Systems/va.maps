ValueSet: VSVFLocationStatus
Title: "VF_LocationStatus"
Description: "Navigate to [ConceptMap VF_LocationStatus](ConceptMap-CMVFLocationStatus.html)"
* ^experimental = true
* ^name = "VF_LocationStatus"
* include urn:VAST#A "Active"
* include urn:VAST#D "Permanently Deactivated"
* include urn:VAST#P "Planned"
* include urn:VAST#T "Temporarily Deactivated"
* include http://hl7.org/fhir/location-status#active "Active"
* include http://hl7.org/fhir/location-status#inactive "Inactive"
* include http://hl7.org/fhir/location-status#null 
* include http://hl7.org/fhir/location-status#suspended "Suspended"