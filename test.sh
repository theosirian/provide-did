# prvd -v create user
# prvd -v authenticate

prvd -v organizations init \
  --name One \
  --did $(didkit key-to-did --key-path org-one.jwk key)

prvd -v organizations init \
  --name Two \
  --did $(didkit key-to-did --key-path org-two.jwk key)

for i in $(prvd organizations list); do
  if [[ "$i" =~ ^did:.* ]]; then
    prvd -v api_tokens init --offline-access --organization $i
  fi
done

# prvd -v workgroups init
