Profile: LabObservationMicrobiologyMycobacteriologyObservationacidfast
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-observation-lab
Id: LabObservationMicrobiologyMycobacteriologyObservationacidfast
Title: "Lab Observation: Microbiology Mycobacteriology Observation[acidfast]"
Description: "This StructureDefinition contains the maps for VistA file MICROBIOLOGY (63.05) to us-core-observation-lab."
* ^status = #draft
* valueString and code MS
* code = http://loinc.org#11545-1 "Microscopic observation [Identifier] in Specimen by Acid fast stain"

Mapping: source-to-LabObservationMicrobiologyMycobacteriologyObservationacidfast
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: LabObservationMicrobiologyMycobacteriologyObservationacidfast
* valueString -> "1519: source value based on MICROBIOLOGY - ACID FAST STAIN (63.05-24)"
* code -> "1856: fixed value = http://loinc.org#11545-1 \"Microscopic observation [Identifier] in Specimen by Acid fast stain\""
* status -> "2123: target not supported" "auto added because of must-support"
* category[Laboratory] -> "2125: target not supported" "auto added because of must-support"
* subject -> "2126: target not supported" "auto added because of must-support"
* effectiveDateTime -> "2127: target not supported" "auto added because of must-support"
* dataAbsentReason -> "2130: target not supported" "auto added because of must-support"

Mapping: cdw-to-LabObservationMicrobiologyMycobacteriologyObservationacidfast
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: LabObservationMicrobiologyMycobacteriologyObservationacidfast
* valueString -> "Micro.Microbiology.AcidFastStain"