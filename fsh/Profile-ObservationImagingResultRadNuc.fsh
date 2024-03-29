Profile: ObservationImagingResultRadNuc
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-observation-imaging
Id: ObservationImagingResultRadNuc
Title: "Observation Imaging Result: Rad/Nuc"
Description: "This StructureDefinition contains the maps for VistA file RAD/NUC MED REPORTS (#74) to us-core-observation-imaging"
* ^status = #draft
* identifier.value and partOf and status and subject and effectiveDateTime and issued and performer and valueString MS
* status from http://va.gov/fhir/ValueSet/VSVFImageStatusRadNuc

Mapping: vista-to-ObservationImagingResultRadNuc
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: ObservationImagingResultRadNuc
* identifier.value -> "1619: source value from RAD/NUC MED REPORTS - IEN (#74-.001)"
* partOf -> "1620: reference from REGISTERED EXAMS - EXAMINATIONS (#70.02-50)" "See use case Procedure: Radiology for US Core FHIR Procedure mapped elements"
* status -> "1623: terminologyMaps using VF_ImageStatusRadNuc on RAD/NUC MED REPORTS - REPORT STATUS (#74-5)"
* subject -> "1633: reference from RAD/NUC MED REPORTS - PATIENT NAME (#74-2)"
* effectiveDateTime -> "1636: source value from RAD/NUC MED REPORTS - EXAM DATE/TIME (#74-3)"
* issued -> "1639: source value from RAD/NUC MED REPORTS - VERIFIED DATE (#74-7)"
* performer -> "1642: source value from RAD/NUC MED REPORTS - VERIFYING PHYSICIAN (#74-9)"
* valueString -> "1647: source value from RAD/NUC MED REPORTS - IMPRESSION TEXT > IMPRESSION TEXT - IMPRESSION TEXT (#74-300 > 74.03-.01)"

Mapping: cdw-to-ObservationImagingResultRadNuc
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: ObservationImagingResultRadNuc
* status -> "SStaff.RadiologyNuclearMedicineReport.ReportStatus"
* effectiveDateTime -> "SStaff.RadiologyNuclearMedicineReport.ExamDateTime"
* issued -> "SStaff.RadiologyNuclearMedicineReport.VerifiedDateTime"
* valueString -> "SPatientText.RadiologyImpressions.ImpressionText"