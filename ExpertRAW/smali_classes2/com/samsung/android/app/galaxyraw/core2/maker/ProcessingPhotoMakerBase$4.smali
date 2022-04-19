.class Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase$4;
.super Ljava/lang/Object;
.source "ProcessingPhotoMakerBase.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/core2/CamDevice$MultiPictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;-><init>(Landroid/os/Handler;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase$4;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onError$0$ProcessingPhotoMakerBase$4(Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest$Sequence;ILandroid/hardware/camera2/CaptureFailure;Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest;)V
    .locals 1

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;->getInstance()Lcom/samsung/android/app/galaxyraw/core2/processor/manager/ProcessorManagerInterface;

    move-result-object v0

    invoke-interface {v0, p4}, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/ProcessorManagerInterface;->process(Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest;)V

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest$Sequence;->getMode()I

    move-result p4

    invoke-static {p4}, Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/NodeController;->isSupportIncompleteMerge(I)Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest$Sequence;->getMode()I

    move-result p1

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/NodeController;->isSupportIncompleteMerge(I)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    if-eq p2, p1, :cond_0

    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureFailure;->getReason()I

    move-result p2

    if-ne p2, p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase$4;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->access$000(Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;)Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase$4;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;

    iget-object p2, p2, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->mPictureCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PictureCallback;

    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureFailure;->getReason()I

    move-result p3

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase$4;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->mCamDevice:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    invoke-static {p1, p2, p3, p0}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackHelper$PictureCallbackHelper;->onError(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PictureCallback;ILcom/samsung/android/app/galaxyraw/core2/CamDevice;)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$onPictureDepth$1$ProcessingPhotoMakerBase$4(Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest;)V
    .locals 2

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;->getInstance()Lcom/samsung/android/app/galaxyraw/core2/processor/manager/ProcessorManagerInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/ProcessorManagerInterface;->process(Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase$4;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->access$000(Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;)Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase$4;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->mPictureCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PictureCallback;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase$4;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->mCamDevice:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1, p0}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackHelper$PictureCallbackHelper;->onError(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PictureCallback;ILcom/samsung/android/app/galaxyraw/core2/CamDevice;)V

    return-void
.end method

.method public synthetic lambda$onPictureTaken$2$ProcessingPhotoMakerBase$4(Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest;)V
    .locals 2

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;->getInstance()Lcom/samsung/android/app/galaxyraw/core2/processor/manager/ProcessorManagerInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/ProcessorManagerInterface;->process(Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase$4;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->access$000(Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;)Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase$4;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->mPictureCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PictureCallback;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase$4;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->mCamDevice:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1, p0}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackHelper$PictureCallbackHelper;->onError(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PictureCallback;ILcom/samsung/android/app/galaxyraw/core2/CamDevice;)V

    return-void
.end method

.method public synthetic lambda$onPictureTaken$3$ProcessingPhotoMakerBase$4(Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest;)V
    .locals 2

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;->getInstance()Lcom/samsung/android/app/galaxyraw/core2/processor/manager/ProcessorManagerInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/ProcessorManagerInterface;->process(Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase$4;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->access$000(Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;)Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase$4;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->mPictureCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PictureCallback;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase$4;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->mCamDevice:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1, p0}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackHelper$PictureCallbackHelper;->onError(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PictureCallback;ILcom/samsung/android/app/galaxyraw/core2/CamDevice;)V

    return-void
.end method

