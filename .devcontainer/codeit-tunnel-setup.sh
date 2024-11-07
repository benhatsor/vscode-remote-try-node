# Set the tunnel's forwarded port (4242) to public: (it's private by default)

# See:
# https://github.com/orgs/community/discussions/4068#discussioncomment-3543891
# https://github.com/orgs/community/discussions/4068#discussioncomment-6043988

# Errors you get if the forwarded port isn't public:
# https://github.com/orgs/community/discussions/3637
# https://github.com/orgs/community/discussions/69610

# About forwarded ports:
# https://docs.github.com/en/codespaces/developing-in-a-codespace/forwarding-ports-in-your-codespace

gh codespace ports visibility 4242:public -c $CODESPACE_NAME


# Run the tunnel server:

node server.js
