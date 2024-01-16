# Open and read the empdata.txt file
with open('empdata.txt', 'r') as file:
    lines = file.readlines()
    #print(lines)

salary_sum_by_dept = {}

# Process each line in the file
for line in lines:
    # Split the line into fields
    fields = line.split(',')
    #print(fields)

    if len(fields) != 5:
        continue
    emp_id,dept_name,emp_firstname,emp_lastname,salary = fields
    try:
      salary = int(salary.strip())

      if dept_name in salary_sum_by_dept:
            salary_sum_by_dept[dept_name].append(salary)
      else:
            salary_sum_by_dept[dept_name] = [salary]

    except ValueError:
        print(f"Skipping line with non-numeric value in the salary field: {line}")

for dept_name, salaries in salary_sum_by_dept.items():
        total_salary = sum(salaries)
        print(f"Total salary for {dept_name}: {total_salary}")


