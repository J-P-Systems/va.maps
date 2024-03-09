Profile: LaboratoryResultsMicrobiologyObservation
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-observation-lab
Id: LaboratoryResultsMicrobiologyObservation
Title: "Laboratory Results: Microbiology Observation"
Description: "This StructureDefinition contains the maps for VistA file MICROBIOLOGY (#63.05) to us-core-observation-lab"
* ^status = #draft
* effectiveDateTime and note and performer and specimen and identifier.value and code.coding and issued MS

Mapping: vista-to-LaboratoryResultsMicrobiologyObservation
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: LaboratoryResultsMicrobiologyObservation
* effectiveDateTime -> "1450: source value from MICROBIOLOGY - DATE/TIME SPECIMEN TAKEN (#63.05-.01)"
* note -> "1454: source value from MICROBIOLOGY - COMMENT ON SPECIMEN (#63.05-.99)"
* note -> "1455: source value from MICROBIOLOGY - ORGANISM > ORGANISM - COMMENT > COMMENT - COMMENT (#63.05-12 > 63.3-2 > 63.31-.01)"
* performer -> "1464: reference from MICROBIOLOGY - ACCESSIONING INSTITUTION (#63.05-.112)"
* performer -> "1679: reference from MICROBIOLOGY - VERIFY PERSON (#63.05-.04)"
* specimen -> "1659: reference from MICROBIOLOGY - MICROBIOLOGY ACCESSION (#63.05-.06)"
* identifier.value -> "1476: source value from MICROBIOLOGY - IEN (#63.05-.001)"
* code.coding -> "1480: source value from MICROBIOLOGY - ORDERED TEST > ORDERED TEST - LAB TEST ORDERED > LABORATORY TEST - SITE/SPECIMEN > SITE/SPECIMEN - LOINC CODE > LAB LOINC (#63.05-.35 > 63.5-13 > 60-100 > 60.01-95.03 > 95.03-) case Not NULL"
* issued -> "1484: source value from MICROBIOLOGY - DATE REPORT COMPLETED (#63.05-.03)"

Mapping: cdw-to-LaboratoryResultsMicrobiologyObservation
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: LaboratoryResultsMicrobiologyObservation
* effectiveDateTime -> "Micro.AntibioticSensitivity.SpecimenTakenDateTime,Micro.AntibioticSensitivityComment.SpecimenTakenDateTime,Micro.BacteriologyReports.SpecimenTakenDateTime,Micro.MicroAntibioticLevel.SpecimenTakenDateTime,Micro.MicroAudit.SpecimenTakenDateTime,Micro.Microbiology.SpecimenTakenDateTime,Micro.MicroOrderedTest.SpecimenTakenDateTime,Micro.MicroSterilityResults.SpecimenTakenDateTime,Micro.MycobacteriologyReports.SpecimenTakenDateTime,Micro.Mycology.SpecimenTakenDateTime,Micro.MycologyReports.SpecimenTakenDateTime,Micro.Parasitology.SpecimenTakenDateTime,Micro.ParasitologyReports.SpecimenTakenDateTime,Micro.ParasitologyStage.SpecimenTakenDateTime,SStaff.SMicroOrderedTest.SpecimenTakenDateTime,Micro.Virology.SpecimenTakenDateTime,Micro.VirologyReports.SpecimenTakenDateTime"
* note -> "Micro.Microbiology.SpecimenComment"
* specimen -> "Micro.Microbiology.MicrobiologyAccession"
* issued -> "Micro.Microbiology.ReportCompletedDateTime"