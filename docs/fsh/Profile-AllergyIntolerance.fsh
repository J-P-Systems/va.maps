Profile: AllergyIntolerance
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-allergyintolerance
Id: AllergyIntolerance
Title: "AllergyIntolerance"
Description: "This StructureDefinition contains the maps for VistA file PATIENT ALLERGIES (120.8) to us-core-allergyintolerance."
* ^status = #active
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "$this"
* identifier ^slicing.rules = #open
* identifier contains va-IEN 0..1 and va-CDW 0..1
* identifier[va-IEN].value and identifier[va-IEN].system and identifier[va-CDW].value and identifier[va-CDW].system and code.text and code and patient and recordedDate and recorder and reaction.manifestation and reaction.manifestation.coding.system and reaction.manifestation.coding.code and reaction.manifestation.coding.display and reaction.manifestation.text and type and verificationStatus and clinicalStatus and category and reaction.severity and note.time and note.authorString and note.text and reaction.onset MS
* patient only Reference(Patient)
* recorder only Reference(Practitioner)
* identifier[va-IEN].system = "http://va.gov/identifiers/$Sta3n/120.8"
* identifier[va-CDW].system = "http://va.gov/identifiers/CDWSID/cdwwork.allergy.allergy"
* reaction.manifestation.coding.system = "urn:oid:2.16.840.1.113883.6.233"
* type from http://va.gov/fhir/ValueSet/allergyMechanism
* type ^binding.description = "see mapping [VF_allergyMechanism](ConceptMap-VF-allergyMechanism.html)"
* verificationStatus from http://va.gov/fhir/ValueSet/allergyVerificationStatus
* verificationStatus ^binding.description = "see mapping [VF_allergyVerificationStatus](ConceptMap-VF-allergyVerificationStatus.html)"
* clinicalStatus from http://va.gov/fhir/ValueSet/allergyActive
* clinicalStatus ^binding.description = "see mapping [VF_allergyActive](ConceptMap-VF-allergyActive.html)"
* verificationStatus from http://va.gov/fhir/ValueSet/allergyEnteredInError
* verificationStatus ^binding.description = "see mapping [VF_allergyEnteredInError](ConceptMap-VF-allergyEnteredInError.html)"
* category from http://va.gov/fhir/ValueSet/allergySubstanceCategory
* category ^binding.description = "see mapping [VF_allergySubstanceCategory](ConceptMap-VF-allergySubstanceCategory.html)"
* reaction.severity from http://va.gov/fhir/ValueSet/allergySeverity
* reaction.severity ^binding.description = "see mapping [VF_allergySeverity](ConceptMap-VF-allergySeverity.html)"
* reaction.severity obeys ai-18-557
* reaction.onset obeys ai-18-1652

