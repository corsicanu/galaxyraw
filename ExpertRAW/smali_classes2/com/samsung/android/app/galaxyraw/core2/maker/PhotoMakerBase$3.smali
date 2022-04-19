.class Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$3;
.super Ljava/lang/Object;
.source "PhotoMakerBase.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/core2/CamDevice$PictureCallback;


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

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$3;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/hardware/camera2/CaptureFailure;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "failure"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$3;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$3;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mPictureCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PictureCallback;

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureFailure;->getReason()I

    move-result p1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$3;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mCamDevice:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    invoke-static {v0, v1, p1, p0}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackHelper$PictureCallbackHelper;->onError(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PictureCallback;ILcom/samsung/android/app/galaxyraw/core2/CamDevice;)V

    return-void
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

.method public onPictureTaken(Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;Lcom/samsung/android/app/galaxyraw/core2/CamCapability;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "pictureData",
            "extraBundle",
            "camCapability",
            "hasThumbnailImage"
        }
    .end annotation

    if-nez p4, :cond_0

    iget-object p3, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$3;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    invoke-virtual {p3, p1}, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->sendJpegThumbnail(Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;)V

    :cond_0
    iget-object p3, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$3;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    iget-object p3, p3, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    iget-object p4, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$3;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    iget-object p4, p4, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mPictureCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PictureCallback;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$3;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mCamDevice:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    invoke-static {p3, p4, p1, p2, p0}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackHelper$PictureCallbackHelper;->onPictureTaken(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PictureCallback;Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V

    return-void
.end method

.method public onShutter(Ljava/lang/Long;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timeStamp"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$3;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$3;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mPictureCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PictureCallback;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$3;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mCamDevice:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    invoke-static {v0, v1, p1, p0}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackHelper$PictureCallbackHelper;->onShutter(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PictureCallback;Ljava/lang/Long;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V

    return-void
.end method
