# Jurisdiction Reference

Regulatory knowledge encoded in each compliance-db preset. This document is the source of truth for retention periods, regulators, data protection laws, and cross-border rules.

**Coverage:** 10 presets covering 22 African countries (~95% of fintech activity)

---

## Phase 1 — Big 8

### Zimbabwe

| Field | Value |
|-------|-------|
| Preset | `zimbabwe` |
| AWS Region | af-south-1 (Cape Town) |
| Regulator | Reserve Bank of Zimbabwe (RBZ) |
| KYC Retention | 5 years (FATF baseline, RBZ AML/CFT regs) |
| Audit Retention | 7 years (Companies and Other Business Entities Act) |
| Data Protection Law | Cyber and Data Protection Act (2021) |
| Data Protection Authority | POTRAZ |
| Cross-border | Allowed with adequate safeguards, POTRAZ notification |
| Notes | ZWCMP compliance for mobile money. RBZ National Payment Systems regulations. |

### South Africa

| Field | Value |
|-------|-------|
| Preset | `south_africa` |
| AWS Region | af-south-1 (Cape Town — in-country) |
| Regulator | South African Reserve Bank (SARB) |
| KYC Retention | 5 years (FICA §22) |
| Audit Retention | 7 years (Companies Act §24) |
| Data Protection Law | Protection of Personal Information Act (POPIA, 2013) |
| Data Protection Authority | Information Regulator |
| Cross-border | Allowed with consent or adequate jurisdiction (POPIA §72). Binding corporate rules accepted. |
| Notes | FSCA regulates markets. FIC handles AML. Most mature regulatory framework on the continent. |

### Nigeria

| Field | Value |
|-------|-------|
| Preset | `nigeria` |
| AWS Region | af-south-1 (Cape Town) |
| Regulator | Central Bank of Nigeria (CBN) |
| KYC Retention | **6 years** (CBN AML/CFT Regulation §18 — exceeds FATF minimum) |
| Audit Retention | 7 years (CAMA 2020) |
| Data Protection Law | Nigeria Data Protection Act (NDPA, 2023) |
| Data Protection Authority | Nigeria Data Protection Commission (NDPC) |
| Cross-border | Adequacy assessment or NDPC approval. CBN requires African data residency for financial data. |
| Notes | Largest fintech market in Africa. CBN licensing for PSPs, MMOs, and switching companies. |

### Egypt

| Field | Value |
|-------|-------|
| Preset | `egypt` |
| AWS Region | me-south-1 (Bahrain — closest to Cairo) |
| Regulator | Central Bank of Egypt (CBE) |
| KYC Retention | 5 years (AML Law No. 80/2002) |
| Audit Retention | **10 years** (Egyptian Commercial Code) |
| Data Protection Law | Personal Data Protection Law No. 151 (2020) |
| Data Protection Authority | Data Protection Center (Ministry of Communications) |
| Cross-border | DPC approval required. Financial data must remain accessible to CBE. |
| Notes | FRA regulates non-banking financial services. Growing fintech licensing. |

### Kenya

| Field | Value |
|-------|-------|
| Preset | `kenya` |
| AWS Region | af-south-1 (Cape Town) |
| Regulator | Central Bank of Kenya (CBK) |
| KYC Retention | 5 years (Proceeds of Crime and AML Act §47) |
| Audit Retention | 7 years (Companies Act) |
| Data Protection Law | Data Protection Act (DPA, 2019) |
| Data Protection Authority | Office of the Data Protection Commissioner (ODPC) |
| Cross-border | Adequate safeguards proven to ODPC. Data sovereignty not strictly required but CBK preference. |
| Notes | M-Pesa market. CBK Payment Service Providers Regulations 2014. CMA regulates securities. |

### Ghana

| Field | Value |
|-------|-------|
| Preset | `ghana` |
| AWS Region | eu-west-1 (Ireland — BoG allows EU hosting) |
| Regulator | Bank of Ghana (BoG) |
| KYC Retention | 5 years (AML Act 2020) |
| Audit Retention | 7 years (Companies Act) |
| Data Protection Law | Data Protection Act (Act 843, 2012) |
| Data Protection Authority | Data Protection Commission |
| Cross-border | DPC registration required. BoG allows EU-hosted infrastructure for financial data. |
| Notes | BoG Payment Systems and Services Act 2019. E-money issuer licensing. |

