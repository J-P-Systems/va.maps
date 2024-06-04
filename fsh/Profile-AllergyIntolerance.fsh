Profile: AllergyIntolerance
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-allergyintolerance
Id: AllergyIntolerance
Title: "AllergyIntolerance"
Description: "This StructureDefinition contains the maps for VistA file PATIENT ALLERGIES (120.8) to us-core-allergyintolerance"
* ^status = #draft
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "$this"
* identifier ^slicing.rules = #open
* identifier contains va-IEN 0..1 and va-CDW 0..1
* identifier[va-IEN].value and identifier[va-IEN].system and identifier[va-CDW].value and identifier[va-CDW].system and code.text and code and patient and recordedDate and recorder and reaction.manifestation and reaction.manifestation.coding.system and reaction.manifestation.coding.code and reaction.manifestation.coding.display and reaction.manifestation.text and type and verificationStatus and clinicalStatus and category and reaction.severity and note.time and note.authorString and note.text and reaction.onset MS
* identifier[va-IEN].system = "http://va.gov/identifiers/$Sta3n/120.8"
* identifier[va-CDW].system = "http://va.gov/identifiers/CDWSID/cdwwork.allergy.allergy"
* reaction.manifestation.coding.system = "urn:oid:2.16.840.1.113883.6.233"
* type from http://va.gov/fhir/ValueSet/VSVFallergyMechanism
* verificationStatus from http://va.gov/fhir/ValueSet/VSVFallergyVerificationStatus
* clinicalStatus from http://va.gov/fhir/ValueSet/VSVFallergyActive
* verificationStatus from http://va.gov/fhir/ValueSet/VSVFallergyEnteredInError
* category from http://va.gov/fhir/ValueSet/VSVFallergySubstanceCategory
* reaction.severity from http://va.gov/fhir/ValueSet/VSVFallergySeverity

Mapping: vista-to-AllergyIntolerance
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: AllergyIntolerance
* identifier[va-IEN].value -> "233: source value from PATIENT ALLERGIES - IEN (120.8-.001)"
* identifier[va-IEN].system -> "233-1: fixed value = http://va.gov/identifiers/$Sta3n/120.8" "from mapParameter 1"
* identifier[va-CDW].value -> "1610: source value from CDW.cdwwork.allergy.allergy.AllergySID" "Source is AllergySID from Allergy Table in CDW"
* identifier[va-CDW].system -> "1610-1: fixed value = http://va.gov/identifiers/CDWSID/cdwwork.allergy.allergy" "from mapParameter 1"
* code.text -> "245: source value from PATIENT ALLERGIES - REACTANT (120.8-.02)" "text only"
* code -> "246: source value from PATIENT ALLERGIES - GMR ALLERGY (120.8-1)"
* patient -> "248: source value from PATIENT ALLERGIES - PATIENT (120.8-.01)" "Source is MVIPersonFullICN from SMVIPerson Table"
* recordedDate -> "1224: source value from PATIENT ALLERGIES - ORIGINATION DATE/TIME (120.8-4)" "Lighthouse exposes this source object as RecordedDate FHIR field"
* recorder -> "251: source value from PATIENT ALLERGIES - ORIGINATOR (120.8-5)"
* reaction.manifestation -> "252: source value from REACTIONS - REACTION > SIGN/SYMPTOMS (120.81-.01 > 120.83-)"
* reaction.manifestation.coding.system -> "252-1: fixed value = urn:oid:2.16.840.1.113883.6.233" "from mapParameter 1"
* reaction.manifestation.coding.code -> "252-2: source value from REACTIONS - REACTION > SIGN/SYMPTOMS - VUID (120.81-.01 > 120.83-99.99)" "from mapParameter 2"
* reaction.manifestation.coding.display -> "252-3: source value from REACTIONS - REACTION > SIGN/SYMPTOMS - NAME (120.81-.01 > 120.83-.01)" "from mapParameter 3"
* reaction.manifestation.text -> "252-4: source value from REACTIONS - REACTION > SIGN/SYMPTOMS - NAME (120.81-.01 > 120.83-.01)" "from mapParameter 4"
* type -> "531: terminologyMaps using VF_allergyMechanism on PATIENT ALLERGIES - MECHANISM (120.8-17)"
* verificationStatus -> "535: terminologyMaps using VF_allergyVerificationStatus on PATIENT ALLERGIES - VERIFIED (120.8-19)"
* clinicalStatus -> "536: terminologyMaps using VF_allergyActive on PATIENT ALLERGIES - ENTERED IN ERROR (120.8-22)" "confirm CHAPI"
* verificationStatus -> "537: terminologyMaps using VF_allergyEnteredInError on PATIENT ALLERGIES - ENTERED IN ERROR (120.8-22)"
* category -> "556: terminologyMaps using VF_allergySubstanceCategory on PATIENT ALLERGIES - ALLERGY TYPE (120.8-3.1)"
* reaction.severity -> "557: terminologyMaps using VF_allergySeverity on ADVERSE REACTION REPORTING - SEVERITY (120.85-14.5)" "This Data is not in CDW\nAssess for CHAPI via VPR"
* note.time -> "1502: source value from PATIENT ALLERGIES - COMMENTS > COMMENTS - DATE/TIME COMMENT ENTERED (120.8-26 > 120.826-.01)"
* note.authorString -> "1503: source value from PATIENT ALLERGIES - COMMENTS > COMMENTS - USER ENTERING (120.8-26 > 120.826-1)"
* note.text -> "1504: source value from PATIENT ALLERGIES - COMMENTS > COMMENTS - COMMENTS (120.8-26 > 120.826-2)"
* code -> "1505: source value from PATIENT ALLERGIES - DRUG INGREDIENTS (120.8-2)" "CHAPI to rxn code; looking into"
* reaction.onset -> "1652: source value from PATIENT ALLERGIES - REACTIONS > REACTIONS - DATE ENTERED (120.8-10 > 120.81-3) case 6 OBSERVED/HISTORICAL = O"

