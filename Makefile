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
	mkdir -p build/Library/Themes/me.kevinrpb.ktheme/ktheme_icons/IconBundles/
	cp -r src/png/icons/. build/Library/Themes/me.kevinrpb.ktheme/ktheme_icons/IconBundles/

	# ...
	# mkdir -p build/Library/Themes/me.kevinrpb.kthemes/ktheme_icons/.../

.build:
	dpkg -b build/me.kevinrpb.ktheme
