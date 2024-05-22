from  yubico_client import Yubico

# Replace these with your actual client ID and secret key.
CLIENT_ID = '87187'
SECRET_KEY = 'v88UIZxOYb+A7tM4G8EsgArfDA0='

# Initialize the Yubico client with your credentials.
yubico_client = Yubico(CLIENT_ID, SECRET_KEY)

# Function to authenticate user with YubiKey OTP.
def authenticate_user(otp):
    try:
        # Validate the OTP with Yubico's servers.
        authentication_result = yubico_client.verify(otp)
        return authentication_result
    except Exception as e:
        # Handle exceptions (network issues, bad OTP, etc.)
        print("Authentication failed:", e)
        return False

# Example usage:
# Prompt user for OTP input (this would be replaced by your login page logic)
user_otp = input("Please touch the YubiKey button to generate an OTP: ")
# Authenticate the OTP
is_authenticated = authenticate_user(user_otp)
if is_authenticated:
    print("Authentication successful!")
else:
    print("Authentication failed. Please try again.")
