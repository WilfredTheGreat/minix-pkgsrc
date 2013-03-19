# $NetBSD: buildlink3.mk,v 1.5 2011/04/28 07:20:46 adam Exp $

BUILDLINK_TREE+=	pkcs11-helper

.if !defined(PKCS11_HELPER_BUILDLINK3_MK)
PKCS11_HELPER_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.pkcs11-helper+=	pkcs11-helper>=1.06
BUILDLINK_ABI_DEPENDS.pkcs11-helper+=	pkcs11-helper>=1.08nb1
BUILDLINK_PKGSRCDIR.pkcs11-helper?=	../../security/pkcs11-helper

pkgbase := pkcs11-helper
.include "../../mk/pkg-build-options.mk"

.if !empty(PKG_BUILD_OPTIONS.pkcs11-helper:Mopenssl)
.  include "../../security/openssl/buildlink3.mk"
.endif
.if !empty(PKG_BUILD_OPTIONS.pkcs11-helper:Mgnutls)
.  include "../../security/gnutls/buildlink3.mk"
.endif
.if !empty(PKG_BUILD_OPTIONS.pkcs11-helper:Mnss)
.  include "../../devel/nss/buildlink3.mk"
.endif

.endif # PKCS11_HELPER_BUILDLINK3_MK

BUILDLINK_TREE+=	-pkcs11-helper
