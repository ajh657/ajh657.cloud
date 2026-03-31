ENABLE_OAUTH = True

# Automatically creates a user in Seafile when they log in for the first time. Defaults to True.
OAUTH_CREATE_UNKNOWN_USER = True

# Automatically activate Seafile users when they log in for the first time. Defaults to True.
OAUTH_ACTIVATE_USER_AFTER_CREATION = True

OAUTH_ENABLE_INSECURE_TRANSPORT = True

OAUTH_CLIENT_ID = 'a1cz1NBO4lI5C3n6Nj9Wo3iGb5ZYwpOusjyKNxUa'
OAUTH_CLIENT_SECRET = '<client_secret>'

OAUTH_REDIRECT_URL = 'https://seafile.ajh657.me/oauth/callback/'

OAUTH_PROVIDER = 'authentik'
OAUTH_PROVIDER_DOMAIN = 'https://authentik.ajh657.me'
OAUTH_AUTHORIZATION_URL = 'https://authentik.ajh657.me/application/o/authorize/'
OAUTH_TOKEN_URL = 'https://authentik.ajh657.me/application/o/token/'
OAUTH_USER_INFO_URL = 'https://authentik.ajh657.me/application/o/userinfo/'

OAUTH_SCOPE = ["openid", "profile", "email"]

OAUTH_ATTRIBUTE_MAP = {
    "email": (True, "contact_email"),
    "name": (False, "name"),
    "sub": (False, "uid"),
}

# Optionally set the following variable to automatically redirect users to the login page
LOGIN_URL = 'https://seafile.ajh657.me/oauth/login/'

# Enable client to open an external browser for single sign on
# When it is false, the old builtin browser is opened for single sign on
# When it is true, the default browser of the operation system is opened
# The benefit of using system browser is that it can support hardware 2FA
# Since 11.0.0, and sync client 9.0.5, drive client 3.0.8
CLIENT_SSO_VIA_LOCAL_BROWSER = True   # default is False
