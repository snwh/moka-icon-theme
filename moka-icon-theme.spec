# Spec file for package moka-icon-theme
#
# Copyright (c) 2014 Sam Hewitt <hewittsamuel@gmail.com>
#
# All modifications and additions to the file contributed by third parties
# remain the property of their copyright owners, unless otherwise agreed
# upon. The license for this file, and modifications and additions to the
# file, is the same license as for the pristine package itself (unless the
# license for the pristine package is not an Open Source License, in which
# case the license is the MIT License). An "Open Source License" is a
# license that conforms to the Open Source Definition (Version 1.9)
# published by the Open Source Initiative.
#


Name:		moka-icon-theme
Version:	4.0
Release:	1
Summary:	Moka Icon theme
Group:		System/GUI/Other
License:    LGPL-3.0+ or CC-BY-ND-3.0
Group:      System/GUI/GNOME
Url:        http://www.mokaproject.com/moka-icon-theme
Source0:	%{name}-%{version}.tar.gz
Requires:	faba-icon-theme hicolor-icon-theme, gnome-icon-theme
BuildArch:	noarch

%description
These are the Moka icons you're looking for

%prep
%setup -q

%build

%install
install -dpm 0755 $RPM_BUILD_ROOT%{_datadir}/icons/
cp -a Moka/ $RPM_BUILD_ROOT%{_datadir}/icons/

%clean
# Delete dead icon symlinks
find -L . -type l -delete

%files
%doc AUTHORS COPYING
%{_datadir}/icons/Moka/
