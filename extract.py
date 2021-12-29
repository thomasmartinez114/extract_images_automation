# import regex
import re

# open file
s = open("update.php", "r", encoding="utf8")

# set file info as variable contents
contents = s.read()

# regex to extract paths within img tag
regex = '<img[^>]* src=\"([^\"]*)\"[^>]*>'
lst = re.findall(regex, contents)

# count how many paths there are
count = 0
# loop through array of paths - count and print out the list
# print("#############################\n#############################\n#############################")
for path in lst:
    count +=1
    # print (path)

    # open file
    f = open("images.txt", "a")
    # # write the paths to file with new line
    f.write(path + '\n')
    # # close the file
    f.close()    
    
print ("\nTotal images are: " + str(count))