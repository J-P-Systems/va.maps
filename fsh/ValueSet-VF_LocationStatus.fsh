ValueSet: VSVFLocationStatus
Title: "VF_LocationStatus"
* ^experimental = true
* ^name = "VF_LocationStatus"
* include http://hl7.org/fhir/location-status#active "Active"
* include urn:VAST#A "Active"
* include http://hl7.org/fhir/location-status#inactive "Inactive"
* include urn:VAST#D "Permanently Deactivated"
* include urn:VAST#P "Planned"
* include http://hl7.org/fhir/location-status#suspended "Suspended"
* include urn:VAST#T "Temporarily Deactivated"