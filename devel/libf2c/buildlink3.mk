# $NetBSD$

BUILDLINK_TREE+=	libf2c

.if !defined(LIBF2C_BUILDLINK3_MK)
LIBF2C_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.libf2c+=	libf2c>=20090201
BUILDLINK_PKGSRCDIR.libf2c?=	../../devel/libf2c
.endif	# LIBF2C_BUILDLINK3_MK

BUILDLINK_TREE+=	-libf2c
