# $NetBSD: Makefile,v 1.16 2010/08/21 16:34:11 seb Exp $

DISTNAME=	OLE-Storage_Lite-0.19
PKGNAME=	p5-${DISTNAME}
PKGREVISION=	2
SVR4_PKGNAME=	p5osl
CATEGORIES=	devel perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=OLE/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/OLE-Storage_Lite/
COMMENT=	Module for reading and writing OLE-Structured files

PKG_DESTDIR_SUPPORT=	user-destdir
PKG_INSTALLATION_TYPES=	overwrite pkgviews

DEPENDS+=		p5-IO-stringy>=2.101:../../devel/p5-IO-stringy

USE_LANGUAGES=		# empty
PERL5_PACKLIST=		auto/OLE/Storage_Lite/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
