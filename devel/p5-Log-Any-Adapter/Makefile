# $NetBSD: Makefile,v 1.4 2012/02/12 14:25:33 hiramatsu Exp $
#

DISTNAME=	Log-Any-Adapter-0.07
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	devel perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Log/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/Log-Any-Adapter/
COMMENT=	Tell Log::Any where to send its logs
LICENSE=	${PERL5_LICENSE}

PKG_INSTALLATION_TYPES=	overwrite pkgviews
PKG_DESTDIR_SUPPORT=	user-destdir

DEPENDS+=	p5-Devel-GlobalDestruction-[0-9]*:../../devel/p5-Devel-GlobalDestruction
DEPENDS+=	p5-Log-Any>=0.10:../../devel/p5-Log-Any
DEPENDS+=	p5-Guard-[0-9]*:../../devel/p5-Guard

PERL5_PACKLIST=		auto/Log/Any/Adapter/.packlist
PERL5_MODULE_TYPE=	Module::Install::Bundled

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
