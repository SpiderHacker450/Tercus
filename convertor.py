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
    "<R>": "\\[\\033[01;31m]",
    "<G>": "\\[\\033[01;32m]",
    "<Y>": "\\[\\033[01;33m]",
    "<B>": "\\[\\033[01;34m]",
    "<P>": "\\[\\033[01;35m]",
    "<Cy>": "\\[\\033[01;36m]",
    "<W>": "\\[\\033[01;37m]",
    "<Rs>": "\\[\\033[01;00m]",
    "<Cl>":"\\[\\033[00m\\]",
    "<USER>" : "\\u",
    "<HOST>" : "\\h",
    "<DIR>" : "\\w",
    "<DATE>" : "\\d",
    "<TIME24>" : "\\t" ,
    "<TIME12>" : "\\T" , 
    "<NL>" : "\\n"
}

replace_multiple_words_in_file('/Data_cus/code_cus.txt', replacements)

