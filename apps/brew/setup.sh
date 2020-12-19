brew install fontconfig
brew install wget
brew install pipenv  # Python virtual env


# wget https://github.com/powerline/powerline/raw/develop/font/PowerlineSymbols.



# A CA file has been bootstrapped using certificates from the system
# keychain. To add additional certificates, place .pem files in
#   /usr/local/etc/openssl@1.1/certs

# and run
#   /usr/local/opt/openssl@1.1/bin/c_rehash

# openssl@1.1 is keg-only, which means it was not symlinked into /usr/local,
# because macOS provides LibreSSL.

# If you need to have openssl@1.1 first in your PATH run:
#   echo 'export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"' >> ~/.zshrc

# For compilers to find openssl@1.1 you may need to set:
#   export LDFLAGS="-L/usr/local/opt/openssl@1.1/lib"
#   export CPPFLAGS="-I/usr/local/opt/openssl@1.1/include"