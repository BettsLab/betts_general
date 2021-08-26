import csv

n_studies = 25
with open("csv-BettsMRAut-set-20210826.csv", "r") as csvfile:
    reader = csv.reader(csvfile, delimiter = ",")
    line_n = 0

    for row in reader:
        if line_n != 0:
            print(row[1]) #title
            print(row[2] + " " + row[3]) #authors + citation
            print("")

            if line_n + 1 >= n_studies:
                break

        line_n += 1
