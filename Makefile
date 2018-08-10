make:
	if [ -f dist/me.kevinrpb.ktheme.deb ]; \
	then \
		rm dist/me.kevinrpb.ktheme.deb; \
	fi;

	dpkg -b build/me.kevinrpb.ktheme
	mv build/me.kevinrpb.ktheme.deb dist/me.kevinrpb.ktheme.deb