#code to make text fit WC3 dialog width space
#each line has a width of about 28 'a' s
#each line ends with a '\n' character
#and must be padded by 5 spaces before hand + 4 spaces after

lowerWidth = 1

upperWidth = 1.33 #21 uppers fill a line, roughly

lineWidth = 28

frontPadding = "     "

afterPadding = "    "

def addLines(text, lineWidth = 28):
    words = text.split(" ")
    newText = ""
    newString = ""
    i = 0
    currWidth = 0
    while i < len(words):
        newString = ""
        currWidth = 0
        done = False
        x = i
        while not done:
            if getWordWidth(words[x]) + 1 + currWidth < lineWidth:
                newString += words[x] + " "
                currWidth += getWordWidth(words[x]) + 1
                if x + 1 == len(words): #reached the end
                    newString = frontPadding + newString
                    newString = newString + afterPadding
                    newString += "\n"
                    newText += newString
                    done = True
                    i = x + 1
                else:
                    x += 1
            else:
                newString = frontPadding + newString
                newString = newString + afterPadding
                newString += "\n"
                newText += newString
                done = True
                i = x
    return newText

def getWordWidth(word):
    total = 0
    for x in range(0, len(word)):
        if word[x].isupper():
            total += upperWidth
        else:
            total += lowerWidth
    return total
