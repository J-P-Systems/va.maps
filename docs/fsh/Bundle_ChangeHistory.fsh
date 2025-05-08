Alias: $v3-DataOperation = http://terminology.hl7.org/CodeSystem/v3-DataOperation
Alias: $provenance-participant-type = http://terminology.hl7.org/CodeSystem/provenance-participant-type

Instance: create-0
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/AllergyIntolerance)
* occurredDateTime = "2022-02-13"
* recorded = "2022-02-13T00:00:00Z"
* reason.text = "Created"
* activity = $v3-DataOperation#CREATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "JL"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: update-0
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/AllergyIntolerance)
* occurredDateTime = "2024-08-05"
* recorded = "2024-08-05T00:00:00Z"
* reason.text = "Last modified"
* activity = $v3-DataOperation#UPDATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "MZ"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: create-1
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/Patient)
* occurredDateTime = "2022-02-13"
* recorded = "2022-02-13T00:00:00Z"
* reason.text = "Created"
* activity = $v3-DataOperation#CREATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "JL"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: update-1
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/Patient)
* occurredDateTime = "2024-07-09"
* recorded = "2024-07-09T00:00:00Z"
* reason.text = "Last modified"
* activity = $v3-DataOperation#UPDATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "JL"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: create-2
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/Appointment)
* occurredDateTime = "2022-04-18"
* recorded = "2022-04-18T00:00:00Z"
* reason.text = "Created"
* activity = $v3-DataOperation#CREATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "JL"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: update-2
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/Appointment)
* occurredDateTime = "2024-07-08"
* recorded = "2024-07-08T00:00:00Z"
* reason.text = "Last modified"
* activity = $v3-DataOperation#UPDATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "MZ"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: create-3
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/ConditionProblem)
* occurredDateTime = "2022-02-13"
* recorded = "2022-02-13T00:00:00Z"
* reason.text = "Created"
* activity = $v3-DataOperation#CREATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "JL"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: update-3
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/ConditionProblem)
* occurredDateTime = "2024-05-28"
* recorded = "2024-05-28T00:00:00Z"
* reason.text = "Last modified"
* activity = $v3-DataOperation#UPDATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "MZ"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: create-4
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/ConditionEncounterDiagnosis)
* occurredDateTime = "2022-02-13"
* recorded = "2022-02-13T00:00:00Z"
* reason.text = "Created"
* activity = $v3-DataOperation#CREATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "JL"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: update-4
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/ConditionEncounterDiagnosis)
* occurredDateTime = "2024-10-16"
* recorded = "2024-10-16T00:00:00Z"
* reason.text = "Last modified"
* activity = $v3-DataOperation#UPDATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "MZ"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: create-5
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/DiagnosticReportNoteSurgicalPathologyDiagnosticReport)
* occurredDateTime = "2023-03-01"
* recorded = "2023-03-01T00:00:00Z"
* reason.text = "Created"
* activity = $v3-DataOperation#CREATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "BG"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: update-5
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/DiagnosticReportNoteSurgicalPathologyDiagnosticReport)
* occurredDateTime = "2025-01-05"
* recorded = "2025-01-05T00:00:00Z"
* reason.text = "Last modified"
* activity = $v3-DataOperation#UPDATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "BG"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: create-6
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/DiagnosticReportNoteSurgicalPathologySpecimen)
* occurredDateTime = "2024-01-17"
* recorded = "2024-01-17T00:00:00Z"
* reason.text = "Created"
* activity = $v3-DataOperation#CREATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "BG"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: update-6
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/DiagnosticReportNoteSurgicalPathologySpecimen)
* occurredDateTime = "2025-01-06"
* recorded = "2025-01-06T00:00:00Z"
* reason.text = "Last modified"
* activity = $v3-DataOperation#UPDATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "BG"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: create-7
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/LabObservationChemhemtoxriaserDiagnosticReport)
* occurredDateTime = "2023-03-01"
* recorded = "2023-03-01T00:00:00Z"
* reason.text = "Created"
* activity = $v3-DataOperation#CREATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "BG"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: update-7
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/LabObservationChemhemtoxriaserDiagnosticReport)
* occurredDateTime = "2024-05-19"
* recorded = "2024-05-19T00:00:00Z"
* reason.text = "Last modified"
* activity = $v3-DataOperation#UPDATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "MZ"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: create-8
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/LabObservationChemhemtoxriaserObservation)
* occurredDateTime = "2022-06-30"
* recorded = "2022-06-30T00:00:00Z"
* reason.text = "Created"
* activity = $v3-DataOperation#CREATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "JL"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: update-8
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/LabObservationChemhemtoxriaserObservation)
* occurredDateTime = "2024-12-15"
* recorded = "2024-12-15T00:00:00Z"
* reason.text = "Last modified"
* activity = $v3-DataOperation#UPDATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "MZ"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: create-9
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/LabObservationChemhemtoxriaserSpecimen)
* occurredDateTime = "2022-06-30"
* recorded = "2022-06-30T00:00:00Z"
* reason.text = "Created"
* activity = $v3-DataOperation#CREATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "JL"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: update-9
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/LabObservationChemhemtoxriaserSpecimen)
* occurredDateTime = "2023-03-01"
* recorded = "2023-03-01T00:00:00Z"
* reason.text = "Last modified"
* activity = $v3-DataOperation#UPDATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "BG"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: create-10
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/DiagnosticReportNoteElectronMicroscopyDiagnosticReport)
* occurredDateTime = "2023-03-01"
* recorded = "2023-03-01T00:00:00Z"
* reason.text = "Created"
* activity = $v3-DataOperation#CREATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "BG"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: update-10
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/DiagnosticReportNoteElectronMicroscopyDiagnosticReport)
* occurredDateTime = "2025-01-05"
* recorded = "2025-01-05T00:00:00Z"
* reason.text = "Last modified"
* activity = $v3-DataOperation#UPDATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "BG"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: create-11
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/DiagnosticReportNoteElectronMicroscopySpecimen)
* occurredDateTime = "2024-01-17"
* recorded = "2024-01-17T00:00:00Z"
* reason.text = "Created"
* activity = $v3-DataOperation#CREATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "BG"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: update-11
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/DiagnosticReportNoteElectronMicroscopySpecimen)
* occurredDateTime = "2025-01-06"
* recorded = "2025-01-06T00:00:00Z"
* reason.text = "Last modified"
* activity = $v3-DataOperation#UPDATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "BG"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: create-12
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/LabObservationMicrobiologyDiagnosticReport)
* occurredDateTime = "2023-03-01"
* recorded = "2023-03-01T00:00:00Z"
* reason.text = "Created"
* activity = $v3-DataOperation#CREATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "BG"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: update-12
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/LabObservationMicrobiologyDiagnosticReport)
* occurredDateTime = "2024-05-28"
* recorded = "2024-05-28T00:00:00Z"
* reason.text = "Last modified"
* activity = $v3-DataOperation#UPDATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "MZ"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: create-13
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/LabObservationMicrobiologyObservation)
* occurredDateTime = "2022-06-30"
* recorded = "2022-06-30T00:00:00Z"
* reason.text = "Created"
* activity = $v3-DataOperation#CREATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "JL"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: update-13
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/LabObservationMicrobiologyObservation)
* occurredDateTime = "2024-12-15"
* recorded = "2024-12-15T00:00:00Z"
* reason.text = "Last modified"
* activity = $v3-DataOperation#UPDATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "MZ"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: create-14
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/LabObservationMicrobiologySpecimen)
* occurredDateTime = "2023-03-01"
* recorded = "2023-03-01T00:00:00Z"
* reason.text = "Created"
* activity = $v3-DataOperation#CREATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "BG"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: create-15
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/LabObservationMicrobiologyBacteriologyDiagnosticReport)
* occurredDateTime = "2023-03-01"
* recorded = "2023-03-01T00:00:00Z"
* reason.text = "Created"
* activity = $v3-DataOperation#CREATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "BG"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: update-15
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/LabObservationMicrobiologyBacteriologyDiagnosticReport)
* occurredDateTime = "2024-07-31"
* recorded = "2024-07-31T00:00:00Z"
* reason.text = "Last modified"
* activity = $v3-DataOperation#UPDATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "MZ"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: create-16
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/LabObservationMicrobiologyBacteriologyObservation)
* occurredDateTime = "2022-06-30"
* recorded = "2022-06-30T00:00:00Z"
* reason.text = "Created"
* activity = $v3-DataOperation#CREATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "JL"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: update-16
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/LabObservationMicrobiologyBacteriologyObservation)
* occurredDateTime = "2024-12-15"
* recorded = "2024-12-15T00:00:00Z"
* reason.text = "Last modified"
* activity = $v3-DataOperation#UPDATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "MZ"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: create-17
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/LabObservationMicrobiologyBacteriologyObservationbacteria)
* occurredDateTime = "2023-03-01"
* recorded = "2023-03-01T00:00:00Z"
* reason.text = "Created"
* activity = $v3-DataOperation#CREATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "BG"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: update-17
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/LabObservationMicrobiologyBacteriologyObservationbacteria)
* occurredDateTime = "2024-01-17"
* recorded = "2024-01-17T00:00:00Z"
* reason.text = "Last modified"
* activity = $v3-DataOperation#UPDATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "BG"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: create-18
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/LabObservationMicrobiologyBacteriologyObservationurine)
* occurredDateTime = "2023-03-31"
* recorded = "2023-03-31T00:00:00Z"
* reason.text = "Created"
* activity = $v3-DataOperation#CREATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "BG"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: update-18
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/LabObservationMicrobiologyBacteriologyObservationurine)
* occurredDateTime = "2023-08-09"
* recorded = "2023-08-09T00:00:00Z"
* reason.text = "Last modified"
* activity = $v3-DataOperation#UPDATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "MZ"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: create-19
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/LabObservationMicrobiologyBacteriologyObservationsputum)
* occurredDateTime = "2023-03-31"
* recorded = "2023-03-31T00:00:00Z"
* reason.text = "Created"
* activity = $v3-DataOperation#CREATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "BG"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: create-20
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/LabObservationMicrobiologyBacteriologyObservationgramstain)
* occurredDateTime = "2023-04-04"
* recorded = "2023-04-04T00:00:00Z"
* reason.text = "Created"
* activity = $v3-DataOperation#CREATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "BG"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: create-21
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/LabObservationMicrobiologyBacteriologySpecimen)
* occurredDateTime = "2023-03-01"
* recorded = "2023-03-01T00:00:00Z"
* reason.text = "Created"
* activity = $v3-DataOperation#CREATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "BG"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: create-22
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/LabObservationMicrobiologyParasitologyDiagnosticReport)
* occurredDateTime = "2023-03-01"
* recorded = "2023-03-01T00:00:00Z"
* reason.text = "Created"
* activity = $v3-DataOperation#CREATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "BG"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: update-22
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/LabObservationMicrobiologyParasitologyDiagnosticReport)
* occurredDateTime = "2024-07-31"
* recorded = "2024-07-31T00:00:00Z"
* reason.text = "Last modified"
* activity = $v3-DataOperation#UPDATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "MZ"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: create-23
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/LabObservationMicrobiologyParasitologyObservation)
* occurredDateTime = "2022-06-30"
* recorded = "2022-06-30T00:00:00Z"
* reason.text = "Created"
* activity = $v3-DataOperation#CREATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "JL"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: update-23
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/LabObservationMicrobiologyParasitologyObservation)
* occurredDateTime = "2024-12-15"
* recorded = "2024-12-15T00:00:00Z"
* reason.text = "Last modified"
* activity = $v3-DataOperation#UPDATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "MZ"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: create-24
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/LabObservationMicrobiologyParasitologySpecimen)
* occurredDateTime = "2023-03-01"
* recorded = "2023-03-01T00:00:00Z"
* reason.text = "Created"
* activity = $v3-DataOperation#CREATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "BG"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: create-25
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/LabObservationMicrobiologyMycologyDiagnosticReport)
* occurredDateTime = "2023-03-01"
* recorded = "2023-03-01T00:00:00Z"
* reason.text = "Created"
* activity = $v3-DataOperation#CREATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "BG"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: update-25
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/LabObservationMicrobiologyMycologyDiagnosticReport)
* occurredDateTime = "2024-07-31"
* recorded = "2024-07-31T00:00:00Z"
* reason.text = "Last modified"
* activity = $v3-DataOperation#UPDATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "MZ"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: create-26
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/LabObservationMicrobiologyMycologyObservationfungus)
* occurredDateTime = "2023-03-01"
* recorded = "2023-03-01T00:00:00Z"
* reason.text = "Created"
* activity = $v3-DataOperation#CREATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "BG"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: update-26
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/LabObservationMicrobiologyMycologyObservationfungus)
* occurredDateTime = "2024-08-06"
* recorded = "2024-08-06T00:00:00Z"
* reason.text = "Last modified"
* activity = $v3-DataOperation#UPDATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "MZ"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: create-27
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/LabObservationMicrobiologyMycologyObservation)
* occurredDateTime = "2022-06-30"
* recorded = "2022-06-30T00:00:00Z"
* reason.text = "Created"
* activity = $v3-DataOperation#CREATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "JL"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: update-27
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/LabObservationMicrobiologyMycologyObservation)
* occurredDateTime = "2024-12-15"
* recorded = "2024-12-15T00:00:00Z"
* reason.text = "Last modified"
* activity = $v3-DataOperation#UPDATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "MZ"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: create-28
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/LabObservationMicrobiologyMycologySpecimen)
* occurredDateTime = "2023-03-01"
* recorded = "2023-03-01T00:00:00Z"
* reason.text = "Created"
* activity = $v3-DataOperation#CREATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "BG"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: create-29
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/LabObservationMicrobiologyMycobacteriologyDiagnosticReport)
* occurredDateTime = "2023-03-01"
* recorded = "2023-03-01T00:00:00Z"
* reason.text = "Created"
* activity = $v3-DataOperation#CREATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "BG"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: update-29
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/LabObservationMicrobiologyMycobacteriologyDiagnosticReport)
* occurredDateTime = "2024-07-31"
* recorded = "2024-07-31T00:00:00Z"
* reason.text = "Last modified"
* activity = $v3-DataOperation#UPDATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "MZ"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: create-30
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/LabObservationMicrobiologyMycobacteriologyObservationmycobact)
* occurredDateTime = "2023-03-01"
* recorded = "2023-03-01T00:00:00Z"
* reason.text = "Created"
* activity = $v3-DataOperation#CREATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "BG"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: update-30
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/LabObservationMicrobiologyMycobacteriologyObservationmycobact)
* occurredDateTime = "2024-08-06"
* recorded = "2024-08-06T00:00:00Z"
* reason.text = "Last modified"
* activity = $v3-DataOperation#UPDATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "MZ"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: create-31
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/LabObservationMicrobiologyMycobacteriologyObservation)
* occurredDateTime = "2022-06-30"
* recorded = "2022-06-30T00:00:00Z"
* reason.text = "Created"
* activity = $v3-DataOperation#CREATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "JL"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: update-31
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/LabObservationMicrobiologyMycobacteriologyObservation)
* occurredDateTime = "2024-12-15"
* recorded = "2024-12-15T00:00:00Z"
* reason.text = "Last modified"
* activity = $v3-DataOperation#UPDATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "MZ"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: create-32
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/LabObservationMicrobiologyMycobacteriologyObservationacidfast)
* occurredDateTime = "2023-04-04"
* recorded = "2023-04-04T00:00:00Z"
* reason.text = "Created"
* activity = $v3-DataOperation#CREATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "BG"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: create-33
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/LabObservationMicrobiologyMycobacteriologySpecimen)
* occurredDateTime = "2023-03-01"
* recorded = "2023-03-01T00:00:00Z"
* reason.text = "Created"
* activity = $v3-DataOperation#CREATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "BG"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: create-34
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/LabObservationMicrobiologyVirologyDiagnosticReport)
* occurredDateTime = "2023-03-01"
* recorded = "2023-03-01T00:00:00Z"
* reason.text = "Created"
* activity = $v3-DataOperation#CREATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "BG"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: update-34
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/LabObservationMicrobiologyVirologyDiagnosticReport)
* occurredDateTime = "2024-07-31"
* recorded = "2024-07-31T00:00:00Z"
* reason.text = "Last modified"
* activity = $v3-DataOperation#UPDATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "MZ"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: create-35
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/LabObservationMicrobiologyVirologyObservationvirus)
* occurredDateTime = "2023-03-01"
* recorded = "2023-03-01T00:00:00Z"
* reason.text = "Created"
* activity = $v3-DataOperation#CREATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "BG"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: update-35
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/LabObservationMicrobiologyVirologyObservationvirus)
* occurredDateTime = "2024-08-06"
* recorded = "2024-08-06T00:00:00Z"
* reason.text = "Last modified"
* activity = $v3-DataOperation#UPDATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "MZ"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: create-36
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/LabObservationMicrobiologyVirologyObservation)
* occurredDateTime = "2022-06-30"
* recorded = "2022-06-30T00:00:00Z"
* reason.text = "Created"
* activity = $v3-DataOperation#CREATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "JL"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: update-36
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/LabObservationMicrobiologyVirologyObservation)
* occurredDateTime = "2024-12-15"
* recorded = "2024-12-15T00:00:00Z"
* reason.text = "Last modified"
* activity = $v3-DataOperation#UPDATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "MZ"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: create-37
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/LabObservationMicrobiologyVirologySpecimen)
* occurredDateTime = "2023-03-01"
* recorded = "2023-03-01T00:00:00Z"
* reason.text = "Created"
* activity = $v3-DataOperation#CREATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "BG"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: create-38
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/DocumentReferenceDocumentReference)
* occurredDateTime = "2022-07-05"
* recorded = "2022-07-05T00:00:00Z"
* reason.text = "Created"
* activity = $v3-DataOperation#CREATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "JL"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: update-38
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/DocumentReferenceDocumentReference)
* occurredDateTime = "2024-10-24"
* recorded = "2024-10-24T00:00:00Z"
* reason.text = "Last modified"
* activity = $v3-DataOperation#UPDATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "MZ"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: create-39
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/DocumentReferenceBinary)
* occurredDateTime = "2024-02-10"
* recorded = "2024-02-10T00:00:00Z"
* reason.text = "Created"
* activity = $v3-DataOperation#CREATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "MZ"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: update-39
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/DocumentReferenceBinary)
* occurredDateTime = "2024-10-24"
* recorded = "2024-10-24T00:00:00Z"
* reason.text = "Last modified"
* activity = $v3-DataOperation#UPDATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "MZ"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: create-40
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/EncounterInpatientEncounter)
* occurredDateTime = "2022-01-01"
* recorded = "2022-01-01T00:00:00Z"
* reason.text = "Created"
* activity = $v3-DataOperation#CREATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "JL"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: update-40
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/EncounterInpatientEncounter)
* occurredDateTime = "2024-11-21"
* recorded = "2024-11-21T00:00:00Z"
* reason.text = "Last modified"
* activity = $v3-DataOperation#UPDATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "MZ"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: create-41
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/EncounterInpatientCondition)
* occurredDateTime = "2022-09-21"
* recorded = "2022-09-21T00:00:00Z"
* reason.text = "Created"
* activity = $v3-DataOperation#CREATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "JL"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: update-41
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/EncounterInpatientCondition)
* occurredDateTime = "2024-10-03"
* recorded = "2024-10-03T00:00:00Z"
* reason.text = "Last modified"
* activity = $v3-DataOperation#UPDATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "JL"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: create-42
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/EncounterOutpatient)
* occurredDateTime = "2022-01-01"
* recorded = "2022-01-01T00:00:00Z"
* reason.text = "Created"
* activity = $v3-DataOperation#CREATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "JL"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: update-42
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/EncounterOutpatient)
* occurredDateTime = "2024-11-21"
* recorded = "2024-11-21T00:00:00Z"
* reason.text = "Last modified"
* activity = $v3-DataOperation#UPDATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "MZ"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: create-43
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/ImmunizationImmunization)
* occurredDateTime = "2022-01-01"
* recorded = "2022-01-01T00:00:00Z"
* reason.text = "Created"
* activity = $v3-DataOperation#CREATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "JL"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: update-43
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/ImmunizationImmunization)
* occurredDateTime = "2024-10-16"
* recorded = "2024-10-16T00:00:00Z"
* reason.text = "Last modified"
* activity = $v3-DataOperation#UPDATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "MZ"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: create-44
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/ImmunizationObservation)
* occurredDateTime = "2023-06-14"
* recorded = "2023-06-14T00:00:00Z"
* reason.text = "Created"
* activity = $v3-DataOperation#CREATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "JL"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: update-44
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/ImmunizationObservation)
* occurredDateTime = "2024-08-25"
* recorded = "2024-08-25T00:00:00Z"
* reason.text = "Last modified"
* activity = $v3-DataOperation#UPDATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "MZ"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: create-45
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/ImplantableDevice)
* occurredDateTime = "2022-12-15"
* recorded = "2022-12-15T00:00:00Z"
* reason.text = "Created"
* activity = $v3-DataOperation#CREATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "BG"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: create-46
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/ImplantableDeviceALead)
* occurredDateTime = "2022-12-15"
* recorded = "2022-12-15T00:00:00Z"
* reason.text = "Created"
* activity = $v3-DataOperation#CREATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "BG"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: update-46
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/ImplantableDeviceALead)
* occurredDateTime = "2024-05-28"
* recorded = "2024-05-28T00:00:00Z"
* reason.text = "Last modified"
* activity = $v3-DataOperation#UPDATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "MZ"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: create-47
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/ImplantableDeviceDental)
* occurredDateTime = "2022-12-15"
* recorded = "2022-12-15T00:00:00Z"
* reason.text = "Created"
* activity = $v3-DataOperation#CREATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "BG"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: update-47
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/ImplantableDeviceDental)
* occurredDateTime = "2024-07-08"
* recorded = "2024-07-08T00:00:00Z"
* reason.text = "Last modified"
* activity = $v3-DataOperation#UPDATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "MZ"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: create-48
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/ImplantableDevicePacemaker)
* occurredDateTime = "2022-12-15"
* recorded = "2022-12-15T00:00:00Z"
* reason.text = "Created"
* activity = $v3-DataOperation#CREATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "BG"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: update-48
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/ImplantableDevicePacemaker)
* occurredDateTime = "2024-05-28"
* recorded = "2024-05-28T00:00:00Z"
* reason.text = "Last modified"
* activity = $v3-DataOperation#UPDATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "MZ"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: create-49
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/ImplantableDeviceProsthesis)
* occurredDateTime = "2022-12-15"
* recorded = "2022-12-15T00:00:00Z"
* reason.text = "Created"
* activity = $v3-DataOperation#CREATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "BG"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: update-49
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/ImplantableDeviceProsthesis)
* occurredDateTime = "2024-10-16"
* recorded = "2024-10-16T00:00:00Z"
* reason.text = "Last modified"
* activity = $v3-DataOperation#UPDATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "MZ"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: create-50
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/ImplantableDeviceTransmitter)
* occurredDateTime = "2022-12-15"
* recorded = "2022-12-15T00:00:00Z"
* reason.text = "Created"
* activity = $v3-DataOperation#CREATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "BG"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: update-50
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/ImplantableDeviceTransmitter)
* occurredDateTime = "2024-05-28"
* recorded = "2024-05-28T00:00:00Z"
* reason.text = "Last modified"
* activity = $v3-DataOperation#UPDATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "MZ"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: create-51
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/ImplantableDeviceVLead)
* occurredDateTime = "2022-12-15"
* recorded = "2022-12-15T00:00:00Z"
* reason.text = "Created"
* activity = $v3-DataOperation#CREATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "BG"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: update-51
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/ImplantableDeviceVLead)
* occurredDateTime = "2024-05-28"
* recorded = "2024-05-28T00:00:00Z"
* reason.text = "Last modified"
* activity = $v3-DataOperation#UPDATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "MZ"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: create-52
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/DiagnosticReportNoteCytopathologyDiagnosticReport)
* occurredDateTime = "2023-03-01"
* recorded = "2023-03-01T00:00:00Z"
* reason.text = "Created"
* activity = $v3-DataOperation#CREATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "BG"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: update-52
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/DiagnosticReportNoteCytopathologyDiagnosticReport)
* occurredDateTime = "2025-01-05"
* recorded = "2025-01-05T00:00:00Z"
* reason.text = "Last modified"
* activity = $v3-DataOperation#UPDATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "BG"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: create-53
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/DiagnosticReportNoteCytopathologySpecimen)
* occurredDateTime = "2024-01-18"
* recorded = "2024-01-18T00:00:00Z"
* reason.text = "Created"
* activity = $v3-DataOperation#CREATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "BG"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: update-53
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/DiagnosticReportNoteCytopathologySpecimen)
* occurredDateTime = "2025-01-06"
* recorded = "2025-01-06T00:00:00Z"
* reason.text = "Last modified"
* activity = $v3-DataOperation#UPDATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "BG"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: create-54
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/LabObservationDiagnosticReport)
* occurredDateTime = "2023-03-01"
* recorded = "2023-03-01T00:00:00Z"
* reason.text = "Created"
* activity = $v3-DataOperation#CREATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "BG"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: update-54
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/LabObservationDiagnosticReport)
* occurredDateTime = "2024-05-19"
* recorded = "2024-05-19T00:00:00Z"
* reason.text = "Last modified"
* activity = $v3-DataOperation#UPDATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "MZ"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: create-55
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/LabObservationObservation)
* occurredDateTime = "2022-06-30"
* recorded = "2022-06-30T00:00:00Z"
* reason.text = "Created"
* activity = $v3-DataOperation#CREATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "JL"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: update-55
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/LabObservationObservation)
* occurredDateTime = "2024-10-16"
* recorded = "2024-10-16T00:00:00Z"
* reason.text = "Last modified"
* activity = $v3-DataOperation#UPDATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "MZ"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: create-56
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/Location)
* occurredDateTime = "2022-04-18"
* recorded = "2022-04-18T00:00:00Z"
* reason.text = "Created"
* activity = $v3-DataOperation#CREATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "JL"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: update-56
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/Location)
* occurredDateTime = "2025-01-03"
* recorded = "2025-01-03T00:00:00Z"
* reason.text = "Last modified"
* activity = $v3-DataOperation#UPDATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "MZ"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: create-57
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/LungCancerScreening)
* occurredDateTime = "2023-10-31"
* recorded = "2023-10-31T00:00:00Z"
* reason.text = "Created"
* activity = $v3-DataOperation#CREATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "JL"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: update-57
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/LungCancerScreening)
* occurredDateTime = "2024-08-19"
* recorded = "2024-08-19T00:00:00Z"
* reason.text = "Last modified"
* activity = $v3-DataOperation#UPDATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "MZ"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: create-58
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/LungCancerScreeningDRNA)
* occurredDateTime = "2023-10-31"
* recorded = "2023-10-31T00:00:00Z"
* reason.text = "Created"
* activity = $v3-DataOperation#CREATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "JL"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: update-58
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/LungCancerScreeningDRNA)
* occurredDateTime = "2024-08-19"
* recorded = "2024-08-19T00:00:00Z"
* reason.text = "Last modified"
* activity = $v3-DataOperation#UPDATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "MZ"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: create-59
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/LungCancerScreeningCRNA)
* occurredDateTime = "2023-10-31"
* recorded = "2023-10-31T00:00:00Z"
* reason.text = "Created"
* activity = $v3-DataOperation#CREATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "JL"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: update-59
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/LungCancerScreeningCRNA)
* occurredDateTime = "2024-08-19"
* recorded = "2024-08-19T00:00:00Z"
* reason.text = "Last modified"
* activity = $v3-DataOperation#UPDATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "MZ"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: create-60
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/MedicationRequestUnsigned)
* occurredDateTime = "2023-05-15"
* recorded = "2023-05-15T00:00:00Z"
* reason.text = "Created"
* activity = $v3-DataOperation#CREATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "JL"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: update-60
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/MedicationRequestUnsigned)
* occurredDateTime = "2024-10-17"
* recorded = "2024-10-17T00:00:00Z"
* reason.text = "Last modified"
* activity = $v3-DataOperation#UPDATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "MZ"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: create-61
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/MedicationRequestNonVA)
* occurredDateTime = "2023-05-15"
* recorded = "2023-05-15T00:00:00Z"
* reason.text = "Created"
* activity = $v3-DataOperation#CREATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "JL"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: update-61
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/MedicationRequestNonVA)
* occurredDateTime = "2024-10-16"
* recorded = "2024-10-16T00:00:00Z"
* reason.text = "Last modified"
* activity = $v3-DataOperation#UPDATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "MZ"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: create-62
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/MedicationRequestOutpatient)
* occurredDateTime = "2022-06-05"
* recorded = "2022-06-05T00:00:00Z"
* reason.text = "Created"
* activity = $v3-DataOperation#CREATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "JL"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: update-62
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/MedicationRequestOutpatient)
* occurredDateTime = "2024-10-15"
* recorded = "2024-10-15T00:00:00Z"
* reason.text = "Last modified"
* activity = $v3-DataOperation#UPDATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "MZ"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: create-63
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/MedicationDispenseOriginal)
* occurredDateTime = "2022-05-15"
* recorded = "2022-05-15T00:00:00Z"
* reason.text = "Created"
* activity = $v3-DataOperation#CREATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "JL"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: update-63
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/MedicationDispenseOriginal)
* occurredDateTime = "2024-11-10"
* recorded = "2024-11-10T00:00:00Z"
* reason.text = "Last modified"
* activity = $v3-DataOperation#UPDATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "MZ"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: create-64
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/MedicationDispenseRefill)
* occurredDateTime = "2022-06-05"
* recorded = "2022-06-05T00:00:00Z"
* reason.text = "Created"
* activity = $v3-DataOperation#CREATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "JL"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: update-64
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/MedicationDispenseRefill)
* occurredDateTime = "2024-11-03"
* recorded = "2024-11-03T00:00:00Z"
* reason.text = "Last modified"
* activity = $v3-DataOperation#UPDATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "BG"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: create-65
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/MedicationDispensePartial)
* occurredDateTime = "2022-05-15"
* recorded = "2022-05-15T00:00:00Z"
* reason.text = "Created"
* activity = $v3-DataOperation#CREATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "JL"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: update-65
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/MedicationDispensePartial)
* occurredDateTime = "2024-11-03"
* recorded = "2024-11-03T00:00:00Z"
* reason.text = "Last modified"
* activity = $v3-DataOperation#UPDATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "BG"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: create-66
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/ObservationEXAM)
* occurredDateTime = "2023-05-30"
* recorded = "2023-05-30T00:00:00Z"
* reason.text = "Created"
* activity = $v3-DataOperation#CREATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "MZ"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: update-66
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/ObservationEXAM)
* occurredDateTime = "2024-10-15"
* recorded = "2024-10-15T00:00:00Z"
* reason.text = "Last modified"
* activity = $v3-DataOperation#UPDATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "MZ"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: create-67
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/Organization)
* occurredDateTime = "2022-11-17"
* recorded = "2022-11-17T00:00:00Z"
* reason.text = "Created"
* activity = $v3-DataOperation#CREATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "MVDZ"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: update-67
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/Organization)
* occurredDateTime = "2025-01-16"
* recorded = "2025-01-16T00:00:00Z"
* reason.text = "Last modified"
* activity = $v3-DataOperation#UPDATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "MZ"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: create-68
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/Practitioner)
* occurredDateTime = "2022-01-01"
* recorded = "2022-01-01T00:00:00Z"
* reason.text = "Created"
* activity = $v3-DataOperation#CREATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "JL"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: update-68
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/Practitioner)
* occurredDateTime = "2024-05-28"
* recorded = "2024-05-28T00:00:00Z"
* reason.text = "Last modified"
* activity = $v3-DataOperation#UPDATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "MZ"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: create-69
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/PractitionerRole)
* occurredDateTime = "2022-01-01"
* recorded = "2022-01-01T00:00:00Z"
* reason.text = "Created"
* activity = $v3-DataOperation#CREATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "JL"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: update-69
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/PractitionerRole)
* occurredDateTime = "2024-11-02"
* recorded = "2024-11-02T00:00:00Z"
* reason.text = "Last modified"
* activity = $v3-DataOperation#UPDATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "MZ"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: create-70
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/ProcedureOutpatient)
* occurredDateTime = "2022-12-08"
* recorded = "2022-12-08T00:00:00Z"
* reason.text = "Created"
* activity = $v3-DataOperation#CREATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "MVDZ"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: update-70
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/ProcedureOutpatient)
* occurredDateTime = "2024-10-15"
* recorded = "2024-10-15T00:00:00Z"
* reason.text = "Last modified"
* activity = $v3-DataOperation#UPDATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "MZ"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: create-71
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/ProcedureRadiology)
* occurredDateTime = "2023-03-30"
* recorded = "2023-03-30T00:00:00Z"
* reason.text = "Created"
* activity = $v3-DataOperation#CREATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "BG"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: update-71
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/ProcedureRadiology)
* occurredDateTime = "2024-10-15"
* recorded = "2024-10-15T00:00:00Z"
* reason.text = "Last modified"
* activity = $v3-DataOperation#UPDATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "MZ"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: create-72
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/ProcedureSurgeryProcedure)
* occurredDateTime = "2022-11-26"
* recorded = "2022-11-26T00:00:00Z"
* reason.text = "Created"
* activity = $v3-DataOperation#CREATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "MVDZ"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: update-72
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/ProcedureSurgeryProcedure)
* occurredDateTime = "2024-10-18"
* recorded = "2024-10-18T00:00:00Z"
* reason.text = "Last modified"
* activity = $v3-DataOperation#UPDATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "MZ"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: create-73
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/ProcedureSurgeryLocationOR)
* occurredDateTime = "2024-10-18"
* recorded = "2024-10-18T00:00:00Z"
* reason.text = "Created"
* activity = $v3-DataOperation#CREATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "MZ"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: create-74
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/SmokingStatusObservation)
* occurredDateTime = "2022-11-17"
* recorded = "2022-11-17T00:00:00Z"
* reason.text = "Created"
* activity = $v3-DataOperation#CREATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "BG"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: update-74
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/SmokingStatusObservation)
* occurredDateTime = "2024-10-15"
* recorded = "2024-10-15T00:00:00Z"
* reason.text = "Last modified"
* activity = $v3-DataOperation#UPDATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "MZ"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: create-75
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/VitalSigns)
* occurredDateTime = "2022-04-04"
* recorded = "2022-04-04T00:00:00Z"
* reason.text = "Created"
* activity = $v3-DataOperation#CREATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "JL"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: update-75
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/VitalSigns)
* occurredDateTime = "2024-11-02"
* recorded = "2024-11-02T00:00:00Z"
* reason.text = "Last modified"
* activity = $v3-DataOperation#UPDATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "MZ"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: create-76
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/VitalSignsBP)
* occurredDateTime = "2022-04-04"
* recorded = "2022-04-04T00:00:00Z"
* reason.text = "Created"
* activity = $v3-DataOperation#CREATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "JL"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: update-76
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/VitalSignsBP)
* occurredDateTime = "2024-11-11"
* recorded = "2024-11-11T00:00:00Z"
* reason.text = "Last modified"
* activity = $v3-DataOperation#UPDATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "MZ"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: create-77
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/VitalSignsSpO2)
* occurredDateTime = "2022-04-04"
* recorded = "2022-04-04T00:00:00Z"
* reason.text = "Created"
* activity = $v3-DataOperation#CREATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "JL"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: update-77
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/VitalSignsSpO2)
* occurredDateTime = "2024-11-02"
* recorded = "2024-11-02T00:00:00Z"
* reason.text = "Last modified"
* activity = $v3-DataOperation#UPDATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "MZ"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: create-78
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/ObservationImagingResultEcho)
* occurredDateTime = "2023-05-10"
* recorded = "2023-05-10T00:00:00Z"
* reason.text = "Created"
* activity = $v3-DataOperation#CREATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "BG"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: update-78
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/ObservationImagingResultEcho)
* occurredDateTime = "2024-10-15"
* recorded = "2024-10-15T00:00:00Z"
* reason.text = "Last modified"
* activity = $v3-DataOperation#UPDATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "MZ"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: create-79
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/ObservationImagingResultEKG)
* occurredDateTime = "2023-05-10"
* recorded = "2023-05-10T00:00:00Z"
* reason.text = "Created"
* activity = $v3-DataOperation#CREATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "BG"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: update-79
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/ObservationImagingResultEKG)
* occurredDateTime = "2024-10-15"
* recorded = "2024-10-15T00:00:00Z"
* reason.text = "Last modified"
* activity = $v3-DataOperation#UPDATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "MZ"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: create-80
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/ObservationImagingResultRadNuc)
* occurredDateTime = "2023-05-10"
* recorded = "2023-05-10T00:00:00Z"
* reason.text = "Created"
* activity = $v3-DataOperation#CREATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "BG"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: update-80
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/ObservationImagingResultRadNuc)
* occurredDateTime = "2024-10-18"
* recorded = "2024-10-18T00:00:00Z"
* reason.text = "Last modified"
* activity = $v3-DataOperation#UPDATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "MZ"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: create-81
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/ObservationImagingResult)
* occurredDateTime = "2023-05-10"
* recorded = "2023-05-10T00:00:00Z"
* reason.text = "Created"
* activity = $v3-DataOperation#CREATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "BG"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: create-82
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/MedicationRequestPending)
* occurredDateTime = "2024-02-23"
* recorded = "2024-02-23T00:00:00Z"
* reason.text = "Created"
* activity = $v3-DataOperation#CREATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "JL"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: update-82
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/MedicationRequestPending)
* occurredDateTime = "2024-10-16"
* recorded = "2024-10-16T00:00:00Z"
* reason.text = "Last modified"
* activity = $v3-DataOperation#UPDATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "MZ"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: create-83
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/DebtPortalAccount)
* occurredDateTime = "2024-09-10"
* recorded = "2024-09-10T00:00:00Z"
* reason.text = "Created"
* activity = $v3-DataOperation#CREATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "BG"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: update-83
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/DebtPortalAccount)
* occurredDateTime = "2025-01-03"
* recorded = "2025-01-03T00:00:00Z"
* reason.text = "Last modified"
* activity = $v3-DataOperation#UPDATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "MZ"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: create-84
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/DebtPortalInvoice)
* occurredDateTime = "2024-05-02"
* recorded = "2024-05-02T00:00:00Z"
* reason.text = "Created"
* activity = $v3-DataOperation#CREATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "BG"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: update-84
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/DebtPortalInvoice)
* occurredDateTime = "2025-01-24"
* recorded = "2025-01-24T00:00:00Z"
* reason.text = "Last modified"
* activity = $v3-DataOperation#UPDATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "BG"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: create-85
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/DebtPortalPatient)
* occurredDateTime = "2024-05-02"
* recorded = "2024-05-02T00:00:00Z"
* reason.text = "Created"
* activity = $v3-DataOperation#CREATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "BG"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: update-85
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/DebtPortalPatient)
* occurredDateTime = "2025-01-03"
* recorded = "2025-01-03T00:00:00Z"
* reason.text = "Last modified"
* activity = $v3-DataOperation#UPDATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "MZ"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: create-86
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/DebtPortalChargeItemcharges)
* occurredDateTime = "2024-05-06"
* recorded = "2024-05-06T00:00:00Z"
* reason.text = "Created"
* activity = $v3-DataOperation#CREATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "BG"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: update-86
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/DebtPortalChargeItemcharges)
* occurredDateTime = "2025-02-18"
* recorded = "2025-02-18T00:00:00Z"
* reason.text = "Last modified"
* activity = $v3-DataOperation#UPDATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "BG"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: create-87
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/DebtPortalChargeItemremoved)
* occurredDateTime = "2024-10-24"
* recorded = "2024-10-24T00:00:00Z"
* reason.text = "Created"
* activity = $v3-DataOperation#CREATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "BG"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: update-87
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/DebtPortalChargeItemremoved)
* occurredDateTime = "2025-02-06"
* recorded = "2025-02-06T00:00:00Z"
* reason.text = "Last modified"
* activity = $v3-DataOperation#UPDATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "BG"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: create-88
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/DebtPortalChargeIteminterest)
* occurredDateTime = "2024-08-28"
* recorded = "2024-08-28T00:00:00Z"
* reason.text = "Created"
* activity = $v3-DataOperation#CREATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "BG"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: update-88
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/DebtPortalChargeIteminterest)
* occurredDateTime = "2025-01-03"
* recorded = "2025-01-03T00:00:00Z"
* reason.text = "Last modified"
* activity = $v3-DataOperation#UPDATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "MZ"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: create-89
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/DebtPortalPaymentReconciliation)
* occurredDateTime = "2024-08-26"
* recorded = "2024-08-26T00:00:00Z"
* reason.text = "Created"
* activity = $v3-DataOperation#CREATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "BG"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: update-89
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/DebtPortalPaymentReconciliation)
* occurredDateTime = "2025-01-03"
* recorded = "2025-01-03T00:00:00Z"
* reason.text = "Last modified"
* activity = $v3-DataOperation#UPDATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "MZ"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: create-90
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/MedRefillRequestMHVTask)
* occurredDateTime = "2024-05-19"
* recorded = "2024-05-19T00:00:00Z"
* reason.text = "Created"
* activity = $v3-DataOperation#CREATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "JL"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: update-90
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/MedRefillRequestMHVTask)
* occurredDateTime = "2024-08-13"
* recorded = "2024-08-13T00:00:00Z"
* reason.text = "Last modified"
* activity = $v3-DataOperation#UPDATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "MZ"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: create-91
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/MedRefillRequestMHVProvenancereview)
* occurredDateTime = "2024-05-19"
* recorded = "2024-05-19T00:00:00Z"
* reason.text = "Created"
* activity = $v3-DataOperation#CREATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "JL"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: update-91
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/MedRefillRequestMHVProvenancereview)
* occurredDateTime = "2024-07-26"
* recorded = "2024-07-26T00:00:00Z"
* reason.text = "Last modified"
* activity = $v3-DataOperation#UPDATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "MZ"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: create-92
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/MedRefillRequestMHVProvenancecreate)
* occurredDateTime = "2024-05-19"
* recorded = "2024-05-19T00:00:00Z"
* reason.text = "Created"
* activity = $v3-DataOperation#CREATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "JL"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: update-92
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/MedRefillRequestMHVProvenancecreate)
* occurredDateTime = "2024-07-26"
* recorded = "2024-07-26T00:00:00Z"
* reason.text = "Last modified"
* activity = $v3-DataOperation#UPDATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "MZ"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: create-93
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/VAERSPatient)
* occurredDateTime = "2024-06-27"
* recorded = "2024-06-27T00:00:00Z"
* reason.text = "Created"
* activity = $v3-DataOperation#CREATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "JL"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: update-93
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/VAERSPatient)
* occurredDateTime = "2024-09-14"
* recorded = "2024-09-14T00:00:00Z"
* reason.text = "Last modified"
* activity = $v3-DataOperation#UPDATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "MZ"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: create-94
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/VAERSImmunizationvac1)
* occurredDateTime = "2024-08-13"
* recorded = "2024-08-13T00:00:00Z"
* reason.text = "Created"
* activity = $v3-DataOperation#CREATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "MZ"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: update-94
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/VAERSImmunizationvac1)
* occurredDateTime = "2024-11-04"
* recorded = "2024-11-04T00:00:00Z"
* reason.text = "Last modified"
* activity = $v3-DataOperation#UPDATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "MZ"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: create-95
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/VAERSImmunizationvac2)
* occurredDateTime = "2024-08-13"
* recorded = "2024-08-13T00:00:00Z"
* reason.text = "Created"
* activity = $v3-DataOperation#CREATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "MZ"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: update-95
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/VAERSImmunizationvac2)
* occurredDateTime = "2024-11-04"
* recorded = "2024-11-04T00:00:00Z"
* reason.text = "Last modified"
* activity = $v3-DataOperation#UPDATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "MZ"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: create-96
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/VAERSImmunizationvac3)
* occurredDateTime = "2024-08-13"
* recorded = "2024-08-13T00:00:00Z"
* reason.text = "Created"
* activity = $v3-DataOperation#CREATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "MZ"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: update-96
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/VAERSImmunizationvac3)
* occurredDateTime = "2024-11-04"
* recorded = "2024-11-04T00:00:00Z"
* reason.text = "Last modified"
* activity = $v3-DataOperation#UPDATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "MZ"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: create-97
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/VAERSImmunizationvac4)
* occurredDateTime = "2024-08-13"
* recorded = "2024-08-13T00:00:00Z"
* reason.text = "Created"
* activity = $v3-DataOperation#CREATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "MZ"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: update-97
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/VAERSImmunizationvac4)
* occurredDateTime = "2024-11-04"
* recorded = "2024-11-04T00:00:00Z"
* reason.text = "Last modified"
* activity = $v3-DataOperation#UPDATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "MZ"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: create-98
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/VAERSAdverseEvent)
* occurredDateTime = "2024-08-13"
* recorded = "2024-08-13T00:00:00Z"
* reason.text = "Created"
* activity = $v3-DataOperation#CREATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "MZ"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: update-98
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/VAERSAdverseEvent)
* occurredDateTime = "2024-11-01"
* recorded = "2024-11-01T00:00:00Z"
* reason.text = "Last modified"
* activity = $v3-DataOperation#UPDATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "MZ"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: create-99
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/VAERSImmunizationpvac1)
* occurredDateTime = "2024-08-13"
* recorded = "2024-08-13T00:00:00Z"
* reason.text = "Created"
* activity = $v3-DataOperation#CREATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "MZ"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: update-99
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/VAERSImmunizationpvac1)
* occurredDateTime = "2024-11-04"
* recorded = "2024-11-04T00:00:00Z"
* reason.text = "Last modified"
* activity = $v3-DataOperation#UPDATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "MZ"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: create-100
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/VAERSImmunizationpvac2)
* occurredDateTime = "2024-08-13"
* recorded = "2024-08-13T00:00:00Z"
* reason.text = "Created"
* activity = $v3-DataOperation#CREATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "MZ"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: update-100
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/VAERSImmunizationpvac2)
* occurredDateTime = "2024-11-04"
* recorded = "2024-11-04T00:00:00Z"
* reason.text = "Last modified"
* activity = $v3-DataOperation#UPDATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "MZ"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: create-101
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/VAERSImmunizationpvac3)
* occurredDateTime = "2024-08-13"
* recorded = "2024-08-13T00:00:00Z"
* reason.text = "Created"
* activity = $v3-DataOperation#CREATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "MZ"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: update-101
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/VAERSImmunizationpvac3)
* occurredDateTime = "2024-11-04"
* recorded = "2024-11-04T00:00:00Z"
* reason.text = "Last modified"
* activity = $v3-DataOperation#UPDATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "MZ"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: create-102
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/VAERSImmunizationpvac4)
* occurredDateTime = "2024-08-13"
* recorded = "2024-08-13T00:00:00Z"
* reason.text = "Created"
* activity = $v3-DataOperation#CREATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "MZ"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: update-102
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/VAERSImmunizationpvac4)
* occurredDateTime = "2024-11-04"
* recorded = "2024-11-04T00:00:00Z"
* reason.text = "Last modified"
* activity = $v3-DataOperation#UPDATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "MZ"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: create-103
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/VAERSBundle)
* occurredDateTime = "2024-08-16"
* recorded = "2024-08-16T00:00:00Z"
* reason.text = "Created"
* activity = $v3-DataOperation#CREATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "MZ"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: create-104
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/VAERSabstract)
* occurredDateTime = "2024-08-13"
* recorded = "2024-08-13T00:00:00Z"
* reason.text = "Created"
* activity = $v3-DataOperation#CREATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "MZ"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: update-104
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/VAERSabstract)
* occurredDateTime = "2024-11-04"
* recorded = "2024-11-04T00:00:00Z"
* reason.text = "Last modified"
* activity = $v3-DataOperation#UPDATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "MZ"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: create-105
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/DecisionPrecisionPlusObservationsmoking)
* occurredDateTime = "2025-04-15"
* recorded = "2025-04-15T00:00:00Z"
* reason.text = "Created"
* activity = $v3-DataOperation#CREATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "JL"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: create-106
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/DecisionPrecisionPlusObservationsocial)
* occurredDateTime = "2025-04-15"
* recorded = "2025-04-15T00:00:00Z"
* reason.text = "Created"
* activity = $v3-DataOperation#CREATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "JL"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: create-107
InstanceOf: Provenance
Usage: #inline
* target = Reference(StructureDefinition/DecisionPrecisionPlusabstract)
* occurredDateTime = "2025-04-15"
* recorded = "2025-04-15T00:00:00Z"
* reason.text = "Created"
* activity = $v3-DataOperation#CREATE
* agent[0].type = $provenance-participant-type#author
* agent[=].who.display = "JL"
* agent[+].type = $provenance-participant-type#custodian
* agent[=].who.display = "KBS"

