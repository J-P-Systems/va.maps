Profile: VAERSLocation
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-location
Id: VAERSLocation
Title: "VAERS Location"
Description: "This StructureDefinition contains the maps for ADERS to us-core-location"
* ^status = #draft
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-compliesWithProfile"
* ^extension.valueCanonical = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-location|6.1.0"
* name and address.city and address.state MS

Mapping: source-to-VAERSLocation
Id: aders
Title: "VA Adverse Drug Event Reporting System (VA ADERS)"
Source: VAERSLocation
* name -> "1910: source value from ADERS - 21_HospStay_Name"
* address.city -> "1911: source value from ADERS - 21_HospStay_City"
* address.state -> "1912: source value from ADERS - 21_HospStay_State"