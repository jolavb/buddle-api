curl -X POST \
-F "email=julianb@bu.edu" \
-F "password=10WoodsPtlane" \
-F "password_confirmation=10WoodsPtlane" \
-F "confirm_success_url=http://localhost:3000/" \
http://localhost:3000/auth
