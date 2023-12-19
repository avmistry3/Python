"""Write a Python program to read the names from the attached file and
then print the names sorted in alphabetical order.  """
print("This program sorts and prints names in an array in 2 different ways")
file_path = '/Users/archana/Desktop/Devops/GCP_Data_engineer/GCP-2023/python/assignment1.dat'
# read file
file_read = open(file_path, "r")
# sort in alphabetical order and print
sortfile = sorted(file_read)
print("+++++++++++++++++++++++++++++++++")
print("Names in sorted order (method # 1)")
print("+++++++++++++++++++++++++++++++++")
print()
for names in sortfile:
       print(names.strip())
print("___________________")

# with statement
try:
    with open(file_path, 'r') as fileread:
       # Reading from the file and printing the original content
       # original_content = fileread.read()
       # print("Original Content:")
       # print(original_content)
       # Reset the file pointer to the beginning if you want to read the content again
       # fileread.seek(0)

        # Read the lines, sort them, and print the sorted content
        sorted_content = sorted(fileread)
        print("\nSorted Content:")
        for line in sorted_content:
          print(line.strip())

except FileNotFoundError:
    print(f"File not found: {file_path}")
except Exception as e:
    print(f"An error occurred: {e}")

# using function
def read_file(filename):
    try:
        with open(filename, 'r') as readfile1:
           sort_content = sorted(readfile1)
           print("\nSorted Content:")
           print("+++++++++++++++++++++++++++++++++")
           print("Names in sorted order (method # 2 using function)")
           print("+++++++++++++++++++++++++++++++++")
           print()

           for lines in sort_content:
             print(lines.strip())
    except IOError:
        print("error: could not read file")

if __name__ == '__main__':
    filename = file_path

    read_file(filename)