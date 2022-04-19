.class public interface abstract Lcom/samsung/android/app/galaxyraw/core2/CamDevice$MultiPictureCallback;
.super Ljava/lang/Object;
.source "CamDevice.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/core2/CamDevice$PictureDepthCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/core2/CamDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MultiPictureCallback"
.end annotation


# virtual methods
.method public abstract onError(Landroid/hardware/camera2/CaptureFailure;II)V
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

.method public abstract onPictureTaken(Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;Lcom/samsung/android/app/galaxyraw/core2/CamCapability;ZII)V
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