.method public onError(Landroid/hardware/camera2/CaptureFailure;II)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "failure",
            "index",
            "totalCount"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase$4;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->access$000(Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;)Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object v0

    const-string v1, "MultiPictureCallback onError - reason %d"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureFailure;->getReason()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v0, v1, v3}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase$4;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->mCurrentPictureProcessLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureFailure;->getSequenceId()I

    move-result v1

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase$4;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;

    iget v3, v3, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->mCurrentPictureSequenceId:I

    const/4 v4, 0x2

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase$4;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->mCurrentPictureProcessSequence:Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest$Sequence;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase$4;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;

    iput-boolean v5, v0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->mIsIPPCapturing:Z

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureFailure;->getReason()I

    move-result v0

    sget-object v3, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const-string v6, "%s : getting onError sequenceId %d, frameNumber %d, requestIndex %d/%d, reason %d"

    const/4 v7, 0x6

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase$4;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;

    invoke-virtual {v8}, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->getMakerTag()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureFailure;->getSequenceId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v7, v2

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureFailure;->getFrameNumber()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v7, v4

    const/4 v2, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v7, v2

    const/4 v2, 0x4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v7, v2

    const/4 p3, 0x5

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureFailure;->getReason()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, p3

    invoke-static {v3, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {v1, v0, p3}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest$Sequence;->errorRequest(ILjava/lang/String;)Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest;

    move-result-object p3

    invoke-static {p3}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p3

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$ProcessingPhotoMakerBase$4$TJr-wY_mJNhYOXv0NEHzWaDREtI;

    invoke-direct {v0, p0, v1, p2, p1}, Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$ProcessingPhotoMakerBase$4$TJr-wY_mJNhYOXv0NEHzWaDREtI;-><init>(Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase$4;Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest$Sequence;ILandroid/hardware/camera2/CaptureFailure;)V

    invoke-virtual {p3, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void

    :cond_0
    :try_start_1
    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase$4;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;

    iput-boolean v5, p2, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->mIsIPPCapturing:Z

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase$4;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->access$000(Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;)Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object p2

    const-string p3, "MultiPictureCallback onError - sequenceId %d is not equal with current sequence %d"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureFailure;->getSequenceId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v5

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase$4;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->mCurrentPictureSequenceId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v2

    invoke-static {p2, p3, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public onPictureDepth(Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;Lcom/samsung/android/app/galaxyraw/core2/CamCapability;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "depthData",
            "camCapability"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase$4;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->access$000(Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;)Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object v0

    const-string v1, "MultiPictureCallback onPictureDepth - depthData : %s, format : %s"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->getImageInfo()Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->getFormat()I

    move-result v5

    invoke-static {v5}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils;->toImageFormatString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v3, v6

    invoke-static {v0, v1, v3}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->getImageInfo()Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase$4;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->mCurrentPictureProcessLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->getCaptureResult()Landroid/hardware/camera2/TotalCaptureResult;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/camera2/TotalCaptureResult;->getSequenceId()I

    move-result v3

    iget-object v5, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase$4;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;

    iget v5, v5, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->mCurrentPictureSequenceId:I

    if-ne v3, v5, :cond_2

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase$4;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;

    iget-object v3, v3, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->mCurrentPictureProcessSequence:Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest$Sequence;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->getFormat()I

    move-result v1

    const v5, 0x44363159

    if-eq v1, v5, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase$4;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->access$000(Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;)Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unsupported format("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->getImageInfo()Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->getFormat()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ")."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->w(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase$4;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->mPictureProcessLock:Lcom/samsung/android/app/galaxyraw/core2/util/FlagLock;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/util/FlagLock;->lockIfFlagEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase$4;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;

    iget-object v1, v0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->mBasketCollectorMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v3}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest$Sequence;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/galaxyraw/core2/util/BasketCollector;

    invoke-virtual {v0, v1, v3, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->processWithBasketCollector(Lcom/samsung/android/app/galaxyraw/core2/util/BasketCollector;Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest$Sequence;Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;Lcom/samsung/android/app/galaxyraw/core2/CamCapability;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase$4;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->mPictureProcessLock:Lcom/samsung/android/app/galaxyraw/core2/util/FlagLock;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/util/FlagLock;->unlock()V

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase$4;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->mPictureProcessLock:Lcom/samsung/android/app/galaxyraw/core2/util/FlagLock;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/util/FlagLock;->unlock()V

    throw p1

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase$4;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->access$000(Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;)Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object p1

    const-string p2, "MultiPictureCallback onPictureDepth - pictureProcess is not enabled"

    invoke-static {p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    sget-object p1, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const-string p2, "%s : maker was disconnected but getting image(format %d) from onPictureDepth"

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase$4;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->getMakerTag()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->getFormat()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v6

    invoke-static {p1, p2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v3, v4, p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest$Sequence;->errorRequest(ILjava/lang/String;)Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$ProcessingPhotoMakerBase$4$N9tafbjlvyrKGICjhILGRo2NJzk;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$ProcessingPhotoMakerBase$4$N9tafbjlvyrKGICjhILGRo2NJzk;-><init>(Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase$4;)V

    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void

    :cond_2
    :try_start_2
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase$4;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->access$000(Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;)Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object p1

    const-string p2, "MultiPictureCallback onPictureDepth - sequenceId %d is not equal with current sequence %d"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->getCaptureResult()Landroid/hardware/camera2/TotalCaptureResult;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/camera2/TotalCaptureResult;->getSequenceId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v4

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase$4;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;

    iget v0, v0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->mCurrentPictureSequenceId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v6

    invoke-static {p1, p2, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase$4;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->access$000(Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;)Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase$4;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;

    iget-object p2, p2, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->mPictureCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PictureCallback;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase$4;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->mCamDevice:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    invoke-static {p1, p2, v4, p0}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackHelper$PictureCallbackHelper;->onError(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PictureCallback;ILcom/samsung/android/app/galaxyraw/core2/CamDevice;)V

    monitor-exit v1

    return-void

    :catchall_1
    move-exception p0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public onPictureSequenceCompleted(IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "sequenceId",
            "frameNumber"
        }
    .end annotation

    return-void
.end method

.method public onPictureTaken(Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;Lcom/samsung/android/app/galaxyraw/core2/CamCapability;ZII)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "pictureData",
            "camCapability",
            "hasThumbnailImage",
            "requestIndex",
            "requestListSize"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase$4;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->access$000(Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;)Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object v0

    const-string v1, "MultiPictureCallback onPictureTaken - pictureData %s, hasThumbnailImage %b, requestIndex %d, requestListSize %d"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    const/4 v4, 0x1

    aput-object p3, v2, v4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x2

    aput-object p3, v2, p4

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p5, 0x3

    aput-object p3, v2, p5

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->getImageInfo()Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;

    move-result-object p3

    iget-object p5, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase$4;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;

    iget-object p5, p5, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->mCurrentPictureProcessLock:Ljava/lang/Object;

    monitor-enter p5

    :try_start_0
    invoke-virtual {p3}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->getCaptureResult()Landroid/hardware/camera2/TotalCaptureResult;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/camera2/TotalCaptureResult;->getSequenceId()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase$4;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;

    iget v1, v1, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->mCurrentPictureSequenceId:I

    if-ne v0, v1, :cond_9

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase$4;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->mCurrentPictureProcessSequence:Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest$Sequence;

    monitor-exit p5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    invoke-virtual {p3}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->getFormat()I

    move-result p5

    const/16 v1, 0x20

    if-eq p5, v1, :cond_4

    const/16 v1, 0x23

    if-eq p5, v1, :cond_4

    const/16 v1, 0x100

    if-eq p5, v1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase$4;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->access$000(Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;)Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "unsupported format("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p3}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->getFormat()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ")."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->w(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_0
    iget-object p5, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase$4;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;

    iget-object p5, p5, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->mPictureProcessLock:Lcom/samsung/android/app/galaxyraw/core2/util/FlagLock;

    invoke-virtual {p5}, Lcom/samsung/android/app/galaxyraw/core2/util/FlagLock;->lockIfFlagEnabled()Z

    move-result p5

    if-eqz p5, :cond_3

    :try_start_1
    sget-object p3, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest$Usage;->DRAFT_IMAGE:Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest$Usage;

    invoke-interface {v0, p3, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest$Sequence;->nextRequest(Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest$Usage;Ljava/lang/Object;Lcom/samsung/android/app/galaxyraw/core2/CamCapability;)Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest;

    move-result-object p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase$4;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->access$000(Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;)Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object p1

    const-string p2, "MultiPictureCallback onPictureTaken - nextRequest is null"

    invoke-static {p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest$Sequence;->isError()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase$4;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->access$000(Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;)Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase$4;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;

    iget-object p2, p2, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->mPictureCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PictureCallback;

    iget-object p3, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase$4;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;

    iget-object p3, p3, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->mCamDevice:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    invoke-static {p1, p2, v3, p3}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackHelper$PictureCallbackHelper;->onError(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PictureCallback;ILcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase$4;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->mPictureProcessLock:Lcom/samsung/android/app/galaxyraw/core2/util/FlagLock;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/util/FlagLock;->unlock()V

    return-void

    :cond_2
    :try_start_2
    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;->getInstance()Lcom/samsung/android/app/galaxyraw/core2/processor/manager/ProcessorManagerInterface;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/ProcessorManagerInterface;->process(Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase$4;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->mPictureProcessLock:Lcom/samsung/android/app/galaxyraw/core2/util/FlagLock;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/util/FlagLock;->unlock()V

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase$4;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->mPictureProcessLock:Lcom/samsung/android/app/galaxyraw/core2/util/FlagLock;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/util/FlagLock;->unlock()V

    throw p1

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase$4;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->access$000(Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;)Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object p1

    const-string p2, "MultiPictureCallback onPictureTaken - pictureProcess is not enabled"

    invoke-static {p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    sget-object p1, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const-string p2, "%s : maker was disconnected but getting image(format %s) from onPictureTaken"

    new-array p4, p4, [Ljava/lang/Object;

    iget-object p5, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase$4;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;

    invoke-virtual {p5}, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->getMakerTag()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object p5

    aput-object p5, p4, v3

    invoke-virtual {p3}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->getFormat()I

    move-result p3

    invoke-static {p3}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils;->toImageFormatString(I)Ljava/lang/String;

    move-result-object p3

    aput-object p3, p4, v4

    invoke-static {p1, p2, p4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v3, p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest$Sequence;->errorRequest(ILjava/lang/String;)Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$ProcessingPhotoMakerBase$4$LnzJm64YroW9KZlSxM1AXHW8fHc;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$ProcessingPhotoMakerBase$4$LnzJm64YroW9KZlSxM1AXHW8fHc;-><init>(Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase$4;)V

    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void

    :cond_4
    iget-object p5, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase$4;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;

    iget-object p5, p5, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->mPictureProcessLock:Lcom/samsung/android/app/galaxyraw/core2/util/FlagLock;

    invoke-virtual {p5}, Lcom/samsung/android/app/galaxyraw/core2/util/FlagLock;->lockIfFlagEnabled()Z

    move-result p5

    if-eqz p5, :cond_8

    iget-object p3, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase$4;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;

    invoke-static {p3}, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->access$000(Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;)Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object p3

    const-string p5, "MultiPictureCallback onPictureTaken - CurrentProcessCount=%d, TotalProcessCount=%d"

    new-array p4, p4, [Ljava/lang/Object;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest$Sequence;->getCurrentProcessCount()I

    move-result v1

    add-int/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p4, v3

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest$Sequence;->getTotalProcessCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p4, v4

    invoke-static {p3, p5, p4}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p3, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase$4;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;

    invoke-static {p3}, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->access$000(Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;)Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object p3

    iget-object p4, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase$4;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;

    iget-object p4, p4, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->mPictureCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PictureCallback;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest$Sequence;->getCurrentProcessCount()I

    move-result p5

    add-int/2addr p5, v4

    int-to-float p5, p5

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest$Sequence;->getTotalProcessCount()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p5, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr p5, v1

    float-to-int p5, p5

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase$4;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->mCamDevice:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    invoke-static {p3, p4, p5, v1}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackHelper$PictureCallbackHelper;->onProcessingFrameCollected(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PictureCallback;ILcom/samsung/android/app/galaxyraw/core2/CamDevice;)V

    :try_start_3
    iget-object p3, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase$4;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;

    iget-object p4, p3, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->mBasketCollectorMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest$Sequence;->getId()I

    move-result p5

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/samsung/android/app/galaxyraw/core2/util/BasketCollector;

    invoke-virtual {p3, p4, v0, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->processWithBasketCollector(Lcom/samsung/android/app/galaxyraw/core2/util/BasketCollector;Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest$Sequence;Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;Lcom/samsung/android/app/galaxyraw/core2/CamCapability;)Z

    move-result p3

    if-nez p3, :cond_7

    sget-object p3, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest$Usage;->RESOURCE_IMAGE:Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest$Usage;

    invoke-interface {v0, p3, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest$Sequence;->nextRequest(Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest$Usage;Ljava/lang/Object;Lcom/samsung/android/app/galaxyraw/core2/CamCapability;)Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest;

    move-result-object p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase$4;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->access$000(Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;)Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object p1

    const-string p2, "MultiPictureCallback onPictureTaken - nextRequest is null"

    invoke-static {p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest$Sequence;->isError()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase$4;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->access$000(Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;)Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase$4;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;

    iget-object p2, p2, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->mPictureCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PictureCallback;

    iget-object p3, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase$4;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;

    iget-object p3, p3, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->mCamDevice:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    invoke-static {p1, p2, v3, p3}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackHelper$PictureCallbackHelper;->onError(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PictureCallback;ILcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_5
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase$4;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->mPictureProcessLock:Lcom/samsung/android/app/galaxyraw/core2/util/FlagLock;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/util/FlagLock;->unlock()V

    return-void

    :cond_6
    :try_start_4
    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;->getInstance()Lcom/samsung/android/app/galaxyraw/core2/processor/manager/ProcessorManagerInterface;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/ProcessorManagerInterface;->process(Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_7
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase$4;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->mPictureProcessLock:Lcom/samsung/android/app/galaxyraw/core2/util/FlagLock;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/util/FlagLock;->unlock()V

    :goto_0
    return-void

    :catchall_1
    move-exception p1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase$4;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->mPictureProcessLock:Lcom/samsung/android/app/galaxyraw/core2/util/FlagLock;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/util/FlagLock;->unlock()V

    throw p1

    :cond_8
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase$4;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->access$000(Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;)Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object p1

    const-string p2, "MultiPictureCallback onPictureTaken - pictureProcess is not enabled"

    invoke-static {p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    sget-object p1, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const-string p2, "%s : maker was disconnected but getting image(format %s) from onPictureTaken"

    new-array p4, p4, [Ljava/lang/Object;

    iget-object p5, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase$4;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;

    invoke-virtual {p5}, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->getMakerTag()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object p5

    aput-object p5, p4, v3

    invoke-virtual {p3}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->getFormat()I

    move-result p3

    invoke-static {p3}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils;->toImageFormatString(I)Ljava/lang/String;

    move-result-object p3

    aput-object p3, p4, v4

    invoke-static {p1, p2, p4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v3, p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest$Sequence;->errorRequest(ILjava/lang/String;)Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$ProcessingPhotoMakerBase$4$C1U5FpNK-Pgy9oHe4kVaxTnSVs4;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$ProcessingPhotoMakerBase$4$C1U5FpNK-Pgy9oHe4kVaxTnSVs4;-><init>(Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase$4;)V

    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void

    :cond_9
    :try_start_5
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase$4;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->access$000(Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;)Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object p1

    const-string p2, "MultiPictureCallback onPictureTaken - sequenceId %d is not equal with current sequence %d"

    new-array p4, p4, [Ljava/lang/Object;

    invoke-virtual {p3}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->getCaptureResult()Landroid/hardware/camera2/TotalCaptureResult;

    move-result-object p3

    invoke-virtual {p3}, Landroid/hardware/camera2/TotalCaptureResult;->getSequenceId()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p4, v3

    iget-object p3, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase$4;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;

    iget p3, p3, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->mCurrentPictureSequenceId:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p4, v4

    invoke-static {p1, p2, p4}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase$4;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->access$000(Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;)Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase$4;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;

    iget-object p2, p2, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->mPictureCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PictureCallback;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase$4;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->mCamDevice:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    invoke-static {p1, p2, v3, p0}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackHelper$PictureCallbackHelper;->onError(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PictureCallback;ILcom/samsung/android/app/galaxyraw/core2/CamDevice;)V

    monitor-exit p5

    return-void

    :catchall_2
    move-exception p0

    monitor-exit p5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p0
.end method

.method public onShutter(Ljava/lang/Long;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timeStamp"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase$4;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->mCamDevice:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase$4;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->access$000(Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;)Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object p0

    const-string p1, "onShutter error - CamDevice is already closed"

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->w(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase$4;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->access$000(Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;)Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase$4;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;

    iget-object v2, v2, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->mPictureCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PictureCallback;

    invoke-static {v1, v2, p1, v0}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackHelper$PictureCallbackHelper;->onShutter(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PictureCallback;Ljava/lang/Long;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase$4;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;

    iget-boolean p1, p1, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->mIsIPPCapturing:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase$4;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->mCurrentPictureProcessLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase$4;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->mCurrentPictureProcessSequence:Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest$Sequence;

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase$4;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->mPictureRequestBuilderMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/CamDevice;->getId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p1, v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureRequest;->get(Ljava/util/Map;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    const/4 v1, 0x0

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase$4;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->access$000(Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;)Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object p1

    const-string v2, "onShutter error - can\'t get jpeg orientation"

    invoke-static {p1, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase$4;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->mPictureRequestBuilderMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/CamDevice;->getId()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureRequest;->SCALER_FLIP_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p0, v2, v3}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureRequest;->get(Ljava/util/Map;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/CamDevice;->getCamCapability()Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getLensFacing()Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    const/high16 v1, -0x80000000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    xor-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    add-int/lit16 p0, p0, 0xb4

    rem-int/lit16 p0, p0, 0x168

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_2
    :goto_0
    return-void
.end method
