Profile: VAERSBundle
Parent: http://hl7.org/fhir/StructureDefinition/Bundle
Id: VAERSBundle
Title: "VAERS Bundle"
Description: "This StructureDefinition contains the maps for ADERS to Bundle."
* ^status = #draft
* entry ^slicing.discriminator.type = #value
* entry ^slicing.discriminator.path = "$this"
* entry ^slicing.rules = #open
* entry contains va-patient 0..1 and va-vac1 0..1 and va-vac2 0..1 and va-vac3 0..1 and va-vac4 0..1 and va-pvac1 0..1 and va-pvac2 0..1 and va-pvac3 0..1 and va-pvac4 0..1 and va-ae 0..1
* type and entry[va-patient].resource and entry[va-vac1].resource and entry[va-vac2].resource and entry[va-vac3].resource and entry[va-vac4].resource and entry[va-pvac1].resource and entry[va-pvac2].resource and entry[va-pvac3].resource and entry[va-pvac4].resource and entry[va-ae].resource MS
* entry[va-patient].resource only VAERSPatient
* entry[va-vac1].resource only VAERSImmunizationvac1
* entry[va-vac2].resource only VAERSImmunizationvac2
* entry[va-vac3].resource only VAERSImmunizationvac3
* entry[va-vac4].resource only VAERSImmunizationvac4
* entry[va-pvac1].resource only VAERSImmunizationpvac1
* entry[va-pvac2].resource only VAERSImmunizationpvac2
* entry[va-pvac3].resource only VAERSImmunizationpvac3
* entry[va-pvac4].resource only VAERSImmunizationpvac4
* entry[va-ae].resource only VAERSAdverseEvent
* type = #transaction

Mapping: source-to-VAERSBundle
Id: aders
Title: "VA Adverse Drug Event Reporting System (VA ADERS)"
Source: VAERSBundle
* type -> "1961: fixed value = #transaction"
* entry[va-patient].resource -> "1962: reference"
* entry[va-vac1].resource -> "1963: reference"
* entry[va-vac2].resource -> "1964: reference"
* entry[va-vac3].resource -> "1965: reference"
* entry[va-vac4].resource -> "1966: reference"
* entry[va-pvac1].resource -> "1967: reference"
* entry[va-pvac2].resource -> "1968: reference"
* entry[va-pvac3].resource -> "1969: reference"
* entry[va-pvac4].resource -> "1970: reference"
* entry[va-ae].resource -> "1971: reference"