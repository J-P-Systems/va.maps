Profile: LabObservationChemhemtoxriaserDiagnosticReport
Parent: http://va.gov/fhir/StructureDefinition/LabObservationDiagnosticReport
Id: LabObservationChemhemtoxriaserDiagnosticReport
Title: "Lab Observation: Chem, hem, tox, ria, ser {DiagnosticReport}"
Description: "This StructureDefinition contains the maps for VistA file CHEM, HEM, TOX, RIA, SER, etc. (#63.04) to LabObservationDiagnosticReport"
* ^status = #draft
* status from http://va.gov/fhir/ValueSet/VSVFDiagnosticReportLabStatus
* performer only Reference(http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitioner)
* result only Reference(LabObservationChemhemtoxriaserObservation)

Mapping: vista-to-LabObservationChemhemtoxriaserDiagnosticReport
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: LabObservationChemhemtoxriaserDiagnosticReport
* identifier.value -> "1602: source value from CHEM, HEM, TOX, RIA, SER, etc. - ORDERED TEST > ORDERED TEST - IEN (#63.04-.35 > 63.07-.001)"
* status -> "1415: terminologyMaps using VF_DiagnosticReportLabStatus on CHEM, HEM, TOX, RIA, SER, etc. - ORDERED TEST > ORDERED TEST - DISPOSITION (#63.04-.35 > 63.07-10)" "disposition based on HL7 Table 0123 status codes\n\nUS Core 5 has new constraints: if status is partial, preliminary, final, ammended, corrected or appended effective[x] and issued are required"
* effectiveDateTime -> "1423: source value from CHEM, HEM, TOX, RIA, SER, etc. - DATE/TIME SPECIMEN TAKEN (#63.04-.01)"
* issued -> "1428: source value from CHEM, HEM, TOX, RIA, SER, etc. - DATE REPORT COMPLETED (#63.04-.03)"
* performer -> "1433: reference from CHEM, HEM, TOX, RIA, SER, etc. - VERIFY PERSON (#63.04-.04)" "US Core Practitioner is must support resource"
* result -> "++: reference"

Mapping: cdw-to-LabObservationChemhemtoxriaserDiagnosticReport
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: LabObservationChemhemtoxriaserDiagnosticReport
* effectiveDateTime -> "Chem.LabChem.LabChemSpecimenDateTime\nChem.LabPanel.LabChemSpecimenDateTime\nChem.OrderedLabPanel.LabChemSpecimenDateTime\nChem.PatientLabChem.LabChemSpecimenDateTime"
* issued -> "Chem.LabChem.LabChemCompleteDateTime\nChem.LabPanel.LabChemCompleteDateTime\nChem.OrderedLabPanel.LabChemCompleteDateTime\nChem.PatientLabChem.LabChemCompleteDateTime"