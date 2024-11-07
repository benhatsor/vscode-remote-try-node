# Install GitHub CLI:

# https://github.com/cli/cli/blob/trunk/docs/install_linux.md

(type -p wget >/dev/null || (sudo apt update && sudo apt-get install wget -y)) \
	&& sudo mkdir -p -m 755 /etc/apt/keyrings \
	&& wget -qO- https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo tee /etc/apt/keyrings/githubcli-archive-keyring.gpg > /dev/null \
	&& sudo chmod go+r /etc/apt/keyrings/githubcli-archive-keyring.gpg \
	&& echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null \
	&& sudo apt update \
	&& sudo apt install gh -y
 

# Set the tunnel's forwarded port (4242) to public: (it's private by default)

# See:
# https://github.com/orgs/community/discussions/4068#discussioncomment-3543891
# https://github.com/orgs/community/discussions/4068#discussioncomment-6043988

# Errors you get if the forwarded port isn't public:
# https://github.com/orgs/community/discussions/3637
# https://github.com/orgs/community/discussions/69610

# What are forwarded ports:
# https://docs.github.com/en/codespaces/developing-in-a-codespace/forwarding-ports-in-your-codespace

gh codespace ports visibility 4242:public -c $CODESPACE_NAME


# Run the tunnel server:

node server.js
