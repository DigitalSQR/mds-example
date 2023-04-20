Logical:      MDSExampleFacility
Title:        "Facility MDS Example"
Description:  "Facility logical model for a MDS example."

* ^abstract = true
* ^status = #draft

* name 1..1 string "Facility Name" "Facility name"
* code 1..1 string "Facility Code" "Facility code"
* village 1..1 string "Village" "Village/Communal Section of the facility"
* ward 1..1 string "Ward" "Ward/Division/Commune Section of the facility"
* district 1..1 string "District" "SubCounty/District/Arrondissement Section of the facility"
* state 1..1 string "State" "County/Province/Department Section of the facility"
* country 1..1 code "Country" "Country Section of the facility"
* country from http://hl7.org/fhir/ValueSet/iso3166-1-3 (preferred)

Mapping:      MDSExampleFacilityToOrganization
Source:       MDSExampleFacility
Target:       "http://hl7.org/fhir/StructureDefinition/Organization"
Id:           mds-example-facility
Title:        "MDS Example Facility to Organization"

* -> "Organization"
* name -> "Organization.name"
* code -> "Organization.identifier.value"
* village -> "Organization.address.city"
* ward -> "Organization.address.line"
* district -> "Organization.address.district"
* state -> "Organization.address.state"
* country -> "Organization.address.country"