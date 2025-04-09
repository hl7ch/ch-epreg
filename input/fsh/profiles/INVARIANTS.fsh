// PractitionerRole.practitioner/organization
Invariant: epreg-pract-org
Description: "At least one of practitioner or organization must be provided."
Severity: #error
Expression: "practitioner.exists() or organization.exists()"

// PractitionerRole.code/specialty
Invariant: epreg-code-specialty
Description: "At least one of code or specialty must be provided."
Severity: #error
Expression: "code.exists() or specialty.exists()"
