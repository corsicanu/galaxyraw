.class Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$8;
.super Ljava/lang/Object;
.source "PhotoMakerBase.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/core2/CamDevice$SessionStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$8;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onReady$0$PhotoMakerBase$8(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$StateCallback;)V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$8;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mCamDevice:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    invoke-interface {p1, p0, v0}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$StateCallback;->onCamDeviceReady(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V

    return-void
.end method

.method public onConfigureFailed()V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$8;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$8;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v2, "onConfigureFailed E - sessionStateCallback(%s)"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v1, v2, v4}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$8;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->joinInitializeMakerThread()V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$8;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;->CONNECT_FAILED:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->setCamDeviceSessionState(Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$8;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    iget-object v2, v2, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-releaseMaker"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/TraceWrapper;->traceBegin(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$8;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->releaseMaker()V

    invoke-static {}, Lcom/sec/android/app/TraceWrapper;->traceEnd()V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$8;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mCamDevice:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/CamDevice;->getCamCapability()Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSamsungFeatureDynamicShotInfoAvailable()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;->getInstance()Lcom/samsung/android/app/galaxyraw/core2/processor/manager/ProcessorManagerInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/ProcessorManagerInterface;->resumePPP()V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$8;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mCamDevice:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$8;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    iget-object v2, v2, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onConfigureFailed - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$8;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v2, "onConfigureFailed X - sessionStateCallback(%s)"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v3, v6

    invoke-static {v1, v2, v3}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public onConfigured()V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$8;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$8;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v2, "[CAMFWKPI] onConfigured E - sessionStateCallback(%s)"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v1, v2, v4}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$8;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->getCamDeviceSessionState()Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;->CONNECTED:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;->checkTransitState(Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;)Z

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$8;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mCamDevice:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$8;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    iget-object v2, v2, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mCamDeviceMainPreviewCallback:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$PreviewCallback;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/CamDevice;->setMainPreviewCallback(Lcom/samsung/android/app/galaxyraw/core2/CamDevice$PreviewCallback;)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$8;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mCamDevice:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$8;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    iget-object v2, v2, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mCamDeviceSubPreviewCallback:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$PreviewCallback;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/CamDevice;->setSubPreviewCallback(Lcom/samsung/android/app/galaxyraw/core2/CamDevice$PreviewCallback;)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$8;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mCamDevice:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$8;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    iget-object v2, v2, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mCamDevicePictureCallback:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$PictureCallback;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/CamDevice;->setPictureCallback(Lcom/samsung/android/app/galaxyraw/core2/CamDevice$PictureCallback;)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$8;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mCamDevice:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$8;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    iget-object v2, v2, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mCamDeviceMultiPictureCallback:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$MultiPictureCallback;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/CamDevice;->setMultiPictureCallback(Lcom/samsung/android/app/galaxyraw/core2/CamDevice$MultiPictureCallback;)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$8;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mCamDevice:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$8;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    iget-object v2, v2, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mCamDeviceThumbnailCallback:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$ThumbnailCallback;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/CamDevice;->setThumbnailCallback(Lcom/samsung/android/app/galaxyraw/core2/CamDevice$ThumbnailCallback;)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$8;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mCamDevice:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$8;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    iget-object v2, v2, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mCamDevicePreviewDepthCallback:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$PreviewDepthCallback;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/CamDevice;->setPreviewDepthCallback(Lcom/samsung/android/app/galaxyraw/core2/CamDevice$PreviewDepthCallback;)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$8;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mCamDevice:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$8;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    iget-object v2, v2, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mCamDevicePictureDepthCallback:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$PictureDepthCallback;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/CamDevice;->setPictureDepthCallback(Lcom/samsung/android/app/galaxyraw/core2/CamDevice$PictureDepthCallback;)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$8;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mCamDevice:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$8;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    iget-object v2, v2, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mCamDeviceBurstPictureCallback:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$BurstPictureCallback;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/CamDevice;->setBurstPictureCallback(Lcom/samsung/android/app/galaxyraw/core2/CamDevice$BurstPictureCallback;)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$8;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mFirstCompPicCbImgSizeConfig:Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$8;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mFirstCompPicCbImgSizeConfig:Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;->getSize()Landroid/util/Size;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$8;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    iget-object v2, v2, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mCamDevice:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/CamDevice;->getCamCapability()Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getJpegAvailableThumbnailSizes()Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils;->getNearestSizeInRatio(Landroid/util/Size;Ljava/util/Collection;)Landroid/util/Size;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$8;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    iget-object v2, v2, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Jpeg thumbnail size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$8;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    iget-object v2, v2, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mPictureRequestBuilderMap:Ljava/util/Map;

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$8;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    iget-object v4, v4, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mCamDevice:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    invoke-virtual {v4}, Lcom/samsung/android/app/galaxyraw/core2/CamDevice;->getId()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->JPEG_THUMBNAIL_SIZE:Landroid/hardware/camera2/CaptureRequest$Key;

    if-nez v1, :cond_1

    new-instance v1, Landroid/util/Size;

    invoke-direct {v1, v6, v6}, Landroid/util/Size;-><init>(II)V

    :cond_1
    invoke-static {v2, v4, v5, v1}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureRequest;->set(Ljava/util/Map;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$8;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->joinInitializeMakerThread()V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$8;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    invoke-static {v1, v3}, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->access$102(Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;Z)Z

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$8;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    invoke-static {v1, v3}, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->access$202(Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;Z)Z

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$8;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mCamDevice:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/CamDevice;->getCamCapability()Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSamsungFeatureDynamicShotInfoAvailable()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;->getInstance()Lcom/samsung/android/app/galaxyraw/core2/processor/manager/ProcessorManagerInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/ProcessorManagerInterface;->resumePPP()V

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$8;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;->CONNECTED:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->setCamDeviceSessionState(Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_2
    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$8;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    iget-object v2, v2, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onConfigured - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    :goto_1
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$8;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v2, "[CAMFWKPI] onConfigured X - sessionStateCallback(%s)"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v3, v6

    invoke-static {v1, v2, v3}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public onDeviceClosed()V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$8;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$8;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v2, "onDeviceClosed E - sessionStateCallback(%s)"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v1, v2, v4}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$8;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->joinInitializeMakerThread()V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$8;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;->DEVICE_CLOSED:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->setCamDeviceSessionState(Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$8;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    iget-object v2, v2, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-releaseMaker"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/TraceWrapper;->traceBegin(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$8;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->releaseMaker()V

    invoke-static {}, Lcom/sec/android/app/TraceWrapper;->traceEnd()V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$8;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    iget-object v2, v1, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mMainPreviewCallback:Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferCallbackForwarder$PreviewBufferCallbackForwarder;

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$8;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    iget-object v4, v4, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mMainPreviewBufferForwarderRef:Lcom/samsung/android/app/galaxyraw/core2/util/MutableReference;

    invoke-virtual {v1, v2, v4}, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->releaseBufferCallbackForwarder(Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferCallbackForwarder;Lcom/samsung/android/app/galaxyraw/core2/util/MutableReference;)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$8;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    iget-object v2, v1, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mSubPreviewCallback:Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferCallbackForwarder$PreviewBufferCallbackForwarder;

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$8;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    iget-object v4, v4, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mSubPreviewBufferForwarderRef:Lcom/samsung/android/app/galaxyraw/core2/util/MutableReference;

    invoke-virtual {v1, v2, v4}, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->releaseBufferCallbackForwarder(Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferCallbackForwarder;Lcom/samsung/android/app/galaxyraw/core2/util/MutableReference;)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$8;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    iget-object v2, v1, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mBurstPictureCallback:Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferCallbackForwarder$BurstPictureBufferCallbackForwarder;

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$8;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    iget-object v4, v4, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mBurstPictureBufferForwarderRef:Lcom/samsung/android/app/galaxyraw/core2/util/MutableReference;

    invoke-virtual {v1, v2, v4}, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->releaseBufferCallbackForwarder(Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferCallbackForwarder;Lcom/samsung/android/app/galaxyraw/core2/util/MutableReference;)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$8;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mCamDevice:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$8;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    iget-object v2, v2, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onDeviceClosed - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$8;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v2, "onDeviceClosed X - sessionStateCallback(%s)"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v3, v6

    invoke-static {v1, v2, v3}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public onDisconnected()V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$8;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$8;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v2, "onDisconnected E - sessionStateCallback(%s)"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v1, v2, v4}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$8;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->joinInitializeMakerThread()V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$8;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;->DISCONNECTED:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->setCamDeviceSessionState(Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$8;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->getCamDeviceSessionState()Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;->DISCONNECTED:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;

    if-ne v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$8;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    iget-object v2, v2, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-releaseMaker"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/TraceWrapper;->traceBegin(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$8;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->releaseMaker()V

    invoke-static {}, Lcom/sec/android/app/TraceWrapper;->traceEnd()V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$8;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    iget-object v2, v1, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mMainPreviewCallback:Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferCallbackForwarder$PreviewBufferCallbackForwarder;

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$8;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    iget-object v4, v4, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mMainPreviewBufferForwarderRef:Lcom/samsung/android/app/galaxyraw/core2/util/MutableReference;

    invoke-virtual {v1, v2, v4}, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->releaseBufferCallbackForwarder(Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferCallbackForwarder;Lcom/samsung/android/app/galaxyraw/core2/util/MutableReference;)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$8;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    iget-object v2, v1, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mSubPreviewCallback:Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferCallbackForwarder$PreviewBufferCallbackForwarder;

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$8;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    iget-object v4, v4, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mSubPreviewBufferForwarderRef:Lcom/samsung/android/app/galaxyraw/core2/util/MutableReference;

    invoke-virtual {v1, v2, v4}, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->releaseBufferCallbackForwarder(Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferCallbackForwarder;Lcom/samsung/android/app/galaxyraw/core2/util/MutableReference;)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$8;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    iget-object v2, v1, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mBurstPictureCallback:Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferCallbackForwarder$BurstPictureBufferCallbackForwarder;

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$8;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    iget-object v4, v4, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mBurstPictureBufferForwarderRef:Lcom/samsung/android/app/galaxyraw/core2/util/MutableReference;

    invoke-virtual {v1, v2, v4}, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->releaseBufferCallbackForwarder(Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferCallbackForwarder;Lcom/samsung/android/app/galaxyraw/core2/util/MutableReference;)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$8;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mCamDevice:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$8;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    iget-object v2, v2, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onDisconnected - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$8;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v2, "onDisconnected X - sessionStateCallback(%s)"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v3, v6

    invoke-static {v1, v2, v3}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public onReady()V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$8;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$8;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v2, "onReady E - sessionStateCallback(%s)"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v1, v2, v4}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$8;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->joinInitializeMakerThread()V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$8;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mMakerStateCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$StateCallback;

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$PhotoMakerBase$8$SGYhZFaslpmVuLNVADZ4rthdKQE;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$PhotoMakerBase$8$SGYhZFaslpmVuLNVADZ4rthdKQE;-><init>(Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$8;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$8;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    iget-object v2, v2, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReady - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$8;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v2, "onReady X - sessionStateCallback(%s)"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v3, v6

    invoke-static {v1, v2, v3}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public onSurfacePrepared(Landroid/view/Surface;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "surface"
        }
    .end annotation

    return-void
.end method
