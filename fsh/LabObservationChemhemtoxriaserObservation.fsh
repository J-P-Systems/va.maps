Profile: LabObservationChemhemtoxriaserObservation
Parent: http://va.gov/fhir/StructureDefinition/LabObservationObservation
Id: LabObservationChemhemtoxriaserObservation
Title: "Lab Observation: Chem, hem, tox, ria, ser {Observation}"
Description: "This StructureDefinition contains the maps for VistA CHEM, HEM, TOX, RIA, SER, etc. (file 63.04) to FHIR Observation"
* ^status = #draft
* performer only Reference(http://hl7.org/fhir/StructureDefinition/Organization)
* specimen only Reference(LabObservationChemhemtoxriaserSpecimen)
* interpretation from http://va.gov/fhir/ValueSet/VSVFLabInterpretation
* status from http://va.gov/fhir/ValueSet/VSVFDiagnosticReportLabStatus

Mapping: vista-to-LabObservationChemhemtoxriaserObservation
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: LabObservationChemhemtoxriaserObservation
* effectiveDateTime -> "845: source value from CHEM, HEM, TOX, RIA, SER, etc. - DATE/TIME SPECIMEN TAKEN (#63.04-.01)"
* note -> "846: source value from CHEM, HEM, TOX, RIA, SER, etc. - COMMENT > COMMENT - COMMENT (#63.04-.99 > 63.041-.01)"
* performer -> "847: reference from CHEM, HEM, TOX, RIA, SER, etc. - ACCESSIONING INSTITUTION (#63.04-.112)"
* specimen -> "1656: reference from CHEM, HEM, TOX, RIA, SER, etc. - ACCESSION (#63.04-.06)"
* referenceRange.high -> "850: source value from CHEM, HEM, TOX, RIA, SER, etc. - ORDERED TEST > ORDERED TEST - LAB TEST ORDERED > LABORATORY TEST - SITE/SPECIMEN > SITE/SPECIMEN - REFERENCE HIGH (#63.04-.35 > 63.07-13 > 60-100 > 60.01-2)"
* referenceRange.low -> "854: source value from CHEM, HEM, TOX, RIA, SER, etc. - ORDERED TEST > ORDERED TEST - LAB TEST ORDERED > LABORATORY TEST - SITE/SPECIMEN > SITE/SPECIMEN - REFERENCE LOW (#63.04-.35 > 63.07-13 > 60-100 > 60.01-1)"
* identifier.value -> "851: source value from CHEM, HEM, TOX, RIA, SER, etc. - IEN (#63.04-.001)" "Changed from .id to .identifier, added subPath, removed id_generator from mapValue, added .system, and changed from transform to source value"
* interpretation -> "852: terminologyMaps using VF_LabInterpretation on CHEM, HEM, TOX, RIA, SER, etc. - ORDERED TEST (#63.04-2+through+862)" "Service compares value to reference and infers flag"
* code -> "853: source value from CHEM, HEM, TOX, RIA, SER, etc. - ORDERED TEST > ORDERED TEST - LAB TEST ORDERED > LABORATORY TEST - SITE/SPECIMEN > SITE/SPECIMEN - LOINC CODE (#63.04-.35 > 63.07-13 > 60-100 > 60.01-95.03)"
* issued -> "858: source value from CHEM, HEM, TOX, RIA, SER, etc. - DATE REPORT COMPLETED (#63.04-.03)"
* status -> "860: terminologyMaps using VF_DiagnosticReportLabStatus on CHEM, HEM, TOX, RIA, SER, etc. - ORDERED TEST > ORDERED TEST - DISPOSITION (#63.04-.35 > 63.07-10)"
* valueQuantity.value -> "857: source value from CHEM, HEM, TOX, RIA, SER, etc. - ORDERED TEST (#63.04-2+through+862)"
* valueQuantity.unit -> "864: source value from CHEM, HEM, TOX, RIA, SER, etc. - ORDERED TEST > ORDERED TEST - LAB TEST ORDERED > LABORATORY TEST - SITE/SPECIMEN > UNITS (#63.04-.35 > 63.07-13 > 60-100 > 60.01-6)"

Mapping: cdw-to-LabObservationChemhemtoxriaserObservation
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: LabObservationChemhemtoxriaserObservation
* effectiveDateTime -> "Chem.LabChem.LabChemSpecimenDateTime\nChem.LabPanel.LabChemSpecimenDateTime\nChem.OrderedLabPanel.LabChemSpecimenDateTime\nChem.PatientLabChem.LabChemSpecimenDateTime"
* note -> "Chem.LabPanel.LabPanelComment"
* issued -> "Chem.LabChem.LabChemCompleteDateTime\nChem.LabPanel.LabChemCompleteDateTime\nChem.OrderedLabPanel.LabChemCompleteDateTime\nChem.PatientLabChem.LabChemCompleteDateTime"