.class Lcom/samsung/android/app/galaxyraw/core2/device/CamDevicePrevTypeImgAvailableCallback;
.super Ljava/lang/Object;
.source "CamDevicePrevTypeImgAvailableCallback.java"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# static fields
.field static final PREV_TYPE_DEPTH:I = 0xa

.field static final PREV_TYPE_MAIN_PREVIEW:I = 0x0

.field static final PREV_TYPE_SUB_PREVIEW:I = 0x1


# instance fields
.field private final TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

.field private final mCamCapability:Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

.field private final mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

.field private mDummyFrameReplacer:Lcom/samsung/android/app/galaxyraw/core2/util/DummyFrameReplacer;

.field private final mPrevType:I

.field private final mPrevTypeName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "camDeviceImpl",
            "prevType"
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

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDevicePrevTypeImgAvailableCallback;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getCamCapability()Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDevicePrevTypeImgAvailableCallback;->mCamCapability:Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getTAG()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDevicePrevTypeImgAvailableCallback;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    iput p2, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDevicePrevTypeImgAvailableCallback;->mPrevType:I

    if-eqz p2, :cond_2

    const/4 p1, 0x1

    if-eq p2, p1, :cond_1

    const/16 v0, 0xa

    if-ne p2, v0, :cond_0

    const-string p1, "Depth"

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDevicePrevTypeImgAvailableCallback;->mPrevTypeName:Ljava/lang/String;

    goto :goto_1

    :cond_0
    new-instance p0, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;->ILLEGAL_ARGUMENT:Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    sget-object v2, Ljava/util/Locale;->UK:Ljava/util/Locale;

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v3

    const-string p2, "%d is not supported prevType"

    invoke-static {v2, p2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;-><init>(Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;Ljava/lang/Throwable;)V

    throw p0

    :cond_1
    const-string p1, "SubPreview"

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDevicePrevTypeImgAvailableCallback;->mPrevTypeName:Ljava/lang/String;

    goto :goto_1

    :cond_2
    const-string p1, "MainPreview"

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDevicePrevTypeImgAvailableCallback;->mPrevTypeName:Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/util/DummyFrameReplacer;->isDummyFrameReplacerEnabled()Z

    move-result p1

    if-eqz p1, :cond_3

    new-instance p1, Lcom/samsung/android/app/galaxyraw/core2/util/DummyFrameReplacer;

    invoke-direct {p1, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/DummyFrameReplacer;-><init>(Lcom/samsung/android/app/galaxyraw/core2/CamCapability;)V

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDevicePrevTypeImgAvailableCallback;->mDummyFrameReplacer:Lcom/samsung/android/app/galaxyraw/core2/util/DummyFrameReplacer;

    :goto_1
    return-void
.end method

.method private executeDummyFrameReplacer(Landroid/media/Image;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "image"
        }
    .end annotation

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/util/DummyFrameReplacer;->getDummyFrameReplacerMode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDevicePrevTypeImgAvailableCallback;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDevicePrevTypeImgAvailableCallback;->mPrevType:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v1

    const-string p0, "PrevTypeImgAvailableCallback(%s) executeDummyFrameReplacer - not supported mode(%d)"

    invoke-static {p1, p0, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->w(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDevicePrevTypeImgAvailableCallback;->mDummyFrameReplacer:Lcom/samsung/android/app/galaxyraw/core2/util/DummyFrameReplacer;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/DummyFrameReplacer;->replaceImage(Landroid/media/Image;)V

    return-void

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDevicePrevTypeImgAvailableCallback;->mDummyFrameReplacer:Lcom/samsung/android/app/galaxyraw/core2/util/DummyFrameReplacer;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/DummyFrameReplacer;->dumpImage(Landroid/media/Image;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onImageAvailable$0$CamDevicePrevTypeImgAvailableCallback(Landroid/media/Image;Lcom/samsung/android/app/galaxyraw/core2/CamDevice$PreviewCallback;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDevicePrevTypeImgAvailableCallback;->mCamCapability:Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    invoke-interface {p2, p1, p0}, Lcom/samsung/android/app/galaxyraw/core2/CamDevice$PreviewCallback;->onPreviewFrame(Landroid/media/Image;Lcom/samsung/android/app/galaxyraw/core2/CamCapability;)V

    return-void
.end method

.method public synthetic lambda$onImageAvailable$1$CamDevicePrevTypeImgAvailableCallback(Landroid/media/Image;Lcom/samsung/android/app/galaxyraw/core2/CamDevice$PreviewDepthCallback;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDevicePrevTypeImgAvailableCallback;->mCamCapability:Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    invoke-interface {p2, p1, p0}, Lcom/samsung/android/app/galaxyraw/core2/CamDevice$PreviewDepthCallback;->onPreviewDepth(Landroid/media/Image;Lcom/samsung/android/app/galaxyraw/core2/CamCapability;)V

    return-void
.end method

.method public onImageAvailable(Landroid/media/ImageReader;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "reader"
        }
    .end annotation

    monitor-enter p1

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireLatestImage()Landroid/media/Image;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDevicePrevTypeImgAvailableCallback;->mDummyFrameReplacer:Lcom/samsung/android/app/galaxyraw/core2/util/DummyFrameReplacer;

    if-eqz v4, :cond_0

    invoke-direct {p0, v3}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDevicePrevTypeImgAvailableCallback;->executeDummyFrameReplacer(Landroid/media/Image;)V

    :cond_0
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_3

    iget v4, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDevicePrevTypeImgAvailableCallback;->mPrevType:I

    if-eqz v4, :cond_2

    if-eq v4, v2, :cond_2

    const/16 v5, 0xa

    if-eq v4, v5, :cond_1

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDevicePrevTypeImgAvailableCallback;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v4}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getPreviewDepthCbMappingTable()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/app/galaxyraw/core2/CamDevice$PreviewDepthCallback;

    invoke-static {v4}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDevicePrevTypeImgAvailableCallback$gxDFrAodr8uNsQNR6S4HmRzcDdg;

    invoke-direct {v5, p0, v3}, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDevicePrevTypeImgAvailableCallback$gxDFrAodr8uNsQNR6S4HmRzcDdg;-><init>(Lcom/samsung/android/app/galaxyraw/core2/device/CamDevicePrevTypeImgAvailableCallback;Landroid/media/Image;)V

    invoke-virtual {v4, v5}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDevicePrevTypeImgAvailableCallback;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v4}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getPreviewCbMappingTable()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/app/galaxyraw/core2/CamDevice$PreviewCallback;

    invoke-static {v4}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDevicePrevTypeImgAvailableCallback$P2SipuBqdoSDnLL1-cMcdAf40Yg;

    invoke-direct {v5, p0, v3}, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDevicePrevTypeImgAvailableCallback$P2SipuBqdoSDnLL1-cMcdAf40Yg;-><init>(Lcom/samsung/android/app/galaxyraw/core2/device/CamDevicePrevTypeImgAvailableCallback;Landroid/media/Image;)V

    invoke-virtual {v4, v5}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDevicePrevTypeImgAvailableCallback;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v5, "PrevTypeImgAvailableCallback(%s) onImageAvailable - timeStamp(%d) is invalid"

    new-array v6, v0, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDevicePrevTypeImgAvailableCallback;->mPrevTypeName:Ljava/lang/String;

    aput-object v7, v6, v1

    invoke-virtual {v3}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v4, v5, v6}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->w(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {v3}, Landroid/media/Image;->close()V

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDevicePrevTypeImgAvailableCallback;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v4, "PrevTypeImgAvailableCallback(%s) onImageAvailable - no new image is available"

    new-array v5, v2, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDevicePrevTypeImgAvailableCallback;->mPrevTypeName:Ljava/lang/String;

    aput-object v6, v5, v1

    invoke-static {v3, v4, v5}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->w(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception v3

    :try_start_1
    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDevicePrevTypeImgAvailableCallback;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v5, "PrevTypeImgAvailableCallback(%s) onImageAvailable - %s"

    new-array v0, v0, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDevicePrevTypeImgAvailableCallback;->mPrevTypeName:Ljava/lang/String;

    aput-object p0, v0, v1

    aput-object v3, v0, v2

    invoke-static {v4, v5, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    monitor-exit p1

    return-void

    :goto_2
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
