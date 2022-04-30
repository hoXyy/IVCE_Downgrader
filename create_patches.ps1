
$PatchesFolder = Join-Path ($PSScriptRoot) ("\Patches\")
$CEFolder = Join-Path ($PSScriptRoot) ("\Sources\CE\")
$RetailFolder = Join-Path ($PSScriptRoot) ("\Sources\Retail\Grand Theft Auto IV\")
$BaseFolder = $PSScriptRoot

GenPat /R ($CEFolder + "common\data\cdimages\script.img") ($RetailFolder + "common\data\cdimages\script.img") ($PatchesFolder + "script.img.pat")
GenPat /R ($CEFolder + "common\data\cdimages\script_network.img") ($RetailFolder + "common\data\cdimages\script_network.img") ($PatchesFolder + "script_network.img.pat")
GenPat /R ($CEFolder + "common\data\effects\entityFx.dat") ($RetailFolder + "common\data\effects\entityFx.dat") ($PatchesFolder + "entityFx.dat.pat")
GenPat /R ($CEFolder + "common\data\fonts.dat") ($RetailFolder + "common\data\fonts.dat") ($PatchesFolder + "fonts.dat.pat")
GenPat /R ($CEFolder + "common\data\fragments\ec_brx_wall.tune") ($RetailFolder + "common\data\fragments\ec_brx_wall.tune") ($PatchesFolder + "ec_brx_wall.tune.pat")
GenPat /R ($CEFolder + "common\data\fonts_r.dat") ($RetailFolder + "common\data\fonts_r.dat") ($PatchesFolder + "fonts_r.dat.pat")
GenPat /R ($CEFolder + "common\data\frontend_menus.xml") ($RetailFolder + "common\data\frontend_menus.xml") ($PatchesFolder + "frontend_menus.xml.pat")
GenPat /R ($CEFolder + "common\data\frontend_pc.dat") ($RetailFolder + "common\data\frontend_pc.dat") ($PatchesFolder + "frontend_pc.dat.pat")
GenPat /R ($CEFolder + "common\data\radiohud.dat") ($RetailFolder + "common\data\radiohud.dat") ($PatchesFolder + "radiohud.dat.pat")
GenPat /R ($CEFolder + "common\data\fonts.dat") ($RetailFolder + "common\data\fonts.dat") ($PatchesFolder + "fonts.dat.pat")
GenPat /R ($CEFolder + "common\data\songlist.csv") ($RetailFolder + "common\data\songlist.csv") ($PatchesFolder + "songlist.csv.pat")
GenPat /R ($CEFolder + "common\data\visualSettings.dat") ($RetailFolder + "common\data\visualSettings.dat") ($PatchesFolder + "visualSettings.dat.pat")
GenPat /R ($CEFolder + "common\shaders\dcl\rage_postfx.dcl") ($RetailFolder + "common\shaders\dcl\rage_postfx.dcl") ($PatchesFolder + "rage_postfx.dcl.pat")
GenPat /R ($CEFolder + "common\shaders\dcl\shadowZ.dcl") ($RetailFolder + "common\shaders\dcl\shadowZ.dcl") ($PatchesFolder + "shadowZ.dcl.pat")

Set-Location ($CEFolder + "common\shaders\win32_30")
mkdir -Path ($PatchesFolder + "shaders\win32_30")
Get-ChildItem -Recurse | ForEach-Object {
    $outfile = Join-Path ($PatchesFolder + "shaders\win32_30\") ($_.Name + '.pat')
    GenPat /R ($CEFolder + "common\shaders\win32_30\" + $_.Name) ($RetailFolder + "common\shaders\win32_30\" + $_.Name) $outfile
}

Set-Location ($CEFolder + "common\shaders\win32_30_atidx10")
mkdir -Path ($PatchesFolder + "shaders\win32_30_atidx10")
Get-ChildItem -Recurse | ForEach-Object {
    $outfile = Join-Path ($PatchesFolder + "shaders\win32_30_atidx10\") ($_.Name + '.pat')
    GenPat /R ($CEFolder + "common\shaders\win32_30_atidx10\" + $_.Name) ($RetailFolder + "common\shaders\win32_30_atidx10\" + $_.Name) $outfile
}

Set-Location ($CEFolder + "common\shaders\win32_30_low_ati")
mkdir -Path ($PatchesFolder + "shaders\win32_30_low_ati")
Get-ChildItem -Recurse | ForEach-Object {
    $outfile = Join-Path ($PatchesFolder + "shaders\win32_30_low_ati\") ($_.Name + '.pat')
    GenPat /R ($CEFolder + "common\shaders\win32_30_low_ati\" + $_.Name) ($RetailFolder + "common\shaders\win32_30_low_ati\" + $_.Name) $outfile
}

Set-Location ($CEFolder + "common\shaders\win32_30_nv6")
mkdir -Path ($PatchesFolder + "shaders\win32_30_nv6")
Get-ChildItem -Recurse | ForEach-Object {
    $outfile = Join-Path ($PatchesFolder + "shaders\win32_30_nv6\") ($_.Name + '.pat')
    GenPat /R ($CEFolder + "common\shaders\win32_30_nv6\" + $_.Name) ($RetailFolder + "common\shaders\win32_30_nv6\" + $_.Name) $outfile
}

Set-Location ($CEFolder + "common\shaders\win32_30_nv7")
mkdir -Path ($PatchesFolder + "shaders\win32_30_nv7")
Get-ChildItem -Recurse | ForEach-Object {
    $outfile = Join-Path ($PatchesFolder + "shaders\win32_30_nv7\") ($_.Name + '.pat')
    GenPat /R ($CEFolder + "common\shaders\win32_30_nv7\" + $_.Name) ($RetailFolder + "common\shaders\win32_30_nv7\" + $_.Name) $outfile
}

Set-Location ($CEFolder + "common\shaders\win32_30_nv8")
mkdir -Path ($PatchesFolder + "shaders\win32_30_nv8")
Get-ChildItem -Recurse | ForEach-Object {
    $outfile = Join-Path ($PatchesFolder + "shaders\win32_30_nv8\") ($_.Name + '.pat')
    GenPat /R ($CEFolder + "common\shaders\win32_30_nv8\" + $_.Name) ($RetailFolder + "common\shaders\win32_30_nv8\" + $_.Name) $outfile
}

GenPat ($CEFolder + "common\shaders\preload.list") ($RetailFolder + "common\shaders\preload.list") ($PatchesFolder + "preload.list.pat")

Set-Location ($CEFolder + "common\text")
mkdir -Path ($PatchesFolder + "text")
Get-ChildItem -Recurse | ForEach-Object {
    $outfile = Join-Path ($PatchesFolder + "text\") ($_.Name + '.pat')
    GenPat /R ($CEFolder + "common\text\" + $_.Name) ($RetailFolder + "common\text\" + $_.Name) $outfile
}


Set-Location ($CEFolder + "pc\html\bigdog.blogsnobs.org")
mkdir -Path ($PatchesFolder + "bigdog.blogsnobs.org")
Get-ChildItem -Recurse | ForEach-Object {
    $outfile = Join-Path ($PatchesFolder + "bigdog.blogsnobs.org") ($_.Name + '.pat')
    GenPat /R ($CEFolder + "pc\html\bigdog.blogsnobs.org\" + $_.Name) ($RetailFolder + "pc\html\bigdog.blogsnobs.org\" + $_.Name) $outfile
}

Set-Location ($CEFolder + "pc\html\darksoullock.blogsnobs.org")
mkdir -Path ($PatchesFolder + "darksoullock.blogsnobs.org")
Get-ChildItem -Recurse | ForEach-Object {
    $outfile = Join-Path ($PatchesFolder + "darksoullock.blogsnobs.org") ($_.Name + '.pat')
    GenPat /R ($CEFolder + "pc\html\darksoullock.blogsnobs.org\" + $_.Name) ($RetailFolder + "pc\html\darksoullock.blogsnobs.org\" + $_.Name) $outfile
}

Set-Location ($CEFolder + "pc\html\eddielowfilthslayer.blogsnobs.org")
mkdir -Path ($PatchesFolder + "eddielowfilthslayer.blogsnobs.org")
Get-ChildItem -Recurse | ForEach-Object {
    $outfile = Join-Path ($PatchesFolder + "eddielowfilthslayer.blogsnobs.org") ($_.Name + '.pat')
    GenPat /R ($CEFolder + "pc\html\eddielowfilthslayer.blogsnobs.org\" + $_.Name) ($RetailFolder + "pc\html\eddielowfilthslayer.blogsnobs.org\" + $_.Name) $outfile
}

Set-Location ($CEFolder + "pc\html\fefighter2008.blogsnobs.org")
mkdir -Path ($PatchesFolder + "fefighter2008.blogsnobs.org")
Get-ChildItem -Recurse | ForEach-Object {
    $outfile = Join-Path ($PatchesFolder + "fefighter2008.blogsnobs.org") ($_.Name + '.pat')
    GenPat /R ($CEFolder + "pc\html\fefighter2008.blogsnobs.org\" + $_.Name) ($RetailFolder + "pc\html\fefighter2008.blogsnobs.org\" + $_.Name) $outfile
}

Set-Location ($CEFolder + "pc\html\hidden")
mkdir -Path ($PatchesFolder + "hidden")
Get-ChildItem -Recurse | ForEach-Object {
    $outfile = Join-Path ($PatchesFolder + "hidden") ($_.Name + '.pat')
    GenPat /R ($CEFolder + "pc\html\hidden\" + $_.Name) ($RetailFolder + "pc\html\hidden\" + $_.Name) $outfile
}

Set-Location ($CEFolder + "pc\html\inyapuper.blogsnobs.org")
mkdir -Path ($PatchesFolder + "inyapuper.blogsnobs.org")
Get-ChildItem -Recurse | ForEach-Object {
    $outfile = Join-Path ($PatchesFolder + "inyapuper.blogsnobs.org") ($_.Name + '.pat')
    GenPat /R ($CEFolder + "pc\html\inyapuper.blogsnobs.org\" + $_.Name) ($RetailFolder + "pc\html\inyapuper.blogsnobs.org\" + $_.Name) $outfile
}

Set-Location ($CEFolder + "pc\html\liberatedwoman.blogsnobs.org")
mkdir -Path ($PatchesFolder + "liberatedwoman.blogsnobs.org")
Get-ChildItem -Recurse | ForEach-Object {
    $outfile = Join-Path ($PatchesFolder + "liberatedwoman.blogsnobs.org") ($_.Name + '.pat')
    GenPat /R ($CEFolder + "pc\html\liberatedwoman.blogsnobs.org\" + $_.Name) ($RetailFolder + "pc\html\liberatedwoman.blogsnobs.org\" + $_.Name) $outfile
}

Set-Location ($CEFolder + "pc\html\limevenus.blogsnobs.org")
mkdir -Path ($PatchesFolder + "limevenus.blogsnobs.org")
Get-ChildItem -Recurse | ForEach-Object {
    $outfile = Join-Path ($PatchesFolder + "limevenus.blogsnobs.org") ($_.Name + '.pat')
    GenPat /R ($CEFolder + "pc\html\limevenus.blogsnobs.org\" + $_.Name) ($RetailFolder + "pc\html\limevenus.blogsnobs.org\" + $_.Name) $outfile
}

Set-Location ($CEFolder + "pc\html\mail.eyefind.info")
mkdir -Path ($PatchesFolder + "mail.eyefind.info")
Get-ChildItem -Recurse | ForEach-Object {
    $outfile = Join-Path ($PatchesFolder + "mail.eyefind.info") ($_.Name + '.pat')
    GenPat /R ($CEFolder + "pc\html\mail.eyefind.info\" + $_.Name) ($RetailFolder + "pc\html\mail.eyefind.info\" + $_.Name) $outfile
}

Set-Location ($CEFolder + "pc\html\pychakilla.blogsnobs.org")
mkdir -Path ($PatchesFolder + "pychakilla.blogsnobs.org")
Get-ChildItem -Recurse | ForEach-Object {
    $outfile = Join-Path ($PatchesFolder + "pychakilla.blogsnobs.org") ($_.Name + '.pat')
    GenPat /R ($CEFolder + "pc\html\pychakilla.blogsnobs.org\" + $_.Name) ($RetailFolder + "pc\html\pychakilla.blogsnobs.org\" + $_.Name) $outfile
}

Set-Location ($CEFolder + "pc\html\www.americantravelguide.net")
mkdir -Path ($PatchesFolder + "www.americantravelguide.net")
Get-ChildItem -Recurse | ForEach-Object {
    $outfile = Join-Path ($PatchesFolder + "www.americantravelguide.net") ($_.Name + '.pat')
    GenPat /R ($CEFolder + "pc\html\www.americantravelguide.net\" + $_.Name) ($RetailFolder + "pc\html\www.americantravelguide.net\" + $_.Name) $outfile
}

Set-Location ($CEFolder + "pc\html\www.antfarmcam.net")
mkdir -Path ($PatchesFolder + "www.antfarmcam.net")
Get-ChildItem -Recurse | ForEach-Object {
    $outfile = Join-Path ($PatchesFolder + "www.antfarmcam.net") ($_.Name + '.pat')
    GenPat /R ($CEFolder + "pc\html\www.antfarmcam.net\" + $_.Name) ($RetailFolder + "pc\html\www.antfarmcam.net\" + $_.Name) $outfile
}

Set-Location ($CEFolder + "pc\html\www.area53site.com")
mkdir -Path ($PatchesFolder + "www.area53site.com")
Get-ChildItem -Recurse | ForEach-Object {
    $outfile = Join-Path ($PatchesFolder + "www.area53site.com") ($_.Name + '.pat')
    GenPat /R ($CEFolder + "pc\html\www.area53site.com\" + $_.Name) ($RetailFolder + "pc\html\www.area53site.com\" + $_.Name) $outfile
}

Set-Location ($CEFolder + "pc\html\www.artthrob.org")
mkdir -Path ($PatchesFolder + "www.artthrob.org")
Get-ChildItem -Recurse | ForEach-Object {
    $outfile = Join-Path ($PatchesFolder + "www.artthrob.org") ($_.Name + '.pat')
    GenPat /R ($CEFolder + "pc\html\www.artthrob.org\" + $_.Name) ($RetailFolder + "pc\html\www.artthrob.org\" + $_.Name) $outfile
}

Set-Location ($CEFolder + "pc\html\www.a-thousand-words.net")
mkdir -Path ($PatchesFolder + "www.a-thousand-words.net")
Get-ChildItem -Recurse | ForEach-Object {
    $outfile = Join-Path ($PatchesFolder + "www.a-thousand-words.net") ($_.Name + '.pat')
    GenPat /R ($CEFolder + "pc\html\www.a-thousand-words.net\" + $_.Name) ($RetailFolder + "pc\html\www.a-thousand-words.net\" + $_.Name) $outfile
}

Set-Location ($CEFolder + "pc\html\www.autoeroticar.com")
mkdir -Path ($PatchesFolder + "www.autoeroticar.com")
Get-ChildItem -Recurse | ForEach-Object {
    $outfile = Join-Path ($PatchesFolder + "www.autoeroticar.com") ($_.Name + '.pat')
    GenPat /R ($CEFolder + "pc\html\www.autoeroticar.com\" + $_.Name) ($RetailFolder + "pc\html\www.autoeroticar.com\" + $_.Name) $outfile
}

Set-Location ($CEFolder + "pc\html\www.babiesovernight.com")
mkdir -Path ($PatchesFolder + "www.babiesovernight.com")
Get-ChildItem -Recurse | ForEach-Object {
    $outfile = Join-Path ($PatchesFolder + "www.babiesovernight.com") ($_.Name + '.pat')
    GenPat /R ($CEFolder + "pc\html\www.babiesovernight.com\" + $_.Name) ($RetailFolder + "pc\html\www.babiesovernight.com\" + $_.Name) $outfile
}

Set-Location ($CEFolder + "pc\html\www.beanmachinecoffee.com")
mkdir -Path ($PatchesFolder + "www.beanmachinecoffee.com")
Get-ChildItem -Recurse | ForEach-Object {
    $outfile = Join-Path ($PatchesFolder + "www.beanmachinecoffee.com") ($_.Name + '.pat')
    GenPat /R ($CEFolder + "pc\html\www.beanmachinecoffee.com\" + $_.Name) ($RetailFolder + "pc\html\www.beanmachinecoffee.com\" + $_.Name) $outfile
}

Set-Location ($CEFolder + "pc\html\www.blogsnobs.org")
mkdir -Path ($PatchesFolder + "www.blogsnobs.org")
Get-ChildItem -Recurse | ForEach-Object {
    $outfile = Join-Path ($PatchesFolder + "www.blogsnobs.org") ($_.Name + '.pat')
    GenPat /R ($CEFolder + "pc\html\www.blogsnobs.org\" + $_.Name) ($RetailFolder + "pc\html\www.blogsnobs.org\" + $_.Name) $outfile
}

Set-Location ($CEFolder + "pc\html\www.bruciesexecutivelifestyleautos.com")
mkdir -Path ($PatchesFolder + "www.bruciesexecutivelifestyleautos.com")
Get-ChildItem -Recurse | ForEach-Object {
    $outfile = Join-Path ($PatchesFolder + "www.bruciesexecutivelifestyleautos.com") ($_.Name + '.pat')
    GenPat /R ($CEFolder + "pc\html\www.bruciesexecutivelifestyleautos.com\" + $_.Name) ($RetailFolder + "pc\html\www.bruciesexecutivelifestyleautos.com\" + $_.Name) $outfile
}

Set-Location ($CEFolder + "pc\html\www.bulimialovers.com")
mkdir -Path ($PatchesFolder + "www.bulimialovers.com")
Get-ChildItem -Recurse | ForEach-Object {
    $outfile = Join-Path ($PatchesFolder + "www.bulimialovers.com") ($_.Name + '.pat')
    GenPat /R ($CEFolder + "pc\html\www.bulimialovers.com\" + $_.Name) ($RetailFolder + "pc\html\www.bulimialovers.com\" + $_.Name) $outfile
}

Set-Location ($CEFolder + "pc\html\www.burgershot.net")
mkdir -Path ($PatchesFolder + "www.burgershot.net")
Get-ChildItem -Recurse | ForEach-Object {
    $outfile = Join-Path ($PatchesFolder + "www.burgershot.net") ($_.Name + '.pat')
    GenPat /R ($CEFolder + "pc\html\www.burgershot.net\" + $_.Name) ($RetailFolder + "pc\html\www.burgershot.net\" + $_.Name) $outfile
}

Set-Location ($CEFolder + "pc\html\www.chiropracticovernight.com")
mkdir -Path ($PatchesFolder + "www.chiropracticovernight.com")
Get-ChildItem -Recurse | ForEach-Object {
    $outfile = Join-Path ($PatchesFolder + "www.chiropracticovernight.com") ($_.Name + '.pat')
    GenPat /R ($CEFolder + "pc\html\www.chiropracticovernight.com\" + $_.Name) ($RetailFolder + "pc\html\www.chiropracticovernight.com\" + $_.Name) $outfile
}

Set-Location ($CEFolder + "pc\html\www.craplist.net")
mkdir -Path ($PatchesFolder + "www.craplist.net")
Get-ChildItem -Recurse | ForEach-Object {
    $outfile = Join-Path ($PatchesFolder + "www.craplist.net") ($_.Name + '.pat')
    GenPat /R ($CEFolder + "pc\html\www.craplist.net\" + $_.Name) ($RetailFolder + "pc\html\www.craplist.net\" + $_.Name) $outfile
}

Set-Location ($CEFolder + "pc\html\www.designerslave.com")
mkdir -Path ($PatchesFolder + "www.designerslave.com")
Get-ChildItem -Recurse | ForEach-Object {
    $outfile = Join-Path ($PatchesFolder + "www.designerslave.com") ($_.Name + '.pat')
    GenPat /R ($CEFolder + "pc\html\www.designerslave.com\" + $_.Name) ($RetailFolder + "pc\html\www.designerslave.com\" + $_.Name) $outfile
}

Set-Location ($CEFolder + "pc\html\www.domestobotlovers.com")
mkdir -Path ($PatchesFolder + "www.domestobotlovers.com")
Get-ChildItem -Recurse | ForEach-Object {
    $outfile = Join-Path ($PatchesFolder + "www.domestobotlovers.com") ($_.Name + '.pat')
    GenPat /R ($CEFolder + "pc\html\www.domestobotlovers.com\" + $_.Name) ($RetailFolder + "pc\html\www.domestobotlovers.com\" + $_.Name) $outfile
}

Set-Location ($CEFolder + "pc\html\www.dragonbrainthemovie.com")
mkdir -Path ($PatchesFolder + "www.dragonbrainthemovie.com")
Get-ChildItem -Recurse | ForEach-Object {
    $outfile = Join-Path ($PatchesFolder + "www.dragonbrainthemovie.com") ($_.Name + '.pat')
    GenPat /R ($CEFolder + "pc\html\www.dragonbrainthemovie.com\" + $_.Name) ($RetailFolder + "pc\html\www.dragonbrainthemovie.com\" + $_.Name) $outfile
}

Set-Location ($CEFolder + "pc\html\www.easterislandcoverup.com")
mkdir -Path ($PatchesFolder + "www.easterislandcoverup.com")
Get-ChildItem -Recurse | ForEach-Object {
    $outfile = Join-Path ($PatchesFolder + "www.easterislandcoverup.com") ($_.Name + '.pat')
    GenPat /R ($CEFolder + "pc\html\www.easterislandcoverup.com\" + $_.Name) ($RetailFolder + "pc\html\www.easterislandcoverup.com\" + $_.Name) $outfile
}

Set-Location ($CEFolder + "pc\html\www.eatbiglogs.com")
mkdir -Path ($PatchesFolder + "www.eatbiglogs.com")
Get-ChildItem -Recurse | ForEach-Object {
    $outfile = Join-Path ($PatchesFolder + "www.eatbiglogs.com") ($_.Name + '.pat')
    GenPat /R ($CEFolder + "pc\html\www.eatbiglogs.com\" + $_.Name) ($RetailFolder + "pc\html\www.eatbiglogs.com\" + $_.Name) $outfile
}

Set-Location ($CEFolder + "pc\html\www.elchamucoroboto.com")
mkdir -Path ($PatchesFolder + "www.elchamucoroboto.com")
Get-ChildItem -Recurse | ForEach-Object {
    $outfile = Join-Path ($PatchesFolder + "www.elchamucoroboto.com") ($_.Name + '.pat')
    GenPat /R ($CEFolder + "pc\html\www.elchamucoroboto.com\" + $_.Name) ($RetailFolder + "pc\html\www.elchamucoroboto.com\" + $_.Name) $outfile
}

Set-Location ($CEFolder + "pc\html\www.electrictit.com")
mkdir -Path ($PatchesFolder + "www.electrictit.com")
Get-ChildItem -Recurse | ForEach-Object {
    $outfile = Join-Path ($PatchesFolder + "www.electrictit.com") ($_.Name + '.pat')
    GenPat /R ($CEFolder + "pc\html\www.electrictit.com\" + $_.Name) ($RetailFolder + "pc\html\www.electrictit.com\" + $_.Name) $outfile
}

Set-Location ($CEFolder + "pc\html\www.electronicwritingtablet.com")
mkdir -Path ($PatchesFolder + "www.electronicwritingtablet.com")
Get-ChildItem -Recurse | ForEach-Object {
    $outfile = Join-Path ($PatchesFolder + "www.electronicwritingtablet.com") ($_.Name + '.pat')
    GenPat /R ($CEFolder + "pc\html\www.electronicwritingtablet.com\" + $_.Name) ($RetailFolder + "pc\html\www.electronicwritingtablet.com\" + $_.Name) $outfile
}

Set-Location ($CEFolder + "pc\html\www.erisfootware.com")
mkdir -Path ($PatchesFolder + "www.erisfootware.com")
Get-ChildItem -Recurse | ForEach-Object {
    $outfile = Join-Path ($PatchesFolder + "www.erisfootware.com") ($_.Name + '.pat')
    GenPat /R ($CEFolder + "pc\html\www.erisfootware.com\" + $_.Name) ($RetailFolder + "pc\html\www.erisfootware.com\" + $_.Name) $outfile
}

Set-Location ($CEFolder + "pc\html\www.eugenicsincorporated.com")
mkdir -Path ($PatchesFolder + "www.eugenicsincorporated.com")
Get-ChildItem -Recurse | ForEach-Object {
    $outfile = Join-Path ($PatchesFolder + "www.eugenicsincorporated.com") ($_.Name + '.pat')
    GenPat /R ($CEFolder + "pc\html\www.eugenicsincorporated.com\" + $_.Name) ($RetailFolder + "pc\html\www.eugenicsincorporated.com\" + $_.Name) $outfile
}

Set-Location ($CEFolder + "pc\html\www.eunux.net")
mkdir -Path ($PatchesFolder + "www.eunux.net")
Get-ChildItem -Recurse | ForEach-Object {
    $outfile = Join-Path ($PatchesFolder + "www.eunux.net") ($_.Name + '.pat')
    GenPat /R ($CEFolder + "pc\html\www.eunux.net\" + $_.Name) ($RetailFolder + "pc\html\www.eunux.net\" + $_.Name) $outfile
}

Set-Location ($CEFolder + "pc\html\www.eyefind.info")
mkdir -Path ($PatchesFolder + "www.eyefind.info")
Get-ChildItem -Recurse | ForEach-Object {
    $outfile = Join-Path ($PatchesFolder + "www.eyefind.info") ($_.Name + '.pat')
    GenPat /R ($CEFolder + "pc\html\www.eyefind.info\" + $_.Name) ($RetailFolder + "pc\html\www.eyefind.info\" + $_.Name) $outfile
}

Set-Location ($CEFolder + "pc\html\www.fantasyleaguebatswingers.com")
mkdir -Path ($PatchesFolder + "www.fantasyleaguebatswingers.com")
Get-ChildItem -Recurse | ForEach-Object {
    $outfile = Join-Path ($PatchesFolder + "www.fantasyleaguebatswingers.com") ($_.Name + '.pat')
    GenPat /R ($CEFolder + "pc\html\www.fantasyleaguebatswingers.com\" + $_.Name) ($RetailFolder + "pc\html\www.fantasyleaguebatswingers.com\" + $_.Name) $outfile
}

Set-Location ($CEFolder + "pc\html\www.fistfans.com")
mkdir -Path ($PatchesFolder + "www.fistfans.com")
Get-ChildItem -Recurse | ForEach-Object {
    $outfile = Join-Path ($PatchesFolder + "www.fistfans.com") ($_.Name + '.pat')
    GenPat /R ($CEFolder + "pc\html\www.fistfans.com\" + $_.Name) ($RetailFolder + "pc\html\www.fistfans.com\" + $_.Name) $outfile
}

Set-Location ($CEFolder + "pc\html\www.flyhighpizzapie.com")
mkdir -Path ($PatchesFolder + "www.flyhighpizzapie.com")
Get-ChildItem -Recurse | ForEach-Object {
    $outfile = Join-Path ($PatchesFolder + "www.flyhighpizzapie.com") ($_.Name + '.pat')
    GenPat /R ($CEFolder + "pc\html\www.flyhighpizzapie.com\" + $_.Name) ($RetailFolder + "pc\html\www.flyhighpizzapie.com\" + $_.Name) $outfile
}

Set-Location ($CEFolder + "pc\html\www.freejames.org")
mkdir -Path ($PatchesFolder + "www.freejames.org")
Get-ChildItem -Recurse | ForEach-Object {
    $outfile = Join-Path ($PatchesFolder + "www.freejames.org") ($_.Name + '.pat')
    GenPat /R ($CEFolder + "pc\html\www.freejames.org\" + $_.Name) ($RetailFolder + "pc\html\www.freejames.org\" + $_.Name) $outfile
}

Set-Location ($CEFolder + "pc\html\www.friendswithoutfaces.net")
mkdir -Path ($PatchesFolder + "www.friendswithoutfaces.net")
Get-ChildItem -Recurse | ForEach-Object {
    $outfile = Join-Path ($PatchesFolder + "www.friendswithoutfaces.net") ($_.Name + '.pat')
    GenPat /R ($CEFolder + "pc\html\www.friendswithoutfaces.net\" + $_.Name) ($RetailFolder + "pc\html\www.friendswithoutfaces.net\" + $_.Name) $outfile
}

Set-Location ($CEFolder + "pc\html\www.fruitcomputers.com")
mkdir -Path ($PatchesFolder + "www.fruitcomputers.com")
Get-ChildItem -Recurse | ForEach-Object {
    $outfile = Join-Path ($PatchesFolder + "www.fruitcomputers.com") ($_.Name + '.pat')
    GenPat /R ($CEFolder + "pc\html\www.fruitcomputers.com\" + $_.Name) ($RetailFolder + "pc\html\www.fruitcomputers.com\" + $_.Name) $outfile
}

Set-Location ($CEFolder + "pc\html\www.gloryholethemepark.com")
mkdir -Path ($PatchesFolder + "www.gloryholethemepark.com")
Get-ChildItem -Recurse | ForEach-Object {
    $outfile = Join-Path ($PatchesFolder + "www.gloryholethemepark.com") ($_.Name + '.pat')
    GenPat /R ($CEFolder + "pc\html\www.gloryholethemepark.com\" + $_.Name) ($RetailFolder + "pc\html\www.gloryholethemepark.com\" + $_.Name) $outfile
}

Set-Location ($CEFolder + "pc\html\www.goldberglignerandshyster.com")
mkdir -Path ($PatchesFolder + "www.goldberglignerandshyster.com")
Get-ChildItem -Recurse | ForEach-Object {
    $outfile = Join-Path ($PatchesFolder + "www.goldberglignerandshyster.com") ($_.Name + '.pat')
    GenPat /R ($CEFolder + "pc\html\www.goldberglignerandshyster.com\" + $_.Name) ($RetailFolder + "pc\html\www.goldberglignerandshyster.com\" + $_.Name) $outfile
}

Set-Location ($CEFolder + "pc\html\www.golfloversonline.net")
mkdir -Path ($PatchesFolder + "www.golfloversonline.net")
Get-ChildItem -Recurse | ForEach-Object {
    $outfile = Join-Path ($PatchesFolder + "www.golfloversonline.net") ($_.Name + '.pat')
    GenPat /R ($CEFolder + "pc\html\www.golfloversonline.net\" + $_.Name) ($RetailFolder + "pc\html\www.golfloversonline.net\" + $_.Name) $outfile
}

Set-Location ($CEFolder + "pc\html\www.grype.org")
mkdir -Path ($PatchesFolder + "www.grype.org")
Get-ChildItem -Recurse | ForEach-Object {
    $outfile = Join-Path ($PatchesFolder + "www.grype.org") ($_.Name + '.pat')
    GenPat /R ($CEFolder + "pc\html\www.grype.org\" + $_.Name) ($RetailFolder + "pc\html\www.grype.org\" + $_.Name) $outfile
}

Set-Location ($CEFolder + "pc\html\www.hand-jobs-online.com")
mkdir -Path ($PatchesFolder + "www.hand-jobs-online.com")
Get-ChildItem -Recurse | ForEach-Object {
    $outfile = Join-Path ($PatchesFolder + "www.hand-jobs-online.com") ($_.Name + '.pat')
    GenPat /R ($CEFolder + "pc\html\www.hand-jobs-online.com\" + $_.Name) ($RetailFolder + "pc\html\www.hand-jobs-online.com\" + $_.Name) $outfile
}

Set-Location ($CEFolder + "pc\html\www.happyfarmersupplies.com")
mkdir -Path ($PatchesFolder + "www.happyfarmersupplies.com")
Get-ChildItem -Recurse | ForEach-Object {
    $outfile = Join-Path ($PatchesFolder + "www.happyfarmersupplies.com") ($_.Name + '.pat')
    GenPat /R ($CEFolder + "pc\html\www.happyfarmersupplies.com\" + $_.Name) ($RetailFolder + "pc\html\www.happyfarmersupplies.com\" + $_.Name) $outfile
}

Set-Location ($CEFolder + "pc\html\www.heritagenothate.org")
mkdir -Path ($PatchesFolder + "www.heritagenothate.org")
Get-ChildItem -Recurse | ForEach-Object {
    $outfile = Join-Path ($PatchesFolder + "www.heritagenothate.org") ($_.Name + '.pat')
    GenPat /R ($CEFolder + "pc\html\www.heritagenothate.org\" + $_.Name) ($RetailFolder + "pc\html\www.heritagenothate.org\" + $_.Name) $outfile
}

Set-Location ($CEFolder + "pc\html\www.homecremation.com")
mkdir -Path ($PatchesFolder + "www.homecremation.com")
Get-ChildItem -Recurse | ForEach-Object {
    $outfile = Join-Path ($PatchesFolder + "www.homecremation.com") ($_.Name + '.pat')
    GenPat /R ($CEFolder + "pc\html\www.homecremation.com\" + $_.Name) ($RetailFolder + "pc\html\www.homecremation.com\" + $_.Name) $outfile
}

Set-Location ($CEFolder + "pc\html\www.homeworkfriend.org")
mkdir -Path ($PatchesFolder + "www.homeworkfriend.org")
Get-ChildItem -Recurse | ForEach-Object {
    $outfile = Join-Path ($PatchesFolder + "www.homeworkfriend.org") ($_.Name + '.pat')
    GenPat /R ($CEFolder + "pc\html\www.homeworkfriend.org\" + $_.Name) ($RetailFolder + "pc\html\www.homeworkfriend.org\" + $_.Name) $outfile
}

Set-Location ($CEFolder + "pc\html\www.hornyhighschoolreunions.com")
mkdir -Path ($PatchesFolder + "www.hornyhighschoolreunions.com")
Get-ChildItem -Recurse | ForEach-Object {
    $outfile = Join-Path ($PatchesFolder + "www.hornyhighschoolreunions.com") ($_.Name + '.pat')
    GenPat /R ($CEFolder + "pc\html\www.hornyhighschoolreunions.com\" + $_.Name) ($RetailFolder + "pc\html\www.hornyhighschoolreunions.com\" + $_.Name) $outfile
}

Set-Location ($CEFolder + "pc\html\www.huganimals.com")
mkdir -Path ($PatchesFolder + "www.huganimals.com")
Get-ChildItem -Recurse | ForEach-Object {
    $outfile = Join-Path ($PatchesFolder + "www.huganimals.com") ($_.Name + '.pat')
    GenPat /R ($CEFolder + "pc\html\www.huganimals.com\" + $_.Name) ($RetailFolder + "pc\html\www.huganimals.com\" + $_.Name) $outfile
}

Set-Location ($CEFolder + "pc\html\www.ilovetoblow.org")
mkdir -Path ($PatchesFolder + "www.ilovetoblow.org")
Get-ChildItem -Recurse | ForEach-Object {
    $outfile = Join-Path ($PatchesFolder + "www.ilovetoblow.org") ($_.Name + '.pat')
    GenPat /R ($CEFolder + "pc\html\www.ilovetoblow.org\" + $_.Name) ($RetailFolder + "pc\html\www.ilovetoblow.org\" + $_.Name) $outfile
}

Set-Location ($CEFolder + "pc\html\www.krapea.com")
mkdir -Path ($PatchesFolder + "www.krapea.com")
Get-ChildItem -Recurse | ForEach-Object {
    $outfile = Join-Path ($PatchesFolder + "www.krapea.com") ($_.Name + '.pat')
    GenPat /R ($CEFolder + "pc\html\www.krapea.com\" + $_.Name) ($RetailFolder + "pc\html\www.krapea.com\" + $_.Name) $outfile
}

Set-Location ($CEFolder + "pc\html\www.leftover-vacations.com")
mkdir -Path ($PatchesFolder + "www.leftover-vacations.com")
Get-ChildItem -Recurse | ForEach-Object {
    $outfile = Join-Path ($PatchesFolder + "www.leftover-vacations.com") ($_.Name + '.pat')
    GenPat /R ($CEFolder + "pc\html\www.leftover-vacations.com\" + $_.Name) ($RetailFolder + "pc\html\www.leftover-vacations.com\" + $_.Name) $outfile
}

Set-Location ($CEFolder + "pc\html\www.libertycitypolice.com")
mkdir -Path ($PatchesFolder + "www.libertycitypolice.com")
Get-ChildItem -Recurse | ForEach-Object {
    $outfile = Join-Path ($PatchesFolder + "www.libertycitypolice.com") ($_.Name + '.pat')
    GenPat /R ($CEFolder + "pc\html\www.libertycitypolice.com\" + $_.Name) ($RetailFolder + "pc\html\www.libertycitypolice.com\" + $_.Name) $outfile
}

Set-Location ($CEFolder + "pc\html\www.libertycityrealestate.net")
mkdir -Path ($PatchesFolder + "www.libertycityrealestate.net")
Get-ChildItem -Recurse | ForEach-Object {
    $outfile = Join-Path ($PatchesFolder + "www.libertycityrealestate.net") ($_.Name + '.pat')
    GenPat /R ($CEFolder + "pc\html\www.libertycityrealestate.net\" + $_.Name) ($RetailFolder + "pc\html\www.libertycityrealestate.net\" + $_.Name) $outfile
}

Set-Location ($CEFolder + "pc\html\www.libertytreeonline.com")
mkdir -Path ($PatchesFolder + "www.libertytreeonline.com")
Get-ChildItem -Recurse | ForEach-Object {
    $outfile = Join-Path ($PatchesFolder + "www.libertytreeonline.com") ($_.Name + '.pat')
    GenPat /R ($CEFolder + "pc\html\www.libertytreeonline.com\" + $_.Name) ($RetailFolder + "pc\html\www.libertytreeonline.com\" + $_.Name) $outfile
}

Set-Location ($CEFolder + "pc\html\www.liesdamnlies.net")
mkdir -Path ($PatchesFolder + "www.liesdamnlies.net")
Get-ChildItem -Recurse | ForEach-Object {
    $outfile = Join-Path ($PatchesFolder + "www.liesdamnlies.net") ($_.Name + '.pat')
    GenPat /R ($CEFolder + "pc\html\www.liesdamnlies.net\" + $_.Name) ($RetailFolder + "pc\html\www.liesdamnlies.net\" + $_.Name) $outfile
}

Set-Location ($CEFolder + "pc\html\www.lipurgex.com")
mkdir -Path ($PatchesFolder + "www.lipurgex.com")
Get-ChildItem -Recurse | ForEach-Object {
    $outfile = Join-Path ($PatchesFolder + "www.lipurgex.com") ($_.Name + '.pat')
    GenPat /R ($CEFolder + "pc\html\www.lipurgex.com\" + $_.Name) ($RetailFolder + "pc\html\www.lipurgex.com\" + $_.Name) $outfile
}

Set-Location ($CEFolder + "pc\html\www.littlelacysurprisepageant.com")
mkdir -Path ($PatchesFolder + "www.littlelacysurprisepageant.com")
Get-ChildItem -Recurse | ForEach-Object {
    $outfile = Join-Path ($PatchesFolder + "www.littlelacysurprisepageant.com") ($_.Name + '.pat')
    GenPat /R ($CEFolder + "pc\html\www.littlelacysurprisepageant.com\" + $_.Name) ($RetailFolder + "pc\html\www.littlelacysurprisepageant.com\" + $_.Name) $outfile
}

Set-Location ($CEFolder + "pc\html\www.lootandwank.com")
mkdir -Path ($PatchesFolder + "www.lootandwank.com")
Get-ChildItem -Recurse | ForEach-Object {
    $outfile = Join-Path ($PatchesFolder + "www.lootandwank.com") ($_.Name + '.pat')
    GenPat /R ($CEFolder + "pc\html\www.lootandwank.com\" + $_.Name) ($RetailFolder + "pc\html\www.lootandwank.com\" + $_.Name) $outfile
}

Set-Location ($CEFolder + "pc\html\www.love-meet.net")
mkdir -Path ($PatchesFolder + "www.love-meet.net")
Get-ChildItem -Recurse | ForEach-Object {
    $outfile = Join-Path ($PatchesFolder + "www.love-meet.net") ($_.Name + '.pat')
    GenPat /R ($CEFolder + "pc\html\www.love-meet.net\" + $_.Name) ($RetailFolder + "pc\html\www.love-meet.net\" + $_.Name) $outfile
}

Set-Location ($CEFolder + "pc\html\www.loveyourmeat.com")
mkdir -Path ($PatchesFolder + "www.loveyourmeat.com")
Get-ChildItem -Recurse | ForEach-Object {
    $outfile = Join-Path ($PatchesFolder + "www.loveyourmeat.com") ($_.Name + '.pat')
    GenPat /R ($CEFolder + "pc\html\www.loveyourmeat.com\" + $_.Name) ($RetailFolder + "pc\html\www.loveyourmeat.com\" + $_.Name) $outfile
}

Set-Location ($CEFolder + "pc\html\www.modderstotallyrule.com")
mkdir -Path ($PatchesFolder + "www.modderstotallyrule.com")
Get-ChildItem -Recurse | ForEach-Object {
    $outfile = Join-Path ($PatchesFolder + "www.modderstotallyrule.com") ($_.Name + '.pat')
    GenPat /R ($CEFolder + "pc\html\www.modderstotallyrule.com\" + $_.Name) ($RetailFolder + "pc\html\www.modderstotallyrule.com\" + $_.Name) $outfile
}

Set-Location ($CEFolder + "pc\html\www.money2makemoney.com")
mkdir -Path ($PatchesFolder + "www.money2makemoney.com")
Get-ChildItem -Recurse | ForEach-Object {
    $outfile = Join-Path ($PatchesFolder + "www.money2makemoney.com") ($_.Name + '.pat')
    GenPat /R ($CEFolder + "pc\html\www.money2makemoney.com\" + $_.Name) ($RetailFolder + "pc\html\www.money2makemoney.com\" + $_.Name) $outfile
}

Set-Location ($CEFolder + "pc\html\www.myonlineme.com")
mkdir -Path ($PatchesFolder + "www.myonlineme.com")
Get-ChildItem -Recurse | ForEach-Object {
    $outfile = Join-Path ($PatchesFolder + "www.myonlineme.com") ($_.Name + '.pat')
    GenPat /R ($CEFolder + "pc\html\www.myonlineme.com\" + $_.Name) ($RetailFolder + "pc\html\www.myonlineme.com\" + $_.Name) $outfile
}

Set-Location ($CEFolder + "pc\html\www.myroomonline.net")
mkdir -Path ($PatchesFolder + "www.myroomonline.net")
Get-ChildItem -Recurse | ForEach-Object {
    $outfile = Join-Path ($PatchesFolder + "www.myroomonline.net") ($_.Name + '.pat')
    GenPat /R ($CEFolder + "pc\html\www.myroomonline.net\" + $_.Name) ($RetailFolder + "pc\html\www.myroomonline.net\" + $_.Name) $outfile
}

Set-Location ($CEFolder + "pc\html\www.onlineradiorevolution.com")
mkdir -Path ($PatchesFolder + "www.onlineradiorevolution.com")
Get-ChildItem -Recurse | ForEach-Object {
    $outfile = Join-Path ($PatchesFolder + "www.onlineradiorevolution.com") ($_.Name + '.pat')
    GenPat /R ($CEFolder + "pc\html\www.onlineradiorevolution.com\" + $_.Name) ($RetailFolder + "pc\html\www.onlineradiorevolution.com\" + $_.Name) $outfile
}

Set-Location ($CEFolder + "pc\html\www.our-own-reality.com")
mkdir -Path ($PatchesFolder + "www.our-own-reality.com")
Get-ChildItem -Recurse | ForEach-Object {
    $outfile = Join-Path ($PatchesFolder + "www.our-own-reality.com") ($_.Name + '.pat')
    GenPat /R ($CEFolder + "pc\html\www.our-own-reality.com\" + $_.Name) ($RetailFolder + "pc\html\www.our-own-reality.com\" + $_.Name) $outfile
}

Set-Location ($CEFolder + "pc\html\www.outdatedtastes.com")
mkdir -Path ($PatchesFolder + "www.outdatedtastes.com")
Get-ChildItem -Recurse | ForEach-Object {
    $outfile = Join-Path ($PatchesFolder + "www.outdatedtastes.com") ($_.Name + '.pat')
    GenPat /R ($CEFolder + "pc\html\www.outdatedtastes.com\" + $_.Name) ($RetailFolder + "pc\html\www.outdatedtastes.com\" + $_.Name) $outfile
}

Set-Location ($CEFolder + "pc\html\www.outsourceforamerica.com")
mkdir -Path ($PatchesFolder + "www.outsourceforamerica.com")
Get-ChildItem -Recurse | ForEach-Object {
    $outfile = Join-Path ($PatchesFolder + "www.outsourceforamerica.com") ($_.Name + '.pat')
    GenPat /R ($CEFolder + "pc\html\www.outsourceforamerica.com\" + $_.Name) ($RetailFolder + "pc\html\www.outsourceforamerica.com\" + $_.Name) $outfile
}

Set-Location ($CEFolder + "pc\html\www.peepthatshit.com")
mkdir -Path ($PatchesFolder + "www.peepthatshit.com")
Get-ChildItem -Recurse | ForEach-Object {
    $outfile = Join-Path ($PatchesFolder + "www.peepthatshit.com") ($_.Name + '.pat')
    GenPat /R ($CEFolder + "pc\html\www.peepthatshit.com\" + $_.Name) ($RetailFolder + "pc\html\www.peepthatshit.com\" + $_.Name) $outfile
}

Set-Location ($CEFolder + "pc\html\www.pinktorpedo.org")
mkdir -Path ($PatchesFolder + "www.pinktorpedo.org")
Get-ChildItem -Recurse | ForEach-Object {
    $outfile = Join-Path ($PatchesFolder + "www.pinktorpedo.org") ($_.Name + '.pat')
    GenPat /R ($CEFolder + "pc\html\www.pinktorpedo.org\" + $_.Name) ($RetailFolder + "pc\html\www.pinktorpedo.org\" + $_.Name) $outfile
}

Set-Location ($CEFolder + "pc\html\www.piswasser.com")
mkdir -Path ($PatchesFolder + "www.piswasser.com")
Get-ChildItem -Recurse | ForEach-Object {
    $outfile = Join-Path ($PatchesFolder + "www.piswasser.com") ($_.Name + '.pat')
    GenPat /R ($CEFolder + "pc\html\www.piswasser.com\" + $_.Name) ($RetailFolder + "pc\html\www.piswasser.com\" + $_.Name) $outfile
}

Set-Location ($CEFolder + "pc\html\www.pointclickshipabitch.com")
mkdir -Path ($PatchesFolder + "www.pointclickshipabitch.com")
Get-ChildItem -Recurse | ForEach-Object {
    $outfile = Join-Path ($PatchesFolder + "www.pointclickshipabitch.com") ($_.Name + '.pat')
    GenPat /R ($CEFolder + "pc\html\www.pointclickshipabitch.com\" + $_.Name) ($RetailFolder + "pc\html\www.pointclickshipabitch.com\" + $_.Name) $outfile
}

Set-Location ($CEFolder + "pc\html\www.poker-in-the-rear.com")
mkdir -Path ($PatchesFolder + "www.poker-in-the-rear.com")
Get-ChildItem -Recurse | ForEach-Object {
    $outfile = Join-Path ($PatchesFolder + "www.poker-in-the-rear.com") ($_.Name + '.pat')
    GenPat /R ($CEFolder + "pc\html\www.poker-in-the-rear.com\" + $_.Name) ($RetailFolder + "pc\html\www.poker-in-the-rear.com\" + $_.Name) $outfile
}

Set-Location ($CEFolder + "pc\html\www.publiclibertyonline.com")
mkdir -Path ($PatchesFolder + "www.publiclibertyonline.com")
Get-ChildItem -Recurse | ForEach-Object {
    $outfile = Join-Path ($PatchesFolder + "www.publiclibertyonline.com") ($_.Name + '.pat')
    GenPat /R ($CEFolder + "pc\html\www.publiclibertyonline.com\" + $_.Name) ($RetailFolder + "pc\html\www.publiclibertyonline.com\" + $_.Name) $outfile
}

Set-Location ($CEFolder + "pc\html\www.redwoodcigarettes.com")
mkdir -Path ($PatchesFolder + "www.redwoodcigarettes.com")
Get-ChildItem -Recurse | ForEach-Object {
    $outfile = Join-Path ($PatchesFolder + "www.redwoodcigarettes.com") ($_.Name + '.pat')
    GenPat /R ($CEFolder + "pc\html\www.redwoodcigarettes.com\" + $_.Name) ($RetailFolder + "pc\html\www.redwoodcigarettes.com\" + $_.Name) $outfile
}

Set-Location ($CEFolder + "pc\html\www.roidsforlittleboys.com")
mkdir -Path ($PatchesFolder + "www.roidsforlittleboys.com")
Get-ChildItem -Recurse | ForEach-Object {
    $outfile = Join-Path ($PatchesFolder + "www.roidsforlittleboys.com") ($_.Name + '.pat')
    GenPat /R ($CEFolder + "pc\html\www.roidsforlittleboys.com\" + $_.Name) ($RetailFolder + "pc\html\www.roidsforlittleboys.com\" + $_.Name) $outfile
}

Set-Location ($CEFolder + "pc\html\www.rustybrownsringdonuts.com")
mkdir -Path ($PatchesFolder + "www.rustybrownsringdonuts.com")
Get-ChildItem -Recurse | ForEach-Object {
    $outfile = Join-Path ($PatchesFolder + "www.rustybrownsringdonuts.com") ($_.Name + '.pat')
    GenPat /R ($CEFolder + "pc\html\www.rustybrownsringdonuts.com\" + $_.Name) ($RetailFolder + "pc\html\www.rustybrownsringdonuts.com\" + $_.Name) $outfile
}

Set-Location ($CEFolder + "pc\html\www.shitster.de")
mkdir -Path ($PatchesFolder + "www.shitster.de")
Get-ChildItem -Recurse | ForEach-Object {
    $outfile = Join-Path ($PatchesFolder + "www.shitster.de") ($_.Name + '.pat')
    GenPat /R ($CEFolder + "pc\html\www.shitster.de\" + $_.Name) ($RetailFolder + "pc\html\www.shitster.de\" + $_.Name) $outfile
}

Set-Location ($CEFolder + "pc\html\www.sprunksoda.com")
mkdir -Path ($PatchesFolder + "www.sprunksoda.com")
Get-ChildItem -Recurse | ForEach-Object {
    $outfile = Join-Path ($PatchesFolder + "www.sprunksoda.com") ($_.Name + '.pat')
    GenPat /R ($CEFolder + "pc\html\www.sprunksoda.com\" + $_.Name) ($RetailFolder + "pc\html\www.sprunksoda.com\" + $_.Name) $outfile
}

Set-Location ($CEFolder + "pc\html\www.stopshavingnow.net")
mkdir -Path ($PatchesFolder + "www.stopshavingnow.net")
Get-ChildItem -Recurse | ForEach-Object {
    $outfile = Join-Path ($PatchesFolder + "www.stopshavingnow.net") ($_.Name + '.pat')
    GenPat /R ($CEFolder + "pc\html\www.stopshavingnow.net\" + $_.Name) ($RetailFolder + "pc\html\www.stopshavingnow.net\" + $_.Name) $outfile
}

Set-Location ($CEFolder + "pc\html\www.thebankofliberty.com")
mkdir -Path ($PatchesFolder + "www.thebankofliberty.com")
Get-ChildItem -Recurse | ForEach-Object {
    $outfile = Join-Path ($PatchesFolder + "www.thebankofliberty.com") ($_.Name + '.pat')
    GenPat /R ($CEFolder + "pc\html\www.thebankofliberty.com\" + $_.Name) ($RetailFolder + "pc\html\www.thebankofliberty.com\" + $_.Name) $outfile
}

Set-Location ($CEFolder + "pc\html\www.tobaccofacts.net")
mkdir -Path ($PatchesFolder + "www.tobaccofacts.net")
Get-ChildItem -Recurse | ForEach-Object {
    $outfile = Join-Path ($PatchesFolder + "www.tobaccofacts.net") ($_.Name + '.pat')
    GenPat /R ($CEFolder + "pc\html\www.tobaccofacts.net\" + $_.Name) ($RetailFolder + "pc\html\www.tobaccofacts.net\" + $_.Name) $outfile
}

Set-Location ($CEFolder + "pc\html\www.vipluxuryringtones.com")
mkdir -Path ($PatchesFolder + "www.vipluxuryringtones.com")
Get-ChildItem -Recurse | ForEach-Object {
    $outfile = Join-Path ($PatchesFolder + "www.vipluxuryringtones.com") ($_.Name + '.pat')
    GenPat /R ($CEFolder + "pc\html\www.vipluxuryringtones.com\" + $_.Name) ($RetailFolder + "pc\html\www.vipluxuryringtones.com\" + $_.Name) $outfile
}

Set-Location ($CEFolder + "pc\html\www.weazelnews.com")
mkdir -Path ($PatchesFolder + "www.weazelnews.com")
Get-ChildItem -Recurse | ForEach-Object {
    $outfile = Join-Path ($PatchesFolder + "www.weazelnews.com") ($_.Name + '.pat')
    GenPat /R ($CEFolder + "pc\html\www.weazelnews.com\" + $_.Name) ($RetailFolder + "pc\html\www.weazelnews.com\" + $_.Name) $outfile
}

Set-Location ($CEFolder + "pc\html\www.whattheydonotwantyoutoknow.com")
mkdir -Path ($PatchesFolder + "www.whattheydonotwantyoutoknow.com")
Get-ChildItem -Recurse | ForEach-Object {
    $outfile = Join-Path ($PatchesFolder + "www.whattheydonotwantyoutoknow.com") ($_.Name + '.pat')
    GenPat /R ($CEFolder + "pc\html\www.whattheydonotwantyoutoknow.com\" + $_.Name) ($RetailFolder + "pc\html\www.whattheydonotwantyoutoknow.com\" + $_.Name) $outfile
}

Set-Location ($CEFolder + "pc\html\www.whymommygotfat.com")
mkdir -Path ($PatchesFolder + "www.whymommygotfat.com")
Get-ChildItem -Recurse | ForEach-Object {
    $outfile = Join-Path ($PatchesFolder + "www.whymommygotfat.com") ($_.Name + '.pat')
    GenPat /R ($CEFolder + "pc\html\www.whymommygotfat.com\" + $_.Name) ($RetailFolder + "pc\html\www.whymommygotfat.com\" + $_.Name) $outfile
}

Set-Location ($CEFolder + "pc\html\www.yourmexicandoctor.com")
mkdir -Path ($PatchesFolder + "www.yourmexicandoctor.com")
Get-ChildItem -Recurse | ForEach-Object {
    $outfile = Join-Path ($PatchesFolder + "www.yourmexicandoctor.com") ($_.Name + '.pat')
    GenPat /R ($CEFolder + "pc\html\www.yourmexicandoctor.com\" + $_.Name) ($RetailFolder + "pc\html\www.yourmexicandoctor.com\" + $_.Name) $outfile
}

Set-Location ($CEFolder + "pc\html\www.yournewbabysname.com")
mkdir -Path ($PatchesFolder + "www.yournewbabysname.com")
Get-ChildItem -Recurse | ForEach-Object {
    $outfile = Join-Path ($PatchesFolder + "www.yournewbabysname.com") ($_.Name + '.pat')
    GenPat /R ($CEFolder + "pc\html\www.yournewbabysname.com\" + $_.Name) ($RetailFolder + "pc\html\www.yournewbabysname.com\" + $_.Name) $outfile
}
Set-Location ($BaseFolder)

GenPat /R ($CEFolder + "pc\audio\config\categories.dat15") ($RetailFolder + "pc\audio\config\categories.dat15") ($PatchesFolder + "categories.dat15.pat")
GenPat /R ($CEFolder + "pc\audio\config\curves.dat12") ($RetailFolder + "pc\audio\config\curves.dat12") ($PatchesFolder + "curves.dat12.pat")
GenPat /R ($CEFolder + "pc\audio\config\game.dat16") ($RetailFolder + "pc\audio\config\game.dat16") ($PatchesFolder + "game.dat16.pat")
GenPat /R ($CEFolder + "pc\audio\config\rpf.xml") ($RetailFolder + "pc\audio\config\rpf.xml") ($PatchesFolder + "rpf.xml.pat")
GenPat /R ($CEFolder + "pc\audio\config\sounds.dat15") ($RetailFolder + "pc\audio\config\sounds.dat15") ($PatchesFolder + "sounds.dat15.pat")
GenPat /R ($CEFolder + "pc\audio\config\speech.dat") ($RetailFolder + "pc\audio\config\speech.dat") ($PatchesFolder + "speech.dat.pat")
GenPat /R ($CEFolder + "pc\audio\config\waveslots.xml") ($RetailFolder + "pc\audio\config\waveslots.xml") ($PatchesFolder + "waveslots.xml.pat")
GenPat /R ($CEFolder + "pc\audio\sfx\loading.rpf") ($RetailFolder + "pc\audio\sfx\loading.rpf") ($PatchesFolder + "loading.rpf.pat")
GenPat /R ($CEFolder + "pc\audio\sfx\radio_afro_beat.rpf") ($RetailFolder + "pc\audio\sfx\radio_afro_beat.rpf") ($PatchesFolder + "radio_afro_beat.rpf.pat")
GenPat /R ($CEFolder + "pc\audio\sfx\radio_beat_95.rpf") ($RetailFolder + "pc\audio\sfx\radio_beat_95.rpf") ($PatchesFolder + "radio_beat_95.rpf.pat")
GenPat /R ($CEFolder + "pc\audio\sfx\radio_classical_ambient.rpf") ($RetailFolder + "pc\audio\sfx\radio_classical_ambient.rpf") ($PatchesFolder + "radio_classical_ambient.rpf.pat")
GenPat /R ($CEFolder + "pc\audio\sfx\radio_dance_rock.rpf") ($RetailFolder + "pc\audio\sfx\radio_dance_rock.rpf") ($PatchesFolder + "radio_dance_rock.rpf.pat")
GenPat /R ($CEFolder + "pc\audio\sfx\radio_extratracks.rpf") ($RetailFolder + "pc\audio\sfx\radio_extratracks.rpf") ($PatchesFolder + "radio_extratracks.rpf.pat")
GenPat /R ($CEFolder + "pc\audio\sfx\radio_hardcore.rpf") ($RetailFolder + "pc\audio\sfx\radio_hardcore.rpf") ($PatchesFolder + "radio_hardcore.rpf.pat")
GenPat /R ($CEFolder + "pc\audio\sfx\radio_k109_the_studio.rpf") ($RetailFolder + "pc\audio\sfx\radio_k109_the_studio.rpf") ($PatchesFolder + "radio_k109_the_studio.rpf.pat")
GenPat /R ($CEFolder + "pc\audio\sfx\radio_liberty_rock.rpf") ($RetailFolder + "pc\audio\sfx\radio_liberty_rock.rpf") ($PatchesFolder + "radio_liberty_rock.rpf.pat")
GenPat /R ($CEFolder + "pc\audio\sfx\radio_ny_classics.rpf") ($RetailFolder + "pc\audio\sfx\radio_ny_classics.rpf") ($PatchesFolder + "radio_ny_classics.rpf.pat")
GenPat /R ($CEFolder + "pc\audio\sfx\radio_san_juan_sounds.rpf") ($RetailFolder + "pc\audio\sfx\radio_san_juan_sounds.rpf") ($PatchesFolder + "radio_san_juan_sounds.rpf.pat")
GenPat /R ($CEFolder + "pc\audio\sfx\radio_the_vibe.rpf") ($RetailFolder + "pc\audio\sfx\radio_the_vibe.rpf") ($PatchesFolder + "radio_the_vibe.rpf.pat")
GenPat /R ($CEFolder + "pc\audio\sfx\radio_vladivostok.rpf") ($RetailFolder + "pc\audio\sfx\radio_vladivostok.rpf") ($PatchesFolder + "radio_vladivostok.rpf.pat")
GenPat /R ($CEFolder + "pc\models\cdimages\playerped.rpf") ($RetailFolder + "pc\models\cdimages\playerped.rpf") ($PatchesFolder + "playerped.rpf.pat")
GenPat /R ($CEFolder + "pc\textures\buttons_360.wtd") ($RetailFolder + "pc\textures\buttons_360.wtd") ($PatchesFolder + "buttons_360.wtd.pat")
GenPat /R ($CEFolder + "pc\textures\fonts_r.wtd") ($RetailFolder + "pc\textures\fonts_r.wtd") ($PatchesFolder + "fonts_r.wtd.pat")
GenPat /R ($CEFolder + "pc\textures\hud.wtd") ($RetailFolder + "pc\textures\hud.wtd") ($PatchesFolder + "hud.wtd.pat")
GenPat /R ($CEFolder + "pc\textures\skydome.wtd") ($RetailFolder + "pc\textures\skydome.wtd") ($PatchesFolder + "skydome.wtd.pat")
GenPat /R ($CEFolder + "pc\textures\title_offline.wtd") ($RetailFolder + "pc\textures\title_offline.wtd") ($PatchesFolder + "title_offline.wtd.pat")
GenPat /R ($CEFolder + "binkw32.dll") ($RetailFolder + "binkw32.dll") ($PatchesFolder + "binkw32.dll.pat")
GenPat /R ($CEFolder + "GTAIV.exe") ($RetailFolder + "GTAIV.exe") ($PatchesFolder + "GTAIV.exe.pat")
GenPat /R ($CEFolder + "LaunchGTAIV.exe") ($BaseFolder + "Extras\LaunchGTAIV\LaunchGTAIV.exe") ($PatchesFolder + "LaunchGTAIV.exe.pat")



