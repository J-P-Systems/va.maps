Profile: LaboratoryResultsChemhemtoxriaserObservation
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-observation-lab
Id: LaboratoryResultsChemhemtoxriaserObservation
Title: "Laboratory Results: Chem, hem, tox, ria, ser Observation"
Description: "This StructureDefinition contains the maps for VistA file CHEM, HEM, TOX, RIA, SER, etc. (#63.04) to us-core-observation-lab"
* ^status = #draft
* effectiveDateTime and note and performer and specimen and referenceRange.high and referenceRange.low and identifier.value and interpretation and code.coding and issued and status and valueQuantity.value and valueQuantity.unit MS
* specimen only Reference(LaboratoryResultsChemhemtoxriaserSpecimen)
* interpretation from http://va.gov/fhir/ValueSet/VSVFLabInterpretation
* status from http://va.gov/fhir/ValueSet/VSVFDiagnosticReportLabStatus

Mapping: vista-to-LaboratoryResultsChemhemtoxriaserObservation
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: LaboratoryResultsChemhemtoxriaserObservation
* effectiveDateTime -> "845: source value from CHEM, HEM, TOX, RIA, SER, etc. - DATE/TIME SPECIMEN TAKEN (#63.04-.01)"
* note -> "846: source value from CHEM, HEM, TOX, RIA, SER, etc. - COMMENT > COMMENT - COMMENT (#63.04-.99 > 63.041-.01)"
* performer -> "847: reference from CHEM, HEM, TOX, RIA, SER, etc. - ACCESSIONING INSTITUTION (#63.04-.112)"
* performer -> "1676: reference from CHEM, HEM, TOX, RIA, SER, etc. - VERIFY PERSON (#63.04-.04)"
* specimen -> "1656: reference from CHEM, HEM, TOX, RIA, SER, etc. - ACCESSION (#63.04-.06)"
* referenceRange.high -> "850: source value from CHEM, HEM, TOX, RIA, SER, etc. - ORDERED TEST > ORDERED TEST - LAB TEST ORDERED > LABORATORY TEST - SITE/SPECIMEN > SITE/SPECIMEN - REFERENCE HIGH (#63.04-.35 > 63.07-13 > 60-100 > 60.01-2)"
* referenceRange.low -> "854: source value from CHEM, HEM, TOX, RIA, SER, etc. - ORDERED TEST > ORDERED TEST - LAB TEST ORDERED > LABORATORY TEST - SITE/SPECIMEN > SITE/SPECIMEN - REFERENCE LOW (#63.04-.35 > 63.07-13 > 60-100 > 60.01-1)"
* identifier.value -> "851: source value from CHEM, HEM, TOX, RIA, SER, etc. - IEN (#63.04-.001)" "Changed from .id to .identifier, added subPath, removed id_generator from mapValue, added .system, and changed from transform to source value"
* interpretation -> "852: terminologyMaps using VF_LabInterpretation on CHEM, HEM, TOX, RIA, SER, etc. - ORDERED TEST (#63.04-2+through+862)" "Service compares value to reference and infers flag"
* code.coding -> "853: source value from CHEM, HEM, TOX, RIA, SER, etc. - ORDERED TEST > ORDERED TEST - LAB TEST ORDERED > LABORATORY TEST - SITE/SPECIMEN > SITE/SPECIMEN - LOINC CODE > LAB LOINC (#63.04-.35 > 63.07-13 > 60-100 > 60.01-95.03 > 95.03-)"
* issued -> "858: source value from CHEM, HEM, TOX, RIA, SER, etc. - DATE REPORT COMPLETED (#63.04-.03)"
* status -> "860: terminologyMaps using VF_DiagnosticReportLabStatus on CHEM, HEM, TOX, RIA, SER, etc. - ORDERED TEST > ORDERED TEST - DISPOSITION (#63.04-.35 > 63.07-10)"
* valueQuantity.value -> "857: source value from CHEM, HEM, TOX, RIA, SER, etc. - ORDERED TEST (#63.04-2+through+862)"
* valueQuantity.unit -> "864: source value from CHEM, HEM, TOX, RIA, SER, etc. - ORDERED TEST > ORDERED TEST - LAB TEST ORDERED > LABORATORY TEST - SITE/SPECIMEN > UNITS (#63.04-.35 > 63.07-13 > 60-100 > 60.01-6)" "Use CTTDM map \"VistA Lab Chem Units to UCUM\" to convert VistA text units to UCUM, where possible"

Mapping: cdw-to-LaboratoryResultsChemhemtoxriaserObservation
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: LaboratoryResultsChemhemtoxriaserObservation
* effectiveDateTime -> "Chem.LabChem.LabChemSpecimenDateTime\nChem.LabPanel.LabChemSpecimenDateTime\nChem.OrderedLabPanel.LabChemSpecimenDateTime\nChem.PatientLabChem.LabChemSpecimenDateTime"
* note -> "Chem.LabPanel.LabPanelComment"
* specimen -> "Chem.LabChem.ShortAccessionNumber\nChem.PatientLabChem.ShortAccessionNumber"
* issued -> "Chem.LabChem.LabChemCompleteDateTime\nChem.LabPanel.LabChemCompleteDateTime\nChem.OrderedLabPanel.LabChemCompleteDateTime\nChem.PatientLabChem.LabChemCompleteDateTime"