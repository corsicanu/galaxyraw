.class public Lcom/samsung/android/app/galaxyraw/core2/node/NodeErrors;
.super Ljava/lang/Object;
.source "NodeErrors.java"


# static fields
.field public static final ALREADY_EXISTS:I

.field public static final BAD_INDEX:I

.field public static final BAD_TYPE:I = -0x7fffffff

.field public static final BAD_VALUE:I

.field public static final DEAD_OBJECT:I

.field public static final FAILED_TRANSACTION:I = -0x7ffffffe

.field public static final INVALID_OPERATION:I

.field public static final JPARKS_BROKE_IT:I

.field public static final NAME_NOT_FOUND:I

.field public static final NOT_ENOUGH_DATA:I

.field public static final NO_ERROR:I = 0x0

.field public static final NO_INIT:I

.field public static final NO_MEMORY:I

.field public static final OK:I = 0x0

.field public static final PERMISSION_DENIED:I

.field public static final TIMED_OUT:I

.field public static final UNKNOWN_ERROR:I = -0x80000000

.field public static final UNKNOWN_TRANSACTION:I

.field public static final WOULD_BLOCK:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Landroid/system/OsConstants;->ENOMEM:I

    neg-int v0, v0

    sput v0, Lcom/samsung/android/app/galaxyraw/core2/node/NodeErrors;->NO_MEMORY:I

    sget v0, Landroid/system/OsConstants;->ENOSYS:I

    neg-int v0, v0

    sput v0, Lcom/samsung/android/app/galaxyraw/core2/node/NodeErrors;->INVALID_OPERATION:I

    sget v0, Landroid/system/OsConstants;->EINVAL:I

    neg-int v0, v0

    sput v0, Lcom/samsung/android/app/galaxyraw/core2/node/NodeErrors;->BAD_VALUE:I

    sget v0, Landroid/system/OsConstants;->ENOENT:I

    neg-int v0, v0

    sput v0, Lcom/samsung/android/app/galaxyraw/core2/node/NodeErrors;->NAME_NOT_FOUND:I

    sget v0, Landroid/system/OsConstants;->EPERM:I

    neg-int v0, v0

    sput v0, Lcom/samsung/android/app/galaxyraw/core2/node/NodeErrors;->PERMISSION_DENIED:I

    sget v0, Landroid/system/OsConstants;->ENODEV:I

    neg-int v0, v0

    sput v0, Lcom/samsung/android/app/galaxyraw/core2/node/NodeErrors;->NO_INIT:I

    sget v0, Landroid/system/OsConstants;->EEXIST:I

    neg-int v0, v0

    sput v0, Lcom/samsung/android/app/galaxyraw/core2/node/NodeErrors;->ALREADY_EXISTS:I

    sget v0, Landroid/system/OsConstants;->EPIPE:I

    neg-int v0, v0

    sput v0, Lcom/samsung/android/app/galaxyraw/core2/node/NodeErrors;->DEAD_OBJECT:I

    sget v0, Landroid/system/OsConstants;->EPIPE:I

    neg-int v0, v0

    sput v0, Lcom/samsung/android/app/galaxyraw/core2/node/NodeErrors;->JPARKS_BROKE_IT:I

    sget v0, Landroid/system/OsConstants;->EOVERFLOW:I

    neg-int v0, v0

    sput v0, Lcom/samsung/android/app/galaxyraw/core2/node/NodeErrors;->BAD_INDEX:I

    sget v0, Landroid/system/OsConstants;->ENODATA:I

    neg-int v0, v0

    sput v0, Lcom/samsung/android/app/galaxyraw/core2/node/NodeErrors;->NOT_ENOUGH_DATA:I

    sget v0, Landroid/system/OsConstants;->EAGAIN:I

    neg-int v0, v0

    sput v0, Lcom/samsung/android/app/galaxyraw/core2/node/NodeErrors;->WOULD_BLOCK:I

    sget v0, Landroid/system/OsConstants;->ETIMEDOUT:I

    neg-int v0, v0

    sput v0, Lcom/samsung/android/app/galaxyraw/core2/node/NodeErrors;->TIMED_OUT:I

    sget v0, Landroid/system/OsConstants;->EBADMSG:I

    neg-int v0, v0

    sput v0, Lcom/samsung/android/app/galaxyraw/core2/node/NodeErrors;->UNKNOWN_TRANSACTION:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
