.class Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$1;
.super Ljava/lang/Object;
.source "PhotoMakerBase.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/core2/CamDevice$BurstPictureCallback;


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

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$1;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBurstPictureTaken(Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;Lcom/samsung/android/app/galaxyraw/core2/CamCapability;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "pictureData",
            "camCapability",
            "hasThumbnailImage"
        }
    .end annotation

    if-nez p3, :cond_0

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$1;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    invoke-virtual {p2, p1}, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->sendJpegThumbnail(Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;)V

    :cond_0
    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$1;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    iget-object p2, p2, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    iget-object p3, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$1;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    iget-object p3, p3, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mBurstPictureCallback:Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferCallbackForwarder$BurstPictureBufferCallbackForwarder;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$1;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mCamDevice:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    invoke-static {p2, p3, p1, p0}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackHelper$BurstPictureCallbackHelper;->onBurstPictureTaken(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferCallbackForwarder$BurstPictureBufferCallbackForwarder;Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V

    return-void
.end method

.method public onBurstRequestApplied(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sequenceId"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$1;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$1;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mBurstPictureCallback:Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferCallbackForwarder$BurstPictureBufferCallbackForwarder;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$1;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mCamDevice:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    invoke-static {v0, v1, p1, p0}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackHelper$BurstPictureCallbackHelper;->onBurstPictureStarted(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferCallbackForwarder$BurstPictureBufferCallbackForwarder;ILcom/samsung/android/app/galaxyraw/core2/CamDevice;)V

    return-void
.end method

.method public onBurstRequestError(Landroid/hardware/camera2/CaptureFailure;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "failure"
        }
    .end annotation

    return-void
.end method

.method public onBurstRequestRemoved(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sequenceId"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$1;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$1;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mBurstPictureCallback:Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferCallbackForwarder$BurstPictureBufferCallbackForwarder;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$1;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mCamDevice:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    invoke-static {v0, v1, p1, p0}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackHelper$BurstPictureCallbackHelper;->onBurstPictureCompleted(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferCallbackForwarder$BurstPictureBufferCallbackForwarder;ILcom/samsung/android/app/galaxyraw/core2/CamDevice;)V

    return-void
.end method
