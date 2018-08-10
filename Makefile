make:
	make .setup
	make .build
	make .clean

.clean:
	rm -rf build/

.setup:
	make .clean

	# dpkg
	mkdir -p build/me.kevinrpb.ktheme/DEBIAN
	cp src/control build/me.kevinrpb.ktheme/DEBIAN/control

	# Icons - flat
	mkdir -p build/me.kevinrpb.ktheme/Library/Themes/[ktheme]\ Icons\ Flat.theme/IconBundles/
	cp src/icons-flat/Info.plist build/me.kevinrpb.ktheme/Library/Themes/[ktheme]\ Icons\ Flat.theme/Info.plist
	cp src/icons-flat/*.png build/me.kevinrpb.ktheme/Library/Themes/[ktheme]\ Icons\ Flat.theme/IconBundles/

	# Icons - shadow
	mkdir -p build/me.kevinrpb.ktheme/Library/Themes/[ktheme]\ Icons\ Shadow.theme/IconBundles/
	cp src/icons-shdow/Info.plist build/me.kevinrpb.ktheme/Library/Themes/[ktheme]\ Icons\ Shadow.theme/Info.plist
	cp src/icons-shdow/*.png build/me.kevinrpb.ktheme/Library/Themes/[ktheme]\ Icons\ Shadow.theme/IconBundles/

	# Mask
	mkdir -p build/me.kevinrpb.ktheme/Library/Themes/[ktheme]\ Mask.theme/IconBundles/
	cp src/mask/Info.plist build/me.kevinrpb.ktheme/Library/Themes/[ktheme]\ Icons\ Mask.theme/Info.plist
	cp src/mask/*.png build/me.kevinrpb.ktheme/Library/Themes/[ktheme]\ Icons\ Mask.theme/IconBundles/

	# ...
	# mkdir -p build/me.kevinrpb.ktheme/Library/Themes/me.kevinrpb.kthemes/ktheme_icons/.../

.build:
	rm dist/me.kevinrpb.ktheme.deb
	dpkg -b build/me.kevinrpb.ktheme
	mv build/me.kevinrpb.ktheme.deb dist/me.kevinrpb.ktheme.deb
