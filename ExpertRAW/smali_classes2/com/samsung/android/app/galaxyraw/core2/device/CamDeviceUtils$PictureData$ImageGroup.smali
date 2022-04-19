.class Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureData$ImageGroup;
.super Ljava/lang/Object;
.source "CamDeviceUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ImageGroup"
.end annotation


# static fields
.field private static TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag; = null

.field static final TYPE_DEPTH:I = 0x2

.field static final TYPE_PICTURE:I = 0x0

.field static final TYPE_THUMBNAIL:I = 0x1


# instance fields
.field private final mBlockingImageReader:Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;

.field private final mImage:Landroid/media/Image;

.field private final mImageBuffer:Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;

.field private final mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-class v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureData$ImageGroup;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureData$ImageGroup;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    return-void
.end method

.method constructor <init>(Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;Landroid/media/Image;Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "blockingImageReader",
            "image",
            "imageBuffer",
            "type"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureData$ImageGroup;->mBlockingImageReader:Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureData$ImageGroup;->mImage:Landroid/media/Image;

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureData$ImageGroup;->mImageBuffer:Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;

    iput p4, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureData$ImageGroup;->mType:I

    return-void
.end method


# virtual methods
.method closeImage()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureData$ImageGroup;->mBlockingImageReader:Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureData$ImageGroup;->mImage:Landroid/media/Image;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;->closeImage(Landroid/media/Image;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureData$ImageGroup;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "closeImage fail - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method getImageBuffer()Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureData$ImageGroup;->mImageBuffer:Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;

    return-object p0
.end method

.method getImageReader()Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureData$ImageGroup;->mBlockingImageReader:Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;

    return-object p0
.end method

.method getType()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureData$ImageGroup;->mType:I

    return p0
.end method

.method setCaptureResult(Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "captureResult"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureData$ImageGroup;->mImageBuffer:Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->getImageInfo()Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->setCaptureResult(Landroid/hardware/camera2/TotalCaptureResult;)V

    return-void
.end method
