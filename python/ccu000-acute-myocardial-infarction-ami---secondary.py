# Angela Wood, Rachel Denholm, Sam Hollings, Jennifer Cooper, Samantha Ip, Venexia Walker, Spiros Denaxas, Ashley Akbari, Amitava Banerjee, William Whiteley, Alvina Lai, Jonathan Sterne, Cathie Sudlow, CVD-COVID-UK consortium, 2024.

import sys, csv, re

codes = [{"code":"I25.2","system":"icd10"},{"code":"428752002","system":"icd10"},{"code":"394710008","system":"icd10"},{"code":"233843008","system":"icd10"},{"code":"161502000","system":"icd10"},{"code":"52035003","system":"icd10"},{"code":"233835003","system":"icd10"},{"code":"428196007","system":"icd10"},{"code":"315287002","system":"icd10"},{"code":"79009004","system":"icd10"},{"code":"307140009","system":"icd10"},{"code":"161503005","system":"icd10"},{"code":"304914007","system":"icd10"},{"code":"308065005","system":"icd10"},{"code":"1755008","system":"icd10"},{"code":"314207007","system":"icd10"},{"code":"42531007","system":"icd10"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('ccu000-acute-myocardial-infarction-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["ccu000-acute-myocardial-infarction-ami---secondary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["ccu000-acute-myocardial-infarction-ami---secondary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["ccu000-acute-myocardial-infarction-ami---secondary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
