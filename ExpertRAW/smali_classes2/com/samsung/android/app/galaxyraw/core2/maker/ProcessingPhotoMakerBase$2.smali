.class Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase$2;
.super Ljava/lang/Object;
.source "ProcessingPhotoMakerBase.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/core2/processor/manager/ProcessorManagerInterface$PostProcessCallback;


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

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase$2;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDraftPictureSaved(ILandroid/net/Uri;Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "sequenceId",
            "uri",
            "resultFile"
        }
    .end annotation

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase$2;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->access$000(Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;)Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase$2;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->mPictureCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PictureCallback;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase$2;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->mCamDevice:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    invoke-static {p1, v0, p2, p3, p0}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackHelper$PictureCallbackHelper;->onDraftPostProcessingPictureTaken(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PictureCallback;Landroid/net/Uri;Ljava/io/File;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V

    return-void
.end method

.method public onProcessCompleted(Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessResult;Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "processResult",
            "resultFile"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessResult<",
            "Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;",
            ">;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase$2;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->access$000(Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;)Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase$2;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->mPictureCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PictureCallback;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase$2;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->mCamDevice:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    invoke-static {p1, v0, p2, p0}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackHelper$PictureCallbackHelper;->onPostProcessingPictureTaken(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PictureCallback;Ljava/io/File;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V

    return-void
.end method

.method public onProcessError(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sequenceId"
        }
    .end annotation

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase$2;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->access$000(Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;)Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase$2;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->mPictureCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PictureCallback;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase$2;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->mCamDevice:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    invoke-static {p1, v0, p0}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackHelper$PictureCallbackHelper;->onPostProcessingError(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PictureCallback;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V

    return-void
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

.method public onRequestCollectionCompleted(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sequenceId"
        }
    .end annotation

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase$2;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->access$000(Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;)Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase$2;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->mPictureCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PictureCallback;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase$2;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->mCamDevice:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    invoke-static {p1, v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackHelper$PictureCallbackHelper;->onPostProcessingFrameCollectionCompleted(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PictureCallback;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase$2;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->mCurrentPictureProcessLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase$2;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->mCurrentPictureProcessSequence:Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest$Sequence;

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onRequestCollectionStopped(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sequenceId"
        }
    .end annotation

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase$2;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->access$000(Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;)Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase$2;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->mPictureCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PictureCallback;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase$2;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->mCamDevice:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    invoke-static {p1, v0, p0}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackHelper$PictureCallbackHelper;->onPostProcessingFrameCollectionStopped(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PictureCallback;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V

    return-void
.end method
