Profile: LabObservationMicrobiologyMycobacteriologyObservation-acidfast
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-observation-lab
Id: LabObservationMicrobiologyMycobacteriologyObservation-acidfast
Title: "Lab Observation: Microbiology Mycobacteriology Observation-acidfast"
Description: "This StructureDefinition contains the maps for VistA file MICROBIOLOGY (63.05) to us-core-observation-lab"
* ^status = #draft
* valueString and code MS
* code = http://loinc.org#11545-1 "Microscopic observation [Identifier] in Specimen by Acid fast stain"

Mapping: vista-to-LabObservationMicrobiologyMycobacteriologyObservation-acidfast
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: LabObservationMicrobiologyMycobacteriologyObservation-acidfast
* valueString -> "1519: source value from MICROBIOLOGY - ACID FAST STAIN (63.05-24)"
* code -> "1856: fixed value = http://loinc.org#11545-1 Microscopic observation [Identifier] in Specimen by Acid fast stain"

Mapping: cdw-to-LabObservationMicrobiologyMycobacteriologyObservation-acidfast
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: LabObservationMicrobiologyMycobacteriologyObservation-acidfast
* valueString -> "Micro.Microbiology.AcidFastStain"