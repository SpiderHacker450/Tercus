def replace_multiple_words_in_file(file_path, replacements):
    # Read the existing content
    with open(file_path, 'r') as file:
        content = file.read()
    
    # Replace each word in the replacements dictionary
    for old, new in replacements.items():
        content = content.replace(old, new)
    
    # Write the updated content back to the file
    with open(file_path, 'w') as file:
        file.write(content)

# Example usage
replacements = {
    "<R>": "\\[\\e[0;31m\\]",
    "<G>": "\\[\\e[0;32m\\]",
    "<Y>": "\\[\\e[0;33m\\]",
    "<B>": "\\[\\e[0;34m\\]",
    "<P>": "\\[\\e[0;35m\\]",
    "<Cy>": "\\[\\e[0;36m\\]",
    "<W>": "\\[\\e[0;37m\\]",
    "<Rs>": "\\[\\e[0;00m\\]",
    "<Cl>":"\\[\\e[0m\\]",
    "<USER>" : "\\u",
    "<HOST>" : "\\h",
    "<DIR>" : "\\w",
    "<DATE>" : "\\d",
    "<TIME24>" : "\\t" ,
    "<TIME12>" : "\\T" , 
    "<NL>" : "\\n"
}

replace_multiple_words_in_file('/temp_cus/Data_cus/code_cus.txt', replacements)