Instance: hx
InstanceOf: Bundle
Usage: #definition
* type = #collection
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/create-0"
* entry[=].resource = create-0
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/update-0"
* entry[=].resource = update-0
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/create-1"
* entry[=].resource = create-1
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/update-1"
* entry[=].resource = update-1
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/create-2"
* entry[=].resource = create-2
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/update-2"
* entry[=].resource = update-2
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/create-3"
* entry[=].resource = create-3
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/update-3"
* entry[=].resource = update-3
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/create-4"
* entry[=].resource = create-4
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/update-4"
* entry[=].resource = update-4
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/create-5"
* entry[=].resource = create-5
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/update-5"
* entry[=].resource = update-5
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/create-6"
* entry[=].resource = create-6
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/update-6"
* entry[=].resource = update-6
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/create-7"
* entry[=].resource = create-7
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/update-7"
* entry[=].resource = update-7
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/create-8"
* entry[=].resource = create-8
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/update-8"
* entry[=].resource = update-8
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/create-9"
* entry[=].resource = create-9
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/update-9"
* entry[=].resource = update-9
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/create-10"
* entry[=].resource = create-10
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/update-10"
* entry[=].resource = update-10
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/create-11"
* entry[=].resource = create-11
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/update-11"
* entry[=].resource = update-11
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/create-12"
* entry[=].resource = create-12
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/update-12"
* entry[=].resource = update-12
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/create-13"
* entry[=].resource = create-13
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/update-13"
* entry[=].resource = update-13
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/create-14"
* entry[=].resource = create-14
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/create-15"
* entry[=].resource = create-15
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/update-15"
* entry[=].resource = update-15
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/create-16"
* entry[=].resource = create-16
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/update-16"
* entry[=].resource = update-16
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/create-17"
* entry[=].resource = create-17
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/update-17"
* entry[=].resource = update-17
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/create-18"
* entry[=].resource = create-18
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/update-18"
* entry[=].resource = update-18
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/create-19"
* entry[=].resource = create-19
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/create-20"
* entry[=].resource = create-20
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/create-21"
* entry[=].resource = create-21
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/create-22"
* entry[=].resource = create-22
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/update-22"
* entry[=].resource = update-22
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/create-23"
* entry[=].resource = create-23
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/update-23"
* entry[=].resource = update-23
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/create-24"
* entry[=].resource = create-24
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/create-25"
* entry[=].resource = create-25
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/update-25"
* entry[=].resource = update-25
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/create-26"
* entry[=].resource = create-26
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/update-26"
* entry[=].resource = update-26
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/create-27"
* entry[=].resource = create-27
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/update-27"
* entry[=].resource = update-27
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/create-28"
* entry[=].resource = create-28
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/create-29"
* entry[=].resource = create-29
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/update-29"
* entry[=].resource = update-29
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/create-30"
* entry[=].resource = create-30
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/update-30"
* entry[=].resource = update-30
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/create-31"
* entry[=].resource = create-31
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/update-31"
* entry[=].resource = update-31
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/create-32"
* entry[=].resource = create-32
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/create-33"
* entry[=].resource = create-33
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/create-34"
* entry[=].resource = create-34
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/update-34"
* entry[=].resource = update-34
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/create-35"
* entry[=].resource = create-35
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/update-35"
* entry[=].resource = update-35
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/create-36"
* entry[=].resource = create-36
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/update-36"
* entry[=].resource = update-36
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/create-37"
* entry[=].resource = create-37
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/create-38"
* entry[=].resource = create-38
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/update-38"
* entry[=].resource = update-38
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/create-39"
* entry[=].resource = create-39
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/update-39"
* entry[=].resource = update-39
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/create-40"
* entry[=].resource = create-40
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/update-40"
* entry[=].resource = update-40
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/create-41"
* entry[=].resource = create-41
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/update-41"
* entry[=].resource = update-41
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/create-42"
* entry[=].resource = create-42
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/update-42"
* entry[=].resource = update-42
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/create-43"
* entry[=].resource = create-43
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/update-43"
* entry[=].resource = update-43
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/create-44"
* entry[=].resource = create-44
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/update-44"
* entry[=].resource = update-44
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/create-45"
* entry[=].resource = create-45
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/create-46"
* entry[=].resource = create-46
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/update-46"
* entry[=].resource = update-46
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/create-47"
* entry[=].resource = create-47
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/update-47"
* entry[=].resource = update-47
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/create-48"
* entry[=].resource = create-48
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/update-48"
* entry[=].resource = update-48
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/create-49"
* entry[=].resource = create-49
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/update-49"
* entry[=].resource = update-49
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/create-50"
* entry[=].resource = create-50
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/update-50"
* entry[=].resource = update-50
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/create-51"
* entry[=].resource = create-51
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/update-51"
* entry[=].resource = update-51
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/create-52"
* entry[=].resource = create-52
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/update-52"
* entry[=].resource = update-52
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/create-53"
* entry[=].resource = create-53
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/update-53"
* entry[=].resource = update-53
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/create-54"
* entry[=].resource = create-54
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/update-54"
* entry[=].resource = update-54
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/create-55"
* entry[=].resource = create-55
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/update-55"
* entry[=].resource = update-55
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/create-56"
* entry[=].resource = create-56
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/update-56"
* entry[=].resource = update-56
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/create-57"
* entry[=].resource = create-57
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/update-57"
* entry[=].resource = update-57
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/create-58"
* entry[=].resource = create-58
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/update-58"
* entry[=].resource = update-58
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/create-59"
* entry[=].resource = create-59
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/update-59"
* entry[=].resource = update-59
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/create-60"
* entry[=].resource = create-60
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/update-60"
* entry[=].resource = update-60
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/create-61"
* entry[=].resource = create-61
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/update-61"
* entry[=].resource = update-61
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/create-62"
* entry[=].resource = create-62
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/update-62"
* entry[=].resource = update-62
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/create-63"
* entry[=].resource = create-63
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/update-63"
* entry[=].resource = update-63
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/create-64"
* entry[=].resource = create-64
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/update-64"
* entry[=].resource = update-64
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/create-65"
* entry[=].resource = create-65
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/update-65"
* entry[=].resource = update-65
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/create-66"
* entry[=].resource = create-66
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/update-66"
* entry[=].resource = update-66
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/create-67"
* entry[=].resource = create-67
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/update-67"
* entry[=].resource = update-67
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/create-68"
* entry[=].resource = create-68
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/update-68"
* entry[=].resource = update-68
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/create-69"
* entry[=].resource = create-69
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/update-69"
* entry[=].resource = update-69
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/create-70"
* entry[=].resource = create-70
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/update-70"
* entry[=].resource = update-70
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/create-71"
* entry[=].resource = create-71
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/update-71"
* entry[=].resource = update-71
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/create-72"
* entry[=].resource = create-72
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/update-72"
* entry[=].resource = update-72
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/create-73"
* entry[=].resource = create-73
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/create-74"
* entry[=].resource = create-74
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/update-74"
* entry[=].resource = update-74
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/create-75"
* entry[=].resource = create-75
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/update-75"
* entry[=].resource = update-75
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/create-76"
* entry[=].resource = create-76
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/update-76"
* entry[=].resource = update-76
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/create-77"
* entry[=].resource = create-77
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/update-77"
* entry[=].resource = update-77
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/create-78"
* entry[=].resource = create-78
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/update-78"
* entry[=].resource = update-78
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/create-79"
* entry[=].resource = create-79
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/update-79"
* entry[=].resource = update-79
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/create-80"
* entry[=].resource = create-80
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/update-80"
* entry[=].resource = update-80
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/create-81"
* entry[=].resource = create-81
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/create-82"
* entry[=].resource = create-82
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/update-82"
* entry[=].resource = update-82
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/create-83"
* entry[=].resource = create-83
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/update-83"
* entry[=].resource = update-83
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/create-84"
* entry[=].resource = create-84
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/update-84"
* entry[=].resource = update-84
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/create-85"
* entry[=].resource = create-85
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/update-85"
* entry[=].resource = update-85
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/create-86"
* entry[=].resource = create-86
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/update-86"
* entry[=].resource = update-86
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/create-87"
* entry[=].resource = create-87
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/update-87"
* entry[=].resource = update-87
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/create-88"
* entry[=].resource = create-88
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/update-88"
* entry[=].resource = update-88
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/create-89"
* entry[=].resource = create-89
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/update-89"
* entry[=].resource = update-89
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/create-90"
* entry[=].resource = create-90
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/update-90"
* entry[=].resource = update-90
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/create-91"
* entry[=].resource = create-91
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/update-91"
* entry[=].resource = update-91
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/create-92"
* entry[=].resource = create-92
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/update-92"
* entry[=].resource = update-92
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/create-93"
* entry[=].resource = create-93
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/update-93"
* entry[=].resource = update-93
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/create-94"
* entry[=].resource = create-94
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/update-94"
* entry[=].resource = update-94
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/create-95"
* entry[=].resource = create-95
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/update-95"
* entry[=].resource = update-95
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/create-96"
* entry[=].resource = create-96
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/update-96"
* entry[=].resource = update-96
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/create-97"
* entry[=].resource = create-97
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/update-97"
* entry[=].resource = update-97
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/create-98"
* entry[=].resource = create-98
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/update-98"
* entry[=].resource = update-98
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/create-99"
* entry[=].resource = create-99
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/update-99"
* entry[=].resource = update-99
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/create-100"
* entry[=].resource = create-100
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/update-100"
* entry[=].resource = update-100
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/create-101"
* entry[=].resource = create-101
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/update-101"
* entry[=].resource = update-101
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/create-102"
* entry[=].resource = create-102
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/update-102"
* entry[=].resource = update-102
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/create-103"
* entry[=].resource = create-103
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/create-104"
* entry[=].resource = create-104
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/update-104"
* entry[=].resource = update-104
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/create-105"
* entry[=].resource = create-105
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/create-106"
* entry[=].resource = create-106
* entry[+].fullUrl = "http://va.gov/fhir/Provenance/create-107"
* entry[=].resource = create-107