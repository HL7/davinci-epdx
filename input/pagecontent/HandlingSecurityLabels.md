[Previous Page - Handling Data Provenance](HandlingDataProvenance.html)

Health Plans SHALL apply security labels to all generated FHIR Resources with privacy tags indicating, at a minimum:
- The level of confidentiality protection, including "normal" for HIPAA PHI and "restricted" for IIHI governed under Title 38 Section 7332, 42 CFR Part 2, and applicable state privacy laws
- The sensitivity, including sensitive information governed under HIPAA and other laws
- The governing privacy law (HIPAA, Title 38 Section 7332, 42 CFR Part 2, and applicable state privacy laws)
- The permissible purposes of use under the applicable laws - e.g., Title 38 Section 7332 information, which may only be used for the purposes for which it was disclosed, must be labeled with the permissible purposes upon redisclosure.

Health Plans SHALL persist, enforce, with applied security labels.

Health Plans SHALL accept, persist, and enforce security labels in the meta of all Resources used in PDex exchanges.

Health Plans SHALL apply persisted security labels to all disclosed Resources.

[Next Page - Payer-to-Payer Exchange](PayerToPayerExchange.html)
