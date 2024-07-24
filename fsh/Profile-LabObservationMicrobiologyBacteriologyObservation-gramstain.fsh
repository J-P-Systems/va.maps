Profile: LabObservationMicrobiologyBacteriologyObservation-gramstain
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-observation-lab
Id: LabObservationMicrobiologyBacteriologyObservation-gramstain
Title: "Lab Observation: Microbiology Bacteriology Observation-gramstain"
Description: "This StructureDefinition contains the maps for VistA file MICROBIOLOGY (63.05) to us-core-observation-lab"
* ^status = #draft
* valueString and code MS
* code = http://loinc.org#664-3 "Microscopic observation [Identifier] in Specimen by Gram stain"

Mapping: vista-to-LabObservationMicrobiologyBacteriologyObservation-gramstain
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: LabObservationMicrobiologyBacteriologyObservation-gramstain
* valueString -> "1518: source value from MICROBIOLOGY - GRAM STAIN > GRAM STAIN - GRAM STAIN (63.05-11.6 > 63.29-.01)"
* code -> "1855: fixed value = http://loinc.org#664-3 Microscopic observation [Identifier] in Specimen by Gram stain"

Mapping: cdw-to-LabObservationMicrobiologyBacteriologyObservation-gramstain
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: LabObservationMicrobiologyBacteriologyObservation-gramstain
* valueString -> "Micro.BacteriologyReports.GramStain"