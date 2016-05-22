# Created by: Adrian Jaskuła <aj@laatu.uk>
# $FreeBSD$

PORTNAME=	teamspeak3
PORTVERSION=	3.0.12.4
CATEGORIES=	net net-im
MASTER_SITES=	http://dl.4players.de/ts/releases/${PORTVERSION}/
DISTNAME=	${PORTNAME}-server_freebsd_amd64-${PORTVERSION}

MAINTAINER=	aj@laatu.uk
COMMENT=	TeamSpeak is proprietary voice-over-Internet Protocol software

LICENSE=	NPL
LICENSE_NAME=	NON-PROFIT LICENSEES
LICENSE_FILE=	LICENSE
LICENSE_PERMS=	dist-mirror

NO_BUILD=	yes
NO_TEST=	yes

USES=	tar:bzip2

WRKSRC=	${WRKDIR}/${PORTNAME}-server_freebsd_amd64

do-install:
	${MKDIR} ${STAGEDIR}${PREFIX}/${PORTNAME}
	cd ${WRKSRC}; ${COPYTREE_SHARE} . ${STAGEDIR}${PREFIX}/${PORTNAME}
	${INSTALL_SCRIPT} ${WRKSRC}/ts3server_startscript.sh ${STAGEDIR}${PREFIX}/bin$

.include <bsd.port.mk>
