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

	# Icons
	mkdir -p build/me.kevinrpb.ktheme/Library/Themes/ktheme\ Icons.theme/IconBundles/
	cp src/icons/Info.plist build/me.kevinrpb.ktheme/Library/Themes/ktheme\ Icons.theme/Info.plist
	cp src/icons/*.png build/me.kevinrpb.ktheme/Library/Themes/ktheme\ Icons.theme/IconBundles/

	# Mask
	mkdir -p build/me.kevinrpb.ktheme/Library/Themes/ktheme\ Mask.theme/IconBundles/
	cp src/mask/Info.plist build/me.kevinrpb.ktheme/Library/Themes/ktheme\ mask.theme/Info.plist
	cp src/mask/*.png build/me.kevinrpb.ktheme/Library/Themes/ktheme\ mask.theme/IconBundles/

	# ...
	# mkdir -p build/me.kevinrpb.ktheme/Library/Themes/me.kevinrpb.kthemes/ktheme_icons/.../

.build:
	rm dist/me.kevinrpb.ktheme.deb
	dpkg -b build/me.kevinrpb.ktheme
	mv build/me.kevinrpb.ktheme.deb dist/me.kevinrpb.ktheme.deb
