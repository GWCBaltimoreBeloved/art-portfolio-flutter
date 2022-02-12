build_runner:
	flutter pub run build_runner build --delete-conflicting-outputs

pod_update:
	cd ios && pod update && flutter clean && flutter pub get

run_prod:
	flutter run --flavor prod -t lib/main_prod.dart 

run_dev:
	flutter run --flavor dev -t lib/main-dev.dart 

brand_web_to_dev:
	sed -i -e 's/firebase-config-prod.js/firebase-config-dev.js/g' web/index.html

brand_web_to_prod:
	sed -i -e 's/firebase-config-dev.js/firebase-config-prod.js/g' web/index.html
