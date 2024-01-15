import pandas as pd

print("This program is read the empdata.txt amd print sum of salary by dept_name ")


# read the text file into dataframe
def read_txtfile_into_dataframe(file_path):
    df = pd.read_csv(file_path)
    return df


# calacute sum of salary by department
def sumofsalary_by_department(df):
    newdf = df.groupby('dept_name')['salary'].sum().reset_index()
    return newdf


if __name__ == '__main__':
    file_path = input("enter filepath :")

    dataframe = read_txtfile_into_dataframe(file_path)
    print(dataframe)
    result = sumofsalary_by_department(dataframe)

    # print sum of salary by dept_name
    print("----------------------------")
    print("sum of salary by department ")
    print("-----------------------------")

    print(result)
