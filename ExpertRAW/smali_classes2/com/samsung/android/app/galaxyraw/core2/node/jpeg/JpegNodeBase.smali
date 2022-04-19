.class public abstract Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/JpegNodeBase;
.super Lcom/samsung/android/app/galaxyraw/core2/node/Node;
.source "JpegNodeBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/JpegNodeBase$CompressConfiguration;,
        Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/JpegNodeBase$TYPE;,
        Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/JpegNodeBase$NodeCallback;
    }
.end annotation


# static fields
.field public static final CONFIGURATION_FAIL:I = 0x1

.field public static final DECODE:I = 0x1

.field public static final ENCODE:I = 0x0

.field public static final ERROR_UNKNOWN:I = 0x0

.field public static final PROCESSING_FAIL:I = 0x2


# direct methods
.method protected constructor <init>(ILcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "nodeId",
            "nodeTag",
            "hasNativeNode"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/core2/node/Node;-><init>(ILcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Z)V

    return-void
.end method


# virtual methods
.method public abstract setCompressConfiguration(Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/JpegNodeBase$CompressConfiguration;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "compressConfiguration"
        }
    .end annotation
.end method
