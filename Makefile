build:
	flutter pub run build_runner build --delete-conflicting-outputs

pod_update:
	cd ios && pod update && flutter clean && flutter pub get

run_prod:
	flutter run --flavor prod -t lib/main_prod.dart 

run_dev:
	flutter run --flavor dev -t lib/main_dev.dart 