### Tanzania

| Field | Value |
|-------|-------|
| Preset | `tanzania` |
| AWS Region | af-south-1 (Cape Town) |
| Regulator | Bank of Tanzania (BoT) |
| KYC Retention | 5 years (AML Act 2006, amended 2022) |
| Audit Retention | 7 years (TRA requirements) |
| Data Protection Law | Pending — Personal Data Protection Act expected 2025 |
| Data Protection Authority | TCRA (interim) |
| Cross-border | No formal restrictions yet. BoT prefers regional data residency. |
| Notes | National Payment Systems Act 2015. TCRA licenses mobile money. |

### Rwanda

| Field | Value |
|-------|-------|
| Preset | `rwanda` |
| AWS Region | af-south-1 (Cape Town) |
| Regulator | National Bank of Rwanda (BNR) |
| KYC Retention | 5 years (AML/CFT Law 2021) |
| Audit Retention | 7 years |
| Data Protection Law | Law Relating to the Protection of Personal Data and Privacy (Law N° 058/2021) |
| Data Protection Authority | National Cyber Security Authority (NCSA) |
| Cross-border | NCSA authorization required for transfers outside Rwanda. |
| Notes | Kigali International Financial Centre. BNR fintech sandbox. iRembo digital services platform. |

---

## Phase 2 — Regional Blocs

### WAEMU (8 countries)

| Field | Value |
|-------|-------|
| Preset | `waemu` |
| Countries | Benin, Burkina Faso, Cote d'Ivoire, Guinea-Bissau, Mali, Niger, Senegal, Togo |
| AWS Region | eu-west-3 (Paris — cultural and regulatory alignment) |
| Regulator | Banque Centrale des États de l'Afrique de l'Ouest (BCEAO) |
| KYC Retention | 5 years (BCEAO Instruction 01/2017) |
| Audit Retention | **10 years** (OHADA Uniform Act) |
| Data Protection Law | Varies by country (Senegal: Loi 2008-12, Cote d'Ivoire: Loi 2013-450) |
| Data Protection Authority | Varies (Senegal: CDP, Cote d'Ivoire: ARTCI) |
| Cross-border | Free flow within WAEMU zone. External transfers require national DPA approval. |
| Notes | Single central bank for 8 countries. CFA franc (XOF) zone. |

### CEMAC (6 countries)

| Field | Value |
|-------|-------|
| Preset | `cemac` |
| Countries | Cameroon, Central African Republic, Chad, Congo, Equatorial Guinea, Gabon |
| AWS Region | eu-west-3 (Paris) |
| Regulator | Banque des États de l'Afrique Centrale (BEAC) |
| KYC Retention | 5 years (COBAC regulations) |
| Audit Retention | **10 years** (OHADA Uniform Act) |
| Data Protection Law | Varies by country (Cameroon: Law 2010/012) |
| Data Protection Authority | Varies (Cameroon: Ministry of Posts and Telecommunications) |
| Cross-border | Free flow within CEMAC zone. External transfers per national law. |
| Notes | Single central bank for 6 countries. COBAC is the banking commission. CFA franc (XAF) zone. |

---

## Retention Summary

| Jurisdiction | KYC | Audit | Source |
|-------------|-----|-------|--------|
| Zimbabwe | 5yr | 7yr | RBZ AML/CFT, Companies Act |
| South Africa | 5yr | 7yr | FICA §22, Companies Act §24 |
| **Nigeria** | **6yr** | 7yr | CBN AML/CFT §18, CAMA 2020 |
| **Egypt** | 5yr | **10yr** | AML Law 80/2002, Commercial Code |
| Kenya | 5yr | 7yr | POCAMLA §47, Companies Act |
| Ghana | 5yr | 7yr | AML Act 2020, Companies Act |
| Tanzania | 5yr | 7yr | AML Act 2006, TRA |
| Rwanda | 5yr | 7yr | AML/CFT Law 2021 |
| **WAEMU** | 5yr | **10yr** | BCEAO 01/2017, OHADA |
| **CEMAC** | 5yr | **10yr** | COBAC, OHADA |

---

## Disclaimer

This document reflects regulatory research as of May 2026. Regulations change. Always verify with local legal counsel before deploying in a new jurisdiction. This module provides infrastructure defaults — it does not constitute legal advice.
