.class public interface abstract Lcom/samsung/android/app/galaxyraw/core2/CamDevice$PictureCallback;
.super Ljava/lang/Object;
.source "CamDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/core2/CamDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PictureCallback"
.end annotation


# virtual methods
.method public abstract onError(Landroid/hardware/camera2/CaptureFailure;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "failure"
        }
    .end annotation
.end method

.method public abstract onPictureSequenceCompleted(IJ)V
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
.end method

.method public abstract onPictureTaken(Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;Lcom/samsung/android/app/galaxyraw/core2/CamCapability;Z)V
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
.end method

.method public abstract onShutter(Ljava/lang/Long;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timeStamp"
        }
    .end annotation
.end method
