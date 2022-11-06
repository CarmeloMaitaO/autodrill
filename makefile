src=`pwd`
target=/usr/local/bin
oses="artix|arch|debian|ubuntu|kali"
os=$(shell uname -r) | grep -Eo $(oses)
install:
	cp $(src)/autodrill -t $(target)

clean:
	rm $(target)/autodrill

dependencies:
	if test os = artix -o os = arch
	then
		pacman -S ldns
	elif test os = debian -o os = ubuntu -o os = kali
	then
		apt install ldnsutils
	fi

.PHONY: install dependencies
