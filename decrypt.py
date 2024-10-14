from Crypto.Cipher import AES
from Crypto.Random import get_random_bytes
from Crypto.Protocol.KDF import scrypt
import base64

# Function to encrypt data
def encrypt_data(plain_text, password):
    salt = get_random_bytes(16)
    key = scrypt(password.encode(), salt, key_len=32, N=2**14, r=8, p=1)
    cipher = AES.new(key, AES.MODE_GCM)
    cipher_text, tag = cipher.encrypt_and_digest(plain_text.encode())
    return base64.b64encode(salt + cipher.nonce + tag + cipher_text).decode()

# Function to decrypt data
def decrypt_data(cipher_data, password):
    data = base64.b64decode(cipher_data)
    salt, nonce, tag, cipher_text = data[:16], data[16:32], data[32:48], data[48:]
    key = scrypt(password.encode(), salt, key_len=32, N=2**14, r=8, p=1)
    cipher = AES.new(key, AES.MODE_GCM, nonce=nonce)
    return cipher.decrypt_and_verify(cipher_text, tag).decode()

# Example usage
encrypted = encrypt_data('bhavik', 'mysecretpassword')
print('Encrypted:', encrypted)

decrypted = decrypt_data(encrypted, 'mysecretpassword')
print('Decrypted:', decrypted)
