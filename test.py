import urllib.parse

def decode_unicode_url(url):
    decoded_url = urllib.parse.unquote(url, encoding="utf-8")
    decoded_unicode = [f"U+{ord(c):04X}" for c in decoded_url]
    return decoded_url, decoded_unicode

# Example usage
# encoded_url = "https%3A%2F%2Fwww.example.com%2Fsearch%3Fq%3D%E3%81%93%E3%82%93%E3%81%AB%E3%81%A1%E3%81%AF%E4%B8%96%E7%95%8C"
encoded_url = "https://agomonibarta.com/%E0%A6%AA%E0%A7%8D%E0%A6%B0%E0%A7%8B%E0%A6%97%E0%A7%8D%E0%A6%B0%E0%A6%BE%E0%A6%AE-%E0%A6%B2%E0%A7%8D%E0%A6%AF%E0%A6%BE%E0%A6%99%E0%A7%8D%E0%A6%97%E0%A7%81%E0%A7%9F%E0%A7%87%E0%A6%9C/"
decoded_url, decoded_unicode = decode_unicode_url(encoded_url)
print("Decoded URL:", decoded_url)
print("Decoded Characters (Unicode):", decoded_unicode)

