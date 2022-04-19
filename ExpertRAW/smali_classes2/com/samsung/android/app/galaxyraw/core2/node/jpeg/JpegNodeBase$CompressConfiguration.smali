.class public Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/JpegNodeBase$CompressConfiguration;
.super Ljava/lang/Object;
.source "JpegNodeBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/JpegNodeBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CompressConfiguration"
.end annotation


# instance fields
.field public addThumbnail:Z

.field public camCapability:Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

.field public compressType:I

.field public extJpegMetadata:Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$ExternalJpegMetadata;

.field public format:I

.field public heightSlice:I

.field public quality:I

.field public rawSize:I

.field public rowStride:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x23

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/JpegNodeBase$CompressConfiguration;->format:I

    const/16 v0, 0x60

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/JpegNodeBase$CompressConfiguration;->quality:I

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/galaxyraw/core2/CamCapability;Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "camCapability",
            "imageInfo"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/JpegNodeBase$CompressConfiguration;-><init>(Lcom/samsung/android/app/galaxyraw/core2/CamCapability;Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/galaxyraw/core2/CamCapability;Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "camCapability",
            "imageInfo",
            "addThumbnail"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x23

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/JpegNodeBase$CompressConfiguration;->format:I

    const/16 v0, 0x60

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/JpegNodeBase$CompressConfiguration;->quality:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/JpegNodeBase$CompressConfiguration;->compressType:I

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/JpegNodeBase$CompressConfiguration;->camCapability:Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    iput-boolean p3, p0, Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/JpegNodeBase$CompressConfiguration;->addThumbnail:Z

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->getStrideInfo()Lcom/samsung/android/app/galaxyraw/core2/util/StrideInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/util/StrideInfo;->getRowStride()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/JpegNodeBase$CompressConfiguration;->rowStride:I

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->getStrideInfo()Lcom/samsung/android/app/galaxyraw/core2/util/StrideInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/util/StrideInfo;->getHeightSlice()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/JpegNodeBase$CompressConfiguration;->heightSlice:I

    return-void
.end method
