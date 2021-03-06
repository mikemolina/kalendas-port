# Created by: Miguel Molina <mmolina.unphysics@gmail.com>
# $FreeBSD$

PORTNAME=	kalendas
PORTVERSION=	1.3.1
CATEGORIES=	astro
MASTER_SITES=	https://launchpad.net/${PORTNAME}/trunk/${PORTVERSION}/+download/

MAINTAINER=	mmolina.unphysics@gmail.com
COMMENT=	Calculations of Calendar and Julian Date

LICENSE=	GPLv3

BUILD_DEPENDS=	p5-Locale-libintl>=1.23:${PORTSDIR}/devel/p5-Locale-libintl \
		bash-completion>=2.1:${PORTSDIR}/shells/bash-completion
RUN_DEPENDS:=	${BUILD_DEPENDS}

USES=		gmake pkgconfig gettext perl5
CPPFLAGS+=	-I${LOCALBASE}/include
LDFLAGS+=	-L${LOCALBASE}/lib
GNU_CONFIGURE=	yes

INFO=		${PORTNAME}

PORTDOCS=	AUTHORS ChangeLog README.md

check test: build
	${MAKE_CMD} -C ${WRKSRC} check

post-install:
	${MKDIR} ${STAGEDIR}${DOCSDIR}
	${INSTALL_DATA} ${PORTDOCS:S,^,${WRKSRC}/,} ${STAGEDIR}${DOCSDIR}

.include <bsd.port.mk>
