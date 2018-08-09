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
	mkdir -p build/me.kevinrpb.ktheme/Library/Themes/ktheme.Themes/IconBundles/
	cp -r src/png/icons/. build/me.kevinrpb.ktheme/Library/Themes/ktheme.Themes/IconBundles/

	# ...
	# mkdir -p build/me.kevinrpb.ktheme/Library/Themes/me.kevinrpb.kthemes/ktheme_icons/.../

.build:
	rm dist/me.kevinrpb.ktheme.deb
	dpkg -b build/me.kevinrpb.ktheme
	mv build/me.kevinrpb.ktheme.deb dist/me.kevinrpb.ktheme.deb
