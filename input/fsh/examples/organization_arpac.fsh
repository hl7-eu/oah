Instance: Org-ARPAC-Campania
Title: "Organization - ARPAC Campania"
Description: "Agenzia Regionale per la Protezione dell'Ambiente della Campania - Dipartimento Provinciale di Benevento."
InstanceOf: Organization
Usage: #example
* identifier[0].system = "https://www.indicepa.gov.it/ipa/ente"
* identifier[0].value = "arlpa_"
* identifier[0].type.text = "Codice IPA"
* identifier[1].system = "https://www.indicepa.gov.it/uo/codice"
* identifier[1].value = "KD1LA6"
* identifier[1].type.text = "Codice univoco ufficio"
* identifier[2].system = "https://www.indicepa.gov.it/aoo/codice"
* identifier[2].value = "A6BEKPC"
* identifier[2].type.text = "Codice AOO di riferimento"
* name = "Agenzia Regionale per la Protezione dell'Ambiente della Campania"
* alias[0] = "Dipartimento Provinciale di Benevento"
* type[0].coding[0].system = "http://terminology.hl7.org/CodeSystem/organization-type"
* type[0].coding[0].code = #govt
* type[0].coding[0].display = "Government"
* type[+].text = "Ufficio per l'erogazione di servizi"
* contact[0].purpose.text = "Responsabile"
* contact[0].name.family = "Barricella"
* contact[0].name.given[0] = "Elina"
* contact[0].name.given[1] = "Antonia"
* contact[0].telecom[0].system = #email
* contact[0].telecom[0].value = "e.barricella@arpacampania.it"
* contact[0].telecom[0].use = #work
* contact[0].telecom[1].system = #phone
* contact[0].telecom[1].value = "0824320204"
* contact[0].telecom[1].use = #work
* telecom[0].system = #email
* telecom[0].value = "direzionegenerale.arpac@pec.arpacampania.it"
* telecom[0].use = #work
* telecom[0].rank = 1
* telecom[0].period.start = "2022-02-26"
* telecom[1].system = #email
* telecom[1].value = "arpac.dipartimentobenevento@pec.arpacampania.it"
* telecom[1].use = #work
* telecom[2].system = #email
* telecom[2].value = "e.barricella@arpacampania.it"
* telecom[2].use = #work
* telecom[3].system = #phone
* telecom[3].value = "0824320204"
* telecom[3].use = #work
* telecom[4].system = #fax
* telecom[4].value = "0824320241"
* telecom[4].use = #work
* address.use = #work
* address.type = #both
* address.text = "Via San Pasquale, 36B - 82100 Benevento (BN)"
* address.line[0] = "Via San Pasquale, 36B"
* address.postalCode = "82100"
* address.city = "Benevento"
* address.state = "BN"
* address.country = "IT"
