json.call(user, :id, :name)
json.token user.generate_jwt
