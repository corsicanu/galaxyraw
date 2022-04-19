.class public final Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackHelper$BurstPictureCallbackHelper;
.super Ljava/lang/Object;
.source "CallbackHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BurstPictureCallbackHelper"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$onBurstPictureStarted$0(ILcom/samsung/android/app/galaxyraw/core2/CamDevice;Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferCallbackForwarder$BurstPictureBufferCallbackForwarder;)V
    .locals 0

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferCallbackForwarder$BurstPictureBufferCallbackForwarder;->getTarget()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$BurstPictureCallback;

    invoke-interface {p2, p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$BurstPictureCallback;->onBurstPictureStarted(ILcom/samsung/android/app/galaxyraw/core2/CamDevice;)V

    return-void
.end method

.method public static onBurstPictureCompleted(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferCallbackForwarder$BurstPictureBufferCallbackForwarder;ILcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "userTag",
            "burstPictureCallbackForwarder",
            "sequenceId",
            "camDevice"
        }
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    aput-object p3, v0, v1

    const-string v1, "BurstPictureCallbackHelper onBurstPictureCompleted - burstPictureCallbackForwarder %s sequenceId %d camDevice %s"

    invoke-static {p0, v1, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferCallbackForwarder$BurstPictureBufferCallbackForwarder;->getBufferForwarder()Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferForwarder;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferCallbackForwarder$BurstPictureBufferCallbackForwarder;->onBurstPictureCompleted(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferCallbackForwarder$BurstPictureBufferCallbackForwarder;->getTarget()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$BurstPictureCallback;

    invoke-interface {p0, p2, p3}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$BurstPictureCallback;->onBurstPictureCompleted(ILcom/samsung/android/app/galaxyraw/core2/CamDevice;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static onBurstPictureStarted(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferCallbackForwarder$BurstPictureBufferCallbackForwarder;ILcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "userTag",
            "burstPictureCallbackForwarder",
            "sequenceId",
            "camDevice"
        }
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    aput-object p3, v0, v1

    const-string v1, "BurstPictureCallbackHelper onBurstPictureStarted - burstPictureCallbackForwarder %s sequenceId %d camDevice %s"

    invoke-static {p0, v1, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackHelper$BurstPictureCallbackHelper$E3GX9LyXxgVc1i1-3uU6ZIF-3s8;

    invoke-direct {p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackHelper$BurstPictureCallbackHelper$E3GX9LyXxgVc1i1-3uU6ZIF-3s8;-><init>(ILcom/samsung/android/app/galaxyraw/core2/CamDevice;)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static onBurstPictureTaken(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferCallbackForwarder$BurstPictureBufferCallbackForwarder;Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "userTag",
            "burstPictureCallbackForwarder",
            "pictureData",
            "camDevice"
        }
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v2, 0x1

    aput-object p2, v0, v2

    const/4 v3, 0x2

    aput-object p3, v0, v3

    const-string v3, "BurstPictureCallbackHelper onBurstPictureTaken - burstPictureCallbackForwarder %s, pictureData %s, camDevice %s"

    invoke-static {p0, v3, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->getImageInfo()Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->getFormat()I

    move-result v3

    const/16 v4, 0x100

    if-eq v3, v4, :cond_0

    new-array p1, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->getFormat()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v1

    const-string p2, "BurstPictureCallbackHelper onBurstPictureTaken - unsupported pictureFormat %d"

    invoke-static {p0, p2, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferCallbackForwarder$BurstPictureBufferCallbackForwarder;->getBufferForwarder()Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferForwarder;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferCallbackForwarder$BurstPictureBufferCallbackForwarder;->onBurstPictureTaken(Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V

    goto :goto_0

    :cond_1
    const-string v1, "direct forward without bufferForwarder E"

    invoke-static {p0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferCallbackForwarder$BurstPictureBufferCallbackForwarder;->getTarget()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$BurstPictureCallback;

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackHelper;->access$000(Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p2

    new-instance v1, Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->getFormat()I

    move-result v2

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->getSize()Landroid/util/Size;

    move-result-object v3

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->getCaptureResult()Landroid/hardware/camera2/TotalCaptureResult;

    move-result-object v0

    invoke-direct {v1, v2, v3, v0}, Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo;-><init>(ILandroid/util/Size;Landroid/hardware/camera2/CaptureResult;)V

    invoke-interface {p1, p2, v1, p3}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$BurstPictureCallback;->onBurstPictureTaken(Ljava/nio/ByteBuffer;Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V

    const-string p1, "direct forward without bufferForwarder  X"

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
