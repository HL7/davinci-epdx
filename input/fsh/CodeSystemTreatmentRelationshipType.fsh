// ─────────────────────────────────────────────────────────────────────────────
// CodeSystem for Treatment Relationship Type
// ─────────────────────────────────────────────────────────────────────────────

CodeSystem: TreatmentRelationshipTypeCodeSystem
Id: treatment-relationship-type
Title: "Treatment Relationship Type"
Description: "Types of treatment relationships between members and providers"
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* #active "Active" "An active, ongoing treatment relationship"
* #past "Past" "A past treatment relationship that is no longer active"
* #prospective "Prospective" "A prospective treatment relationship (planned/anticipated)"
