# $NetBSD: Makefile,v 1.24 2011/08/16 19:58:06 wiz Exp $
#

DISTNAME=	Device-Gsm-1.60
PKGNAME=	p5-${DISTNAME}
SVR4_PKGNAME=	p5dgs
CATEGORIES=	comms perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Device/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/Device-Gsm/
COMMENT=	Perl module to interface GSM cellular / modems
LICENSE=	${PERL5_LICENSE}

PKG_DESTDIR_SUPPORT=	user-destdir

DEPENDS+=	p5-Device-Modem>=1.47:../../comms/p5-Device-Modem
DEPENDS+=	p5-Device-SerialPort-[0-9]*:../../comms/p5-Device-SerialPort

PERL5_PACKLIST=		auto/Device/Gsm/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
