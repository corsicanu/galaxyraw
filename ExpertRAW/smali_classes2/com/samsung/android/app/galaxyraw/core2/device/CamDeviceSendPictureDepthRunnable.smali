.class Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceSendPictureDepthRunnable;
.super Ljava/lang/Object;
.source "CamDeviceSendPictureDepthRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

.field private final mCamCapability:Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

.field private final mImageGroup:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureData$ImageGroup;

.field private final mPictureDepthCallback:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$PictureDepthCallback;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureData$ImageGroup;Lcom/samsung/android/app/galaxyraw/core2/CamDevice$PictureDepthCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "camDevice",
            "imageGroup",
            "pictureDepthCallback"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getTAG()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceSendPictureDepthRunnable;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getCamCapability()Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceSendPictureDepthRunnable;->mCamCapability:Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceSendPictureDepthRunnable;->mImageGroup:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureData$ImageGroup;

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceSendPictureDepthRunnable;->mPictureDepthCallback:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$PictureDepthCallback;

    return-void
.end method


# virtual methods
.method public synthetic lambda$run$0$CamDeviceSendPictureDepthRunnable(Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;Lcom/samsung/android/app/galaxyraw/core2/CamDevice$PictureDepthCallback;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceSendPictureDepthRunnable;->mCamCapability:Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    invoke-interface {p2, p1, p0}, Lcom/samsung/android/app/galaxyraw/core2/CamDevice$PictureDepthCallback;->onPictureDepth(Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;Lcom/samsung/android/app/galaxyraw/core2/CamCapability;)V

    return-void
.end method

.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceSendPictureDepthRunnable;->mImageGroup:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureData$ImageGroup;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureData$ImageGroup;->getImageReader()Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceSendPictureDepthRunnable;->mImageGroup:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureData$ImageGroup;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureData$ImageGroup;->getImageBuffer()Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;

    move-result-object v1

    monitor-enter v0

    :try_start_0
    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceSendPictureDepthRunnable;->mPictureDepthCallback:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$PictureDepthCallback;

    invoke-static {v2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceSendPictureDepthRunnable$6a9ysn93BxwXXuIm6Yzj-DewQk4;

    invoke-direct {v3, p0, v1}, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceSendPictureDepthRunnable$6a9ysn93BxwXXuIm6Yzj-DewQk4;-><init>(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceSendPictureDepthRunnable;Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;)V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->getImageInfo()Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceSendPictureDepthRunnable;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v2, "CamDeviceSendPictureDepthRunnable closeImage - timeStamp(%d), format(%s), size(%s)"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->getTimestamp()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

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

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceSendPictureDepthRunnable;->mImageGroup:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureData$ImageGroup;

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
