.class Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceSendPictureRunnable;
.super Ljava/lang/Object;
.source "CamDeviceSendPictureRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

.field private final mCamCapability:Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

.field private final mHasThumbnailImage:Z

.field private final mImageGroup:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureData$ImageGroup;

.field private final mPictureCallback:Ljava/lang/Object;

.field private final mPictureIndex:I

.field private final mTotalPictureCount:I


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureData$ImageGroup;Ljava/lang/Object;ZII)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "camDevice",
            "imageGroup",
            "pictureCallback",
            "hasThumbnailImage",
            "pictureIndex",
            "totalPictureCount"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getTAG()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceSendPictureRunnable;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getCamCapability()Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceSendPictureRunnable;->mCamCapability:Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceSendPictureRunnable;->mImageGroup:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureData$ImageGroup;

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceSendPictureRunnable;->mPictureCallback:Ljava/lang/Object;

    iput-boolean p4, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceSendPictureRunnable;->mHasThumbnailImage:Z

    iput p5, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceSendPictureRunnable;->mPictureIndex:I

    iput p6, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceSendPictureRunnable;->mTotalPictureCount:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceSendPictureRunnable;->mImageGroup:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureData$ImageGroup;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureData$ImageGroup;->getImageReader()Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceSendPictureRunnable;->mImageGroup:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureData$ImageGroup;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureData$ImageGroup;->getImageBuffer()Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;

    move-result-object v1

    monitor-enter v0

    :try_start_0
    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;->isClosed()Z

    move-result v2

    const/4 v8, 0x0

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceSendPictureRunnable;->mPictureCallback:Ljava/lang/Object;

    instance-of v3, v2, Lcom/samsung/android/app/galaxyraw/core2/CamDevice$PictureCallback;

    if-eqz v3, :cond_0

    check-cast v2, Lcom/samsung/android/app/galaxyraw/core2/CamDevice$PictureCallback;

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v3}, Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;->obtain([Ljava/lang/Object;)Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceSendPictureRunnable;->mCamCapability:Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    iget-boolean v5, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceSendPictureRunnable;->mHasThumbnailImage:Z

    invoke-interface {v2, v1, v3, v4, v5}, Lcom/samsung/android/app/galaxyraw/core2/CamDevice$PictureCallback;->onPictureTaken(Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;Lcom/samsung/android/app/galaxyraw/core2/CamCapability;Z)V

    goto :goto_0

    :cond_0
    instance-of v3, v2, Lcom/samsung/android/app/galaxyraw/core2/CamDevice$BurstPictureCallback;

    if-eqz v3, :cond_1

    check-cast v2, Lcom/samsung/android/app/galaxyraw/core2/CamDevice$BurstPictureCallback;

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceSendPictureRunnable;->mCamCapability:Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    iget-boolean v4, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceSendPictureRunnable;->mHasThumbnailImage:Z

    invoke-interface {v2, v1, v3, v4}, Lcom/samsung/android/app/galaxyraw/core2/CamDevice$BurstPictureCallback;->onBurstPictureTaken(Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;Lcom/samsung/android/app/galaxyraw/core2/CamCapability;Z)V

    goto :goto_0

    :cond_1
    instance-of v3, v2, Lcom/samsung/android/app/galaxyraw/core2/CamDevice$MultiPictureCallback;

    if-eqz v3, :cond_2

    check-cast v2, Lcom/samsung/android/app/galaxyraw/core2/CamDevice$MultiPictureCallback;

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceSendPictureRunnable;->mCamCapability:Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    iget-boolean v5, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceSendPictureRunnable;->mHasThumbnailImage:Z

    iget v6, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceSendPictureRunnable;->mPictureIndex:I

    iget v7, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceSendPictureRunnable;->mTotalPictureCount:I

    move-object v3, v1

    invoke-interface/range {v2 .. v7}, Lcom/samsung/android/app/galaxyraw/core2/CamDevice$MultiPictureCallback;->onPictureTaken(Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;Lcom/samsung/android/app/galaxyraw/core2/CamCapability;ZII)V

    :cond_2
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->getImageInfo()Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceSendPictureRunnable;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v2, "CamDeviceSendPictureRunnable closeImage - timeStamp(%d), format(%s), size(%s)"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->getTimestamp()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v8

    const/4 v4, 0x1

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->getFormat()I

    move-result v5

    invoke-static {v5}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils;->toImageFormatString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->getSize()Landroid/util/Size;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceSendPictureRunnable;->mImageGroup:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureData$ImageGroup;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureData$ImageGroup;->closeImage()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
