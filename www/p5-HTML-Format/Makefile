# $NetBSD: Makefile,v 1.20 2010/08/21 16:36:47 seb Exp $

DISTNAME=		HTML-Format-2.10
PKGNAME=		p5-${DISTNAME}
SVR4_PKGNAME=		p5hfo
CATEGORIES=		www perl5
MASTER_SITES=		${MASTER_SITE_PERL_CPAN:=HTML/}

MAINTAINER=		heinz@NetBSD.org
HOMEPAGE=		http://search.cpan.org/dist/HTML-Format/
COMMENT=		Perl5 modules for converting HTML to other text formats

PKG_INSTALLATION_TYPES=	overwrite pkgviews
PKG_DESTDIR_SUPPORT=	user-destdir

DEPENDS+=		p5-Font-AFM>=1.18:../../fonts/p5-Font-AFM
DEPENDS+=		p5-HTML-Tree>=3.15:../../www/p5-HTML-Tree

USE_LANGUAGES=		# empty
PERL5_MODULE_TYPE=	Module::Build
PERL5_PACKLIST=		auto/HTML/Format/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
