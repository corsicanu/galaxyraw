.class Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase$1;
.super Ljava/lang/Object;
.source "ProcessingPhotoMakerBase.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/core2/processor/manager/ProcessorManagerInterface$ImmediateProcessCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;
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

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase$1;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProcessCompleted(Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessResult;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "processResult"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessResult<",
            "Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessResult;->getExtraBundle()Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;->INFO_CAMCAPABILITY:Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle$Key;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;->get(Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase$1;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;

    iget-object v2, v2, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->mCamDevice:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/CamDevice;->getCamCapability()Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;->MULTI_PICTURE_DATA_EXTRA_IMAGE:Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle$Key;

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;->get(Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase$1;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;

    iget-object v4, v4, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->mCamDevicePictureCallback:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$PictureCallback;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessResult;->getData()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;

    invoke-virtual {v5}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->getImageInfo()Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->wrap(Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;)Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;

    move-result-object v2

    invoke-interface {v4, v2, v0, v1, v3}, Lcom/samsung/android/app/galaxyraw/core2/CamDevice$PictureCallback;->onPictureTaken(Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;Lcom/samsung/android/app/galaxyraw/core2/CamCapability;Z)V

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase$1;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;

    iget-object v2, v2, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->mCamDevicePictureCallback:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$PictureCallback;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessResult;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;

    invoke-interface {v2, p1, v0, v1, v3}, Lcom/samsung/android/app/galaxyraw/core2/CamDevice$PictureCallback;->onPictureTaken(Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;Lcom/samsung/android/app/galaxyraw/core2/CamCapability;Z)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase$1;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;

    iput-boolean v3, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->mIsIPPCapturing:Z

    return-void
.end method

.method public onProcessError(I)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sequenceId"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase$1;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->mCurrentPictureProcessLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase$1;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->mCurrentPictureProcessSequence:Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest$Sequence;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest$Sequence;->getId()I

    move-result v1

    const/4 v2, 0x0

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase$1;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->mCurrentPictureProcessSequence:Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest$Sequence;

    sget-object v3, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const-string v4, "%s : getting IPP onProcessError sequenceId %d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase$1;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;

    invoke-virtual {v6}, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->getMakerTag()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object v6

    aput-object v6, v5, v2

    const/4 v6, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v2, p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest$Sequence;->errorRequest(ILjava/lang/String;)Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest;

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase$1;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->mCurrentPictureProcessSequence:Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest$Sequence;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest$Sequence;->getMode()I

    move-result p1

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/NodeController;->isSupportIncompleteMerge(I)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase$1;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->access$000(Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;)Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase$1;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->mPictureCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PictureCallback;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase$1;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->mCamDevice:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    invoke-static {p1, v0, v2, v1}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackHelper$PictureCallbackHelper;->onError(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PictureCallback;ILcom/samsung/android/app/galaxyraw/core2/CamDevice;)V

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase$1;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;

    iput-boolean v2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->mIsIPPCapturing:Z

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public onProcessProgress(Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessResult;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "processResult",
            "progress"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessResult<",
            "Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;",
            ">;I)V"
        }
    .end annotation

    return-void
.end method
