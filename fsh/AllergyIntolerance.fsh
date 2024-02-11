Profile: AllergyIntolerance
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-allergyintolerance
Id: AllergyIntolerance
Title: "AllergyIntolerance"
Description: "This StructureDefinition contains the maps for VistA file PATIENT ALLERGIES (#120.8) to us-core-allergyintolerance"
* ^status = #draft
* identifier.value and code.text and code and patient and recordedDate and recorder and reaction.manifestation and type and verificationStatus and clinicalStatus and category and reaction.severity and note.time and note.authorString and note.text and reaction.onset MS
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
* identifier.value -> "233: source value from PATIENT ALLERGIES - IEN (#120.8-.001)"
* identifier.value -> "1610: source value from CDW.cdwwork.allergy.allergy.AllergySID" "Source is AllergySID from Allergy Table in CDW"
* code.text -> "245: source value from PATIENT ALLERGIES - REACTANT (#120.8-.02)" "text only"
* code -> "246: source value from PATIENT ALLERGIES - GMR ALLERGY (#120.8-1)"
* patient -> "248: source value from PATIENT ALLERGIES - PATIENT (#120.8-.01)" "Source is MVIPersonFullICN from SMVIPerson Table"
* recordedDate -> "1224: source value from PATIENT ALLERGIES - ORIGINATION DATE/TIME (#120.8-4)" "Lighthouse exposes this source object as RecordedDate FHIR field"
* recorder -> "251: source value from PATIENT ALLERGIES - ORIGINATOR (#120.8-5)"
* reaction.manifestation -> "252: source value from REACTIONS - REACTION > SIGN/SYMPTOMS (#120.81-.01 > 120.83-)"
* type -> "531: terminologyMaps using VF_allergyMechanism on PATIENT ALLERGIES - MECHANISM (#120.8-17)"
* verificationStatus -> "535: terminologyMaps using VF_allergyVerificationStatus on PATIENT ALLERGIES - VERIFIED (#120.8-19)"
* clinicalStatus -> "536: terminologyMaps using VF_allergyActive on PATIENT ALLERGIES - ENTERED IN ERROR (#120.8-22)" "confirm CHAPI"
* verificationStatus -> "537: terminologyMaps using VF_allergyEnteredInError on PATIENT ALLERGIES - ENTERED IN ERROR (#120.8-22)"
* category -> "556: terminologyMaps using VF_allergySubstanceCategory on PATIENT ALLERGIES - ALLERGY TYPE (#120.8-3.1)"
* reaction.severity -> "557: terminologyMaps using VF_allergySeverity on ADVERSE REACTION REPORTING - SEVERITY (#120.85-14.5)" "This Data is not in CDW\nAssess for CHAPI via VPR"
* note.time -> "1502: source value from PATIENT ALLERGIES - COMMENTS > COMMENTS - DATE/TIME COMMENT ENTERED (#120.8-26 > 120.826-.01)"
* note.authorString -> "1503: source value from PATIENT ALLERGIES - COMMENTS > COMMENTS - USER ENTERING (#120.8-26 > 120.826-1)"
* note.text -> "1504: source value from PATIENT ALLERGIES - COMMENTS > COMMENTS - COMMENTS (#120.8-26 > 120.826-2)"
* code -> "1505: source value from PATIENT ALLERGIES - DRUG INGREDIENTS (#120.8-2)" "CHAPI to rxn code; looking into"
* reaction.onset -> "1652: source value from PATIENT ALLERGIES - REACTIONS > REACTIONS - DATE ENTERED (#120.8-10 > 120.81-3)"

Mapping: cdw-to-AllergyIntolerance
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: AllergyIntolerance
* code.text -> "Allergy.Allergy.AllergicReactant"
* recordedDate -> "Allergy.AllergicReaction.OriginationDateTime\nAllergy.Allergy.OriginationDateTime\nAllergy.AllergyComment.OriginationDateTime\nAllergy.AllergyDrugClass.OriginationDateTime\nAllergy.AllergyDrugIngredient.OriginationDateTime"
* type -> "Allergy.Allergy.Mechanism"
* verificationStatus -> "Allergy.Allergy.VerifiedFlag"
* clinicalStatus -> "Allergy.Allergy.EnteredInErrorFlag"
* verificationStatus -> "Allergy.Allergy.EnteredInErrorFlag"
* category -> "Allergy.Allergy.AllergyType"
* note.time -> "Allergy.AllergyComment.CommentEnteredDateTime"
* reaction.onset -> "Allergy.AllergicReaction.EnteredDateTime"

Mapping: vpr-to-AllergyIntolerance
Id: vpr
Title: "Virtual Patient Record (VPR)"
Source: AllergyIntolerance
* identifier.value -> "GET PATIENT DATA-reaction.id"
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