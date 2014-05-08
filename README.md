AES256Base64
============

Goal: 
- Encrypt text string with AES256 and then Encode with Base64

Requirements:
- CommonCrypto (Apple opensource)
- Secruity.framework might be required

Procedure:
- Add NSData+AES256 category
- Add static class, AES256Base64Util, to provide Base64 Encoding
- Enjoy it !

How to get encryption key for AES256:
 * How to generate key on Terminal:
 $ openssl enc -aes-256-cbc -k secret -P -md sha1
 * Use 32-bit iv value.
