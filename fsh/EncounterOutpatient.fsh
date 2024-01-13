Profile: EncounterOutpatient
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-encounter
Id: EncounterOutpatient
Title: "Encounter: Outpatient"
Description: "This StructureDefinition contains the maps for VistA file VISIT (#9000010) to us-core-encounter"
* ^status = #draft
* identifier.value and status and serviceType.coding.code and subject and period.start and period.end and reasonCode.coding.code and location.location and serviceProvider and participant.individual and type MS
* serviceProvider only Reference(http://hl7.org/fhir/us/core/StructureDefinition/us-core-organization)

Mapping: vista-to-EncounterOutpatient
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: EncounterOutpatient
* identifier.value -> "429: source value from VISIT - VISIT ID (#9000010-15001)"
* status -> "430: transform using planned on VISIT - VISIT/ADMIT DATE&TIME (#9000010-.01) case null or > now"
* status -> "431: transform using in-progress on VISIT - VISIT/ADMIT DATE&TIME (#9000010-.01) case not null, < now, .18 null" "tweaked case logic 9/21"
* status -> "432: transform using finished on VISIT - CHECK OUT DATE&TIME (#9000010-.18) case not null, < now" "tweaked case logic 9/21"
* serviceType.coding.code -> "439: source value from VISIT - SERVICE CATEGORY (#9000010-.07)" "MvdZ QA"
* subject -> "440: source value from VISIT - PATIENT NAME (#9000010-.05)"
* period.start -> "443: source value from VISIT - VISIT/ADMIT DATE&TIME (#9000010-.01)"
* period.end -> "444: source value from VISIT - CHECK OUT DATE&TIME (#9000010-.18)"
* reasonCode.coding.code -> "447: source value from V POV - POV > ICD DIAGNOSIS - CODE NUMBER (#9000010.07-.01 > 80-.01)" "MvdZ QA"
* location.location -> "458: source value from VISIT - DSS ID (#9000010-.08) case stop"
* location.location -> "459: source value from VISIT - HOSPITAL LOCATION (#9000010-.22) case location"
* serviceProvider -> "1599: reference from VISIT - LOC. OF ENCOUNTER > LOCATION - POINTER TO INSTITUTION FILE (#4) (#9000010-.06 > 9999999.06-.1)"
* participant.individual -> "1614: reference from V PROVIDER - PROVIDER > NEW PERSON (#9000010.06-.01 > 200-)"
* type -> "1615: source value from V CPT - CPT > CPT (#9000010.18-.01 > 81-)"

Mapping: cdw-to-EncounterOutpatient
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: EncounterOutpatient
* identifier.value -> "Outpat.Visit.VisitIdentifier\nOutpat.Workload.VisitIdentifier"
* status -> "Outpat.Visit.VisitDateTime\nOutpat.Workload.VisitDateTime"
* status -> "Outpat.Visit.VisitDateTime\nOutpat.Workload.VisitDateTime"
* status -> "Outpat.Visit.CheckOutDateTime\nOutpat.Workload.CheckOutDateTime"
* serviceType.coding.code -> "Outpat.Visit.ServiceCategory\nOutpat.Workload.ServiceCategory"
* period.start -> "Outpat.Visit.VisitDateTime\nOutpat.Workload.VisitDateTime"
* period.end -> "Outpat.Visit.CheckOutDateTime\nOutpat.Workload.CheckOutDateTime"
* reasonCode.coding.code -> "Dim.ICD10.ICD10Code\nDim.ICD9.ICD9Code"