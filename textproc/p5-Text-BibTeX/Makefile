# $NetBSD: Makefile,v 1.26 2012/04/05 22:43:47 markd Exp $

DISTNAME=	Text-BibTeX-0.62
PKGNAME=	p5-${DISTNAME}
PKGREVISION=	1
SVR4_PKGNAME=	p5tbt
CATEGORIES=	textproc perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Text/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://www.gerg.ca/software/btOOL/
#HOMEPAGE=	http://search.cpan.org/dist/Text-BibTeX/
COMMENT=	Perl library for reading, parsing, and processing BibTeX files
LICENSE=	${PERL5_LICENSE}

PKG_DESTDIR_SUPPORT=	user-destdir

BUILD_DEPENDS+=		p5-Capture-Tiny>=0.06:../../devel/p5-Capture-Tiny
BUILD_DEPENDS+=		p5-Config-AutoConf>=0.14:../../devel/p5-Config-AutoConf
BUILD_DEPENDS+=		p5-ExtUtils-LibBuilder>=0.01:../../devel/p5-ExtUtils-LibBuilder
BUILD_DEPENDS+=		{perl>=5.14.1,p5-ExtUtils-CBuilder>=0.27}:../../devel/p5-ExtUtils-CBuilder

USE_LANGUAGES+=		c
PERL5_PACKLIST=		auto/Text/BibTeX/.packlist
PERL5_MODULE_TYPE=	Module::Build

ALL_ENV+=	TMPDIR=${WRKDIR}/tmp

pre-configure:
	${MKDIR} ${WRKDIR}/tmp

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
