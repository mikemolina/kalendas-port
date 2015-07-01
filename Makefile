# Created by: Miguel Molina <mmolina.unphysics@gmail.com>
# $FreeBSD$

PORTNAME=	kalendas
PORTVERSION=	1.1.0
CATEGORIES=	astro
MASTER_SITES=	https://launchpad.net/${PORTNAME}/trunk/${PORTVERSION}/+download/

MAINTAINER=	mmolina.unphysics@gmail.com
COMMENT=	Calculations of Calendar and Julian Date

LICENSE=	GPLv3

BUILD_DEPENDS=	p5-Locale-libintl>=1.23:${PORTSDIR}/devel/p5-Locale-libintl
RUN_DEPENDS:=	${BUILD_DEPENDS}

USES=		gettext perl5
CPPFLAGS+=	-I${LOCALBASE}/include
LDFLAGS+=	-L${LOCALBASE}/lib
GNU_CONFIGURE=	yes

INFO=		${PORTNAME}

PORTDOCS=	AUTHORS ChangeLog README.md

post-install:
	${MKDIR} ${STAGEDIR}${DOCSDIR}
	${INSTALL_DATA} ${PORTDOCS:S,^,${WRKSRC}/,} ${STAGEDIR}${DOCSDIR}

.include <bsd.port.mk>
