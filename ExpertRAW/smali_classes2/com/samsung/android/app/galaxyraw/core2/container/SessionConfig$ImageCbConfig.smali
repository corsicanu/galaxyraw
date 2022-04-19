.class public Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;
.super Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$DefaultStreamConfig;
.source "SessionConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageCbConfig"
.end annotation


# instance fields
.field private final mImageFormat:Ljava/lang/Integer;

.field private final mImageSize:Landroid/util/Size;


# direct methods
.method public constructor <init>(Ljava/lang/Integer;Landroid/util/Size;Ljava/lang/Integer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "imageFormat",
            "imageSize",
            "streamOption"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;-><init>(Ljava/lang/Integer;Landroid/util/Size;Ljava/lang/Integer;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Landroid/util/Size;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "imageFormat",
            "imageSize",
            "streamOption",
            "physicalId"
        }
    .end annotation

    invoke-direct {p0, p3, p4}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$DefaultStreamConfig;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;->mImageFormat:Ljava/lang/Integer;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;->mImageSize:Landroid/util/Size;

    return-void
.end method


# virtual methods
.method public getImageFormat()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;->mImageFormat:Ljava/lang/Integer;

    return-object p0
.end method

.method public getImageSize()Landroid/util/Size;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;->mImageSize:Landroid/util/Size;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    sget-object v0, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-super {p0}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$DefaultStreamConfig;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;->mImageFormat:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils;->toImageFormatString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;->mImageSize:Landroid/util/Size;

    const/4 v2, 0x2

    aput-object p0, v1, v2

    const-string p0, "%s, format: %s, size: %s"

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