Invariant: ai-18-557
Description: "If ADVERSE REACTION REPORTING – RELATED REACTION (120.85-.03) == PATIENT ALLERGIES (120.8) then terminologyMaps (120.85-14.5) using VF_allergySeverity"
Severity: #warning
Expression: "true"
* extension[http://hl7.org/fhir/StructureDefinition/elementdefinition-bestpractice].valueBoolean = true

Invariant: ai-18-1652
Description: "If 6 OBSERVED/HISTORICAL = O then source value from (120.8-10 > 120.81-3)"
Severity: #warning
Expression: "true"
* extension[http://hl7.org/fhir/StructureDefinition/elementdefinition-bestpractice].valueBoolean = true

Mapping: source-to-AllergyIntolerance
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: AllergyIntolerance
* identifier[va-IEN].value -> "233: source value based on PATIENT ALLERGIES - IEN (120.8-.001)"
* identifier[va-IEN].system -> "233-1: fixed value = http://va.gov/identifiers/$Sta3n/120.8" "generated from mapParameter line 1"
* identifier[va-CDW].value -> "1610: source value based on CDW.cdwwork.allergy.allergy.AllergySID" "Source is AllergySID from Allergy Table in CDW"
* identifier[va-CDW].system -> "1610-1: fixed value = http://va.gov/identifiers/CDWSID/cdwwork.allergy.allergy" "generated from mapParameter line 1"
* code.text -> "245: source value based on PATIENT ALLERGIES - REACTANT (120.8-.02)" "text only"
* code -> "246: source value based on PATIENT ALLERGIES - GMR ALLERGY (120.8-1)"
* patient -> "248: reference based on PATIENT ALLERGIES - PATIENT (120.8-.01)" "Source is MVIPersonFullICN from SMVIPerson Table"
* recordedDate -> "1224: source value based on PATIENT ALLERGIES - ORIGINATION DATE/TIME (120.8-4)" "Lighthouse exposes this source object as RecordedDate FHIR field"
* recorder -> "251: reference based on PATIENT ALLERGIES - ORIGINATOR (120.8-5)"
* reaction.manifestation -> "252: source value based on PATIENT ALLERGIES - REACTIONS > REACTIONS - REACTION > SIGN/SYMPTOMS (120.8-10 > 120.81-.01 > 120.83-)"
* reaction.manifestation.coding.system -> "252-1: fixed value = urn:oid:2.16.840.1.113883.6.233" "generated from mapParameter line 1"
* reaction.manifestation.coding.code -> "252-2: source value based on PATIENT ALLERGIES - REACTIONS > REACTIONS - REACTION > SIGN/SYMPTOMS - VUID (120.8-10 > 120.81-.01 > 120.83-99.99)" "generated from mapParameter line 2"
* reaction.manifestation.coding.display -> "252-3: source value based on PATIENT ALLERGIES - REACTIONS > REACTIONS - REACTION > SIGN/SYMPTOMS - NAME (120.8-10 > 120.81-.01 > 120.83-.01)" "generated from mapParameter line 3"
* reaction.manifestation.text -> "252-4: source value based on PATIENT ALLERGIES - REACTIONS > REACTIONS - REACTION > SIGN/SYMPTOMS - NAME (120.8-10 > 120.81-.01 > 120.83-.01)" "generated from mapParameter line 4"
* type -> "531: terminologyMaps using VF_allergyMechanism on PATIENT ALLERGIES - MECHANISM (120.8-17)"
* verificationStatus -> "535: terminologyMaps using VF_allergyVerificationStatus on PATIENT ALLERGIES - VERIFIED (120.8-19)"
* clinicalStatus -> "536: terminologyMaps using VF_allergyActive on PATIENT ALLERGIES - ENTERED IN ERROR (120.8-22)" "confirm CHAPI"
* verificationStatus -> "537: terminologyMaps using VF_allergyEnteredInError on PATIENT ALLERGIES - ENTERED IN ERROR (120.8-22)"
* category -> "556: terminologyMaps using VF_allergySubstanceCategory on PATIENT ALLERGIES - ALLERGY TYPE (120.8-3.1)"
* reaction.severity -> "557: terminologyMaps using VF_allergySeverity on ADVERSE REACTION REPORTING - SEVERITY (120.85-14.5) if ADVERSE REACTION REPORTING – RELATED REACTION (120.85-.03) == PATIENT ALLERGIES (120.8)" "This Data is not in CDW\nAssess for CHAPI via VPR"
* note.time -> "1502: source value based on PATIENT ALLERGIES - COMMENTS > COMMENTS - DATE/TIME COMMENT ENTERED (120.8-26 > 120.826-.01)"
* note.authorString -> "1503: source value based on PATIENT ALLERGIES - COMMENTS > COMMENTS - USER ENTERING (120.8-26 > 120.826-1)"
* note.text -> "1504: source value based on PATIENT ALLERGIES - COMMENTS > COMMENTS - COMMENTS (120.8-26 > 120.826-2)"
* code -> "1505: source value based on PATIENT ALLERGIES - DRUG INGREDIENTS (120.8-2)" "CHAPI to rxn code; looking into"
* reaction.onset -> "1652: source value based on PATIENT ALLERGIES - REACTIONS > REACTIONS - DATE ENTERED (120.8-10 > 120.81-3) if 6 OBSERVED/HISTORICAL = O"

Mapping: cdw-to-AllergyIntolerance
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: AllergyIntolerance
* identifier[va-CDW].value -> "1610: source value from CDW.cdwwork.allergy.allergy.AllergySID"
* identifier[va-CDW].system -> "1610-1: fixed value from undefined"
* code.text -> "Allergy.Allergy.AllergicReactant"
* patient -> "Allergy.AllergicReaction.PatientIEN\nAllergy.Allergy.PatientIEN\nAllergy.AllergyComment.PatientIEN\nAllergy.AllergyDrugClass.PatientIEN\nAllergy.AllergyDrugIngredient.PatientIEN"
* recordedDate -> "Allergy.AllergicReaction.OriginationDateTime\nAllergy.Allergy.OriginationDateTime\nAllergy.AllergyComment.OriginationDateTime\nAllergy.AllergyDrugClass.OriginationDateTime\nAllergy.AllergyDrugIngredient.OriginationDateTime"
* recorder -> "Allergy.Allergy.OriginatingStaffIEN"
* type -> "Allergy.Allergy.Mechanism"
* verificationStatus -> "Allergy.Allergy.VerifiedFlag"
* clinicalStatus -> "Allergy.Allergy.EnteredInErrorFlag"
* verificationStatus -> "Allergy.Allergy.EnteredInErrorFlag"
* category -> "Allergy.Allergy.AllergyType"
* note.time -> "Allergy.AllergyComment.CommentEnteredDateTime"
* note.authorString -> "Allergy.AllergyComment.EnteringStaffIEN"
* reaction.onset -> "Allergy.AllergicReaction.EnteredDateTime"

Mapping: sda-to-AllergyIntolerance
Id: sda
Title: "Summary Document Architecure (SDA)"
Source: AllergyIntolerance
* code.text -> "Allergy.FreeTextAllergy"
* code -> "Allergy.Allergy\nAllergy.Extension[AllergyExtension].OriginalCode"
* recorder -> "Allergy.EnteredBy"
* reaction.manifestation -> "Allergy.Reaction\nAllergy.Extension[AllergyExtension].Reactions"
* reaction.manifestation.coding.code -> "Allergy.Reaction\nAllergy.Extension[AllergyExtension].Reactions"
* reaction.manifestation.coding.display -> "Allergy.Reaction\nAllergy.Extension[AllergyExtension].Reactions"
* reaction.manifestation.text -> "Allergy.Reaction\nAllergy.Extension[AllergyExtension].Reactions"
* type -> "Allergy.Extension[AllergyExtension].Mechanism"
* verificationStatus -> "Allergy.Certainty"
* clinicalStatus -> "Allergy.Status"
* verificationStatus -> "Allergy.Status"
* category -> "Allergy.AllergyCategory"
* reaction.severity -> "Allergy.Severity\nAllergy.AllergyObservation[VA.AllergyObservation].Severity"
* note.time -> "Allergy.Comments\nAllergy.InactiveComments\nAllergy.Extension[AllergyExtension].Comments"
* note.authorString -> "Allergy.Comments\nAllergy.InactiveComments\nAllergy.Extension[AllergyExtension].Comments\nAllergy.Comment[VA.Comment].EnteredBy"
* note.text -> "Allergy.Comments\nAllergy.InactiveComments\nAllergy.Extension[AllergyExtension].Comments\nAllergy.Comment[VA.Comment].CommentText"
* code -> "Allergy.Extension[AllergyExtension].DrugProducts"
* reaction.onset -> "Allergy.Reaction\nAllergy.Extension[AllergyExtension].Reactions\nAllergy.Reaction.Extension\nAllergy.Extension[ReactionExtension].EnteredOn"

Mapping: vpr-to-AllergyIntolerance
Id: vpr
Title: "Virtual Patient Record XML (VPR)"
Source: AllergyIntolerance
* code.text -> "reaction.name"
* code -> "reaction.localCode\nreaction.vuid (>50.605-99.99)"
* patient -> "reaction.drugClass [m]\nreaction.drugIngredient [m]\nreaction.reaction [m]"
* recordedDate -> "reaction.entered"
* reaction.manifestation -> "reaction.reaction [m] (>120.83-.01)\nreaction.reaction [m] (>120.83-99.99)"
* reaction.manifestation.coding.code -> "reaction.reaction [m] (>120.83-.01)\nreaction.reaction [m] (>120.83-99.99)"
* reaction.manifestation.coding.display -> "reaction.reaction [m] (>120.83-.01)\nreaction.reaction [m] (>120.83-99.99)"
* reaction.manifestation.text -> "reaction.reaction [m] (>120.83-.01)\nreaction.reaction [m] (>120.83-99.99)"
* type -> "reaction.mechanism"
* clinicalStatus -> "reaction.removed"
* verificationStatus -> "reaction.removed"
* category -> "reaction.type"
* reaction.severity -> "reaction.severity"
* code -> "reaction.drugIngredient [m] (>50.416-.01)\nreaction.drugIngredient [m] (>50.416-99.99)"
* reaction.onset -> "reaction.reaction [m] (>120.83-.01)\nreaction.reaction [m] (>120.83-99.99)"