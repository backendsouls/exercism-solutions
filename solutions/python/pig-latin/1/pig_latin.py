import re


def translate(text: str) -> str:
    new_text = ""

    for word in text.split(" "):
        p = re.compile("^[aeiou]|^xr|^yt")
        if p.search(word):
            new_text += " " + word + "ay"
            continue

        p = re.compile("^[^aeiou]+y")
        if p.search(word):
            (start, end) = p.match(word).span()
            new_text += " " + word[end - 1:] + word[start:end - 1] + "ay"
            continue

        p = re.compile("^qu|^[^aeiou]+qu|^[^aeiou]+")
        if p.search(word):
            (start, end) = p.match(word).span()

            new_text += " " + word[end:] + word[start:end] + "ay"

    return new_text.strip()
