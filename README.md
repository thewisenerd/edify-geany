edify_geany
===========

Add edify syntax highlighting support to Geany

### about

edify is a update-script language for android since the days of donut. Thanks to
being very similar to C in terms of syntax, (though the functions really are
macros), one may use geany's default C syntax highlighter as a quick way to
check if there've been any errors in the custom updater-script for the awesome
mod you wrote. this by default looks at an extension that looks like
```\*updater-script\*```.

the _correct_ way of doing this might be abstract, but it does involve actually
parsing the updater-script, and attempting to execute it. An approach to this
can be found here: [trevd/android_external_edify_checker](https://github.com/trevd/android_external_edify_checker)

you may either follow the instructions below for installation or run the
```install.sh``` script.

### installation

* copy filetype_extensions.conf to your local .config folder

```shell
cp /usr/share/geany/filetype_extensions.conf ~/.config/geany
```

* add the following line before ```Erlang=*.erl;```

```
Edify=*updater-script*;
```

* copy ```filetypes.c``` to ```~/.config/geany/filedefs/``` folder

* change ```extension=c``` to ```extension=*updater-script*``` and
add a line ```lexer_filetype=C``` following it

* replace line ```comment_single=//``` with ```comment_single=#```

---

or, you could just use the ```install.sh``` script;

```
./install.sh
```
