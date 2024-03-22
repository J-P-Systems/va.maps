Profile: LaboratoryResultsChemhemtoxriaserDiagnosticReport
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-diagnosticreport-lab
Id: LaboratoryResultsChemhemtoxriaserDiagnosticReport
Title: "Laboratory Results: Chem, hem, tox, ria, ser DiagnosticReport"
Description: "This StructureDefinition contains the maps for VistA file CHEM, HEM, TOX, RIA, SER, etc. (#63.04) to us-core-diagnosticreport-lab"
* ^status = #draft
* identifier.value and basedOn and status and effectiveDateTime and issued and performer MS
* status from http://va.gov/fhir/ValueSet/VSVFDiagnosticReportLabStatus

Mapping: vista-to-LaboratoryResultsChemhemtoxriaserDiagnosticReport
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: LaboratoryResultsChemhemtoxriaserDiagnosticReport
* identifier.value -> "1602: source value from CHEM, HEM, TOX, RIA, SER, etc. - ORDERED TEST > ORDERED TEST - IEN (#63.04-.35 > 63.07-.001)"
* basedOn -> "1687: reference from CHEM, HEM, TOX, RIA, SER, etc. - ORDERED TEST > ORDERED TEST - CPRS ORDER # (#63.04-.35 > 63.07-3)" "CDW does not contain this linkage for Chem, but still a valid map"
* status -> "1415: terminologyMaps using VF_DiagnosticReportLabStatus on CHEM, HEM, TOX, RIA, SER, etc. - ORDERED TEST > ORDERED TEST - DISPOSITION (#63.04-.35 > 63.07-10)" "disposition based on HL7 Table 0123 status codes\n\nUS Core 5 has new constraints: if status is partial, preliminary, final, ammended, corrected or appended effective[x] and issued are required"
* effectiveDateTime -> "1423: source value from CHEM, HEM, TOX, RIA, SER, etc. - DATE/TIME SPECIMEN TAKEN (#63.04-.01)"
* issued -> "1428: source value from CHEM, HEM, TOX, RIA, SER, etc. - DATE REPORT COMPLETED (#63.04-.03)"
* performer -> "1433: reference from CHEM, HEM, TOX, RIA, SER, etc. - VERIFY PERSON (#63.04-.04)" "US Core Practitioner is must support resource"
* performer -> "1683: reference from CHEM, HEM, TOX, RIA, SER, etc. - ACCESSIONING INSTITUTION (#63.04-.112)"

Mapping: cdw-to-LaboratoryResultsChemhemtoxriaserDiagnosticReport
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: LaboratoryResultsChemhemtoxriaserDiagnosticReport
* effectiveDateTime -> "Chem.LabChem.LabChemSpecimenDateTime,Chem.LabPanel.LabChemSpecimenDateTime,Chem.OrderedLabPanel.LabChemSpecimenDateTime,Chem.PatientLabChem.LabChemSpecimenDateTime"
* issued -> "Chem.LabChem.LabChemCompleteDateTime,Chem.LabPanel.LabChemCompleteDateTime,Chem.OrderedLabPanel.LabChemCompleteDateTime,Chem.PatientLabChem.LabChemCompleteDateTime"