Mapping: cdw-to-AllergyIntolerance
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: AllergyIntolerance
* identifier[va-CDW].value -> "1610: source value from CDW.cdwwork.allergy.allergy.AllergySID"
* identifier[va-CDW].system -> "1610-1: fixed value from undefined"
* code.text -> "Allergy.Allergy.AllergicReactant"
* patient -> "Allergy.AllergicReaction.PatientIEN,Allergy.Allergy.PatientIEN,Allergy.AllergyComment.PatientIEN,Allergy.AllergyDrugClass.PatientIEN,Allergy.AllergyDrugIngredient.PatientIEN"
* recordedDate -> "Allergy.AllergicReaction.OriginationDateTime,Allergy.Allergy.OriginationDateTime,Allergy.AllergyComment.OriginationDateTime,Allergy.AllergyDrugClass.OriginationDateTime,Allergy.AllergyDrugIngredient.OriginationDateTime"
* recorder -> "Allergy.Allergy.OriginatingStaffIEN"
* reaction.manifestation -> "Allergy.AllergicReaction.ReactionIEN"
* reaction.manifestation.coding.code -> "Allergy.AllergicReaction.ReactionIEN\nDim.Reaction.VUID"
* reaction.manifestation.coding.display -> "Allergy.AllergicReaction.ReactionIEN\nDim.Reaction.Reaction"
* reaction.manifestation.text -> "Allergy.AllergicReaction.ReactionIEN\nDim.Reaction.Reaction"
* type -> "Allergy.Allergy.Mechanism"
* verificationStatus -> "Allergy.Allergy.VerifiedFlag"
* clinicalStatus -> "Allergy.Allergy.EnteredInErrorFlag"
* verificationStatus -> "Allergy.Allergy.EnteredInErrorFlag"
* category -> "Allergy.Allergy.AllergyType"
* note.time -> "Allergy.AllergyComment.CommentEnteredDateTime"
* note.authorString -> "Allergy.AllergyComment.EnteringStaffIEN"
* reaction.onset -> "Allergy.AllergicReaction.EnteredDateTime"

Mapping: vpr-to-AllergyIntolerance
Id: vpr
Title: "Virtual Patient Record (VPR)"
Source: AllergyIntolerance
* identifier[va-IEN].value -> "GET PATIENT DATA-reaction.id"
* code.text -> "GET PATIENT DATA-reaction.name"
* code -> "GET PATIENT DATA-reaction.vuid"
* recordedDate -> "GET PATIENT DATA-reaction.entered"
* reaction.manifestation -> "GET PATIENT DATA-reaction.reaction [m]"
* verificationStatus -> "GET PATIENT DATA-reaction.verified"
* clinicalStatus -> "GET PATIENT DATA-reaction.removed"
* verificationStatus -> "GET PATIENT DATA-reaction.type"
* category -> "GET PATIENT DATA-reaction.severity"
* reaction.severity -> "GET PATIENT DATA-reaction.comment [m].entered"
* note.time -> "GET PATIENT DATA-reaction.comment [m].enteredBy"
* note.authorString -> "GET PATIENT DATA-reaction.comment [m].commentText"
* note.text -> "GET PATIENT DATA-reaction.drugIngredient [m]"