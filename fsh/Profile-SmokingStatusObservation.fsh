Profile: SmokingStatusObservation
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-smokingstatus
Id: SmokingStatusObservation
Title: "Smoking Status Observation"
Description: "This StructureDefinition contains the maps for VistA file V HEALTH FACTORS (#9000010.23) to us-core-smokingstatus"
* ^status = #draft
* identifier.value and status and category[SocialHistory] and code.coding and subject and encounter and effectiveDateTime and performer and valueCodeableConcept and note.text MS
* status = #final
* category[SocialHistory] = http://terminology.hl7.org/CodeSystem/observation-category#social-history
* valueCodeableConcept from http://va.gov/fhir/ValueSet/VSVFSmokingStatus

Mapping: vista-to-SmokingStatusObservation
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: SmokingStatusObservation
* identifier.value -> "1241: source value from V HEALTH FACTORS - IEN (#9000010.23-.001)"
* status -> "1242: fixed value = #final"
* category[SocialHistory] -> "1243: fixed value = http://terminology.hl7.org/CodeSystem/observation-category#social-history"
* code.coding -> "1244: fixed value = http://loinc.org#72166-2 when HEALTH FACTORS - CATEGORY (#9999999.64-.03) case TOBACCO"
* subject -> "1245: reference from V HEALTH FACTOR - PATIENT NAME (#9000010.23-.02)"
* encounter -> "1246: reference from V HEALTH FACTOR - VISIT (#9000010.23-.03)"
* effectiveDateTime -> "1247: source value from V HEALTH FACTOR - EVENT DATE AND TIME (#9000010.23-1201)"
* performer -> "1248: reference from V HEALTH FACTOR - ENCOUNTER PROVIDER (#9000010.23-1204)" "Only encounter provider is in CDW, so ordering provider was not included at this time. If ordering provider needs to be included in the future, will need to determine a way to distinguish ordering provider from encounter provider in the practitioner resource."
* valueCodeableConcept -> "1249: terminologyMaps using VF_SmokingStatus on V HEALTH FACTOR - HEALTH FACTOR (#9000010.23-.01)" "If duplicates occur, the latest instance only should be sent."
* note.text -> "1250: source value from V HEALTH FACTOR - COMMENTS (#9000010.23-81101)"

Mapping: cdw-to-SmokingStatusObservation
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: SmokingStatusObservation
* code.coding -> "Dim.HealthFactorType.CategoryHealthFactorTypeIEN"
* encounter -> "HF.HealthFactor.VisitDateTime"
* effectiveDateTime -> "HF.HealthFactor.EventDateTime"
* note.text -> "HF.HealthFactor.Comments"