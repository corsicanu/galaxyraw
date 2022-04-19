.class Lcom/samsung/android/app/galaxyraw/core2/device/CamDevicePicTypeImgAvailableCallback;
.super Ljava/lang/Object;
.source "CamDevicePicTypeImgAvailableCallback.java"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# static fields
.field static final PIC_TYPE_DEPTH:I = 0x2

.field static final PIC_TYPE_PICTURE:I = 0x0

.field static final PIC_TYPE_THUMBNAIL:I = 0x1


# instance fields
.field private final TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

.field private final mBlockingImageReader:Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;

.field private final mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

.field private final mPicType:I

.field private final mPicTypeName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "camDeviceImpl",
            "blockingImageReader",
            "picType"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "camDeviceImpl"

    invoke-static {p1, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/ConditionChecker;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    :try_start_0
    const-string v0, "blockingImageReader"

    invoke-static {p2, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/ConditionChecker;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDevicePicTypeImgAvailableCallback;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getTAG()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDevicePicTypeImgAvailableCallback;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDevicePicTypeImgAvailableCallback;->mBlockingImageReader:Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;

    iput p3, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDevicePicTypeImgAvailableCallback;->mPicType:I

    if-eqz p3, :cond_2

    const/4 p1, 0x1

    if-eq p3, p1, :cond_1

    const/4 p2, 0x2

    if-ne p3, p2, :cond_0

    const-string p1, "Depth"

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDevicePicTypeImgAvailableCallback;->mPicTypeName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;

    sget-object p2, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;->ILLEGAL_ARGUMENT:Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;

    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Ljava/util/Locale;->UK:Ljava/util/Locale;

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p1, v2

    const-string p3, "%d is not supported picType"

    invoke-static {v1, p3, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p2, v0}, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;-><init>(Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;Ljava/lang/Throwable;)V

    throw p0

    :cond_1
    const-string p1, "Thumbnail"

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDevicePicTypeImgAvailableCallback;->mPicTypeName:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string p1, "Picture"

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDevicePicTypeImgAvailableCallback;->mPicTypeName:Ljava/lang/String;

    :goto_0
    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;

    sget-object p2, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;->ILLEGAL_ARGUMENT:Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;

    invoke-direct {p1, p2, p0}, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;-><init>(Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public onImageAvailable(Landroid/media/ImageReader;)V
    .locals 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "reader"
        }
    .end annotation

    move-object/from16 v1, p0

    const-wide/16 v2, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    :try_start_0
    iget-object v0, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDevicePicTypeImgAvailableCallback;->mBlockingImageReader:Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object v8
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v8, :cond_3

    :try_start_1
    invoke-virtual {v8}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v9
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    iget-object v0, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDevicePicTypeImgAvailableCallback;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v11, "PicTypeImgAvailableCallback(%s) onImageAvailable - timeStamp(%d), width(%d), height(%d), format(%s)"

    const/4 v12, 0x5

    new-array v12, v12, [Ljava/lang/Object;

    iget-object v13, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDevicePicTypeImgAvailableCallback;->mPicTypeName:Ljava/lang/String;

    aput-object v13, v12, v6

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v12, v7

    invoke-virtual {v8}, Landroid/media/Image;->getWidth()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v4

    const/4 v13, 0x3

    invoke-virtual {v8}, Landroid/media/Image;->getHeight()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x4

    invoke-virtual {v8}, Landroid/media/Image;->getFormat()I

    move-result v14

    invoke-static {v14}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils;->toImageFormatString(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v0, v11, v12}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    cmp-long v0, v9, v2

    if-lez v0, :cond_1

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;

    invoke-direct {v0, v8, v5}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;-><init>(Landroid/media/Image;Landroid/hardware/camera2/TotalCaptureResult;)V

    iget-object v2, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDevicePicTypeImgAvailableCallback;->mBlockingImageReader:Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;->getPhysicalId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->setPhysicalId(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDevicePicTypeImgAvailableCallback;->mBlockingImageReader:Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;->getPicType()Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicType;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->setPicType(Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicType;)V

    invoke-static {v8}, Lcom/samsung/android/app/galaxyraw/core2/util/NativeUtils;->getDirectBufferfromImage(Landroid/media/Image;)Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->wrap(Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;)Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;

    move-result-object v5

    iget v2, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDevicePicTypeImgAvailableCallback;->mPicType:I

    if-ne v2, v7, :cond_0

    const-string v2, "ThumbnailImage"

    invoke-static {v5, v2, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/FileUtils;->dumpImageIfEnabled(Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;Ljava/lang/String;Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;)V

    goto :goto_0

    :cond_0
    if-nez v2, :cond_2

    invoke-virtual {v8}, Landroid/media/Image;->getFormat()I

    move-result v2

    const/16 v3, 0x100

    if-ne v2, v3, :cond_2

    const-string v2, "DraftJpegImage"

    invoke-static {v5, v2, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/FileUtils;->dumpImageIfEnabled(Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;Ljava/lang/String;Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;)V

    goto :goto_0

    :cond_1
    iget-object v0, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDevicePicTypeImgAvailableCallback;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v2, "PicTypeImgAvailableCallback(%s) onImageAvailable - timeStamp(%d) is invalid"

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v11, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDevicePicTypeImgAvailableCallback;->mPicTypeName:Ljava/lang/String;

    aput-object v11, v3, v6

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v3, v7

    invoke-static {v0, v2, v3}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    :goto_0
    move-wide v2, v9

    goto :goto_3

    :catch_0
    move-exception v0

    move-wide v2, v9

    goto :goto_1

    :cond_3
    :try_start_3
    iget-object v0, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDevicePicTypeImgAvailableCallback;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v9, "PicTypeImgAvailableCallback(%s) onImageAvailable - no new image is available"

    new-array v10, v7, [Ljava/lang/Object;

    iget-object v11, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDevicePicTypeImgAvailableCallback;->mPicTypeName:Ljava/lang/String;

    aput-object v11, v10, v6

    invoke-static {v0, v9, v10}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    :goto_1
    move-object v15, v8

    move-object v8, v0

    move-object v0, v5

    move-object v5, v15

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v8, v0

    move-object v0, v5

    :goto_2
    iget-object v9, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDevicePicTypeImgAvailableCallback;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v10, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDevicePicTypeImgAvailableCallback;->mPicTypeName:Ljava/lang/String;

    aput-object v10, v4, v6

    aput-object v8, v4, v7

    const-string v6, "PicTypeImgAvailableCallback(%s) onImageAvailable - %s"

    invoke-static {v9, v6, v4}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v8, v5

    move-object v5, v0

    :goto_3
    if-eqz v5, :cond_4

    iget-object v0, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDevicePicTypeImgAvailableCallback;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getTimestampToPictureDataMappingTable()Ljava/util/concurrent/ConcurrentNavigableMap;

    move-result-object v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureData;

    iget-object v4, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDevicePicTypeImgAvailableCallback;->mBlockingImageReader:Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;

    iget v6, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDevicePicTypeImgAvailableCallback;->mPicType:I

    invoke-direct {v3, v4, v8, v5, v6}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureData;-><init>(Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;Landroid/media/Image;Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;I)V

    invoke-interface {v0, v2, v3}, Ljava/util/concurrent/ConcurrentNavigableMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureData;

    if-eqz v0, :cond_4

    iget-object v2, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDevicePicTypeImgAvailableCallback;->mBlockingImageReader:Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;

    iget v3, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDevicePicTypeImgAvailableCallback;->mPicType:I

    invoke-virtual {v0, v2, v8, v5, v3}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureData;->addImageGroup(Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;Landroid/media/Image;Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;I)V

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDevicePicTypeImgAvailableCallback;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->sendPictureCallback(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureData;)V

    :cond_4
    return-void
.end method
