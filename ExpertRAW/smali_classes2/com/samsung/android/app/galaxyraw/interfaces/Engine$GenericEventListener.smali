.class public interface abstract Lcom/samsung/android/app/galaxyraw/interfaces/Engine$GenericEventListener;
.super Ljava/lang/Object;
.source "Engine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/interfaces/Engine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "GenericEventListener"
.end annotation


# virtual methods
.method public abstract onBrightnessValueChanged(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "brightnessValue"
        }
    .end annotation
.end method

.method public abstract onChangeShootingModeCompleted(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isFacingSwitch"
        }
    .end annotation
.end method

.method public abstract onFaceDetection([Landroid/graphics/Rect;Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "faceRects",
            "skipUpdate"
        }
    .end annotation
.end method

.method public abstract onPictureProcessingCompleted()V
.end method

.method public abstract onPictureProcessingStarted()V
.end method

.method public abstract onPictureSaved(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ContentData;Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "contentData",
            "skipReview"
        }
    .end annotation
.end method

.method public abstract onPictureSavingFailed()V
.end method

.method public abstract onProcessingFrameProgress(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "progress"
        }
    .end annotation
.end method

.method public abstract onStartPreviewCompleted()V
.end method

.method public abstract onStartPreviewRequested()V
.end method

.method public abstract onSwitchCameraPrepared(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cameraId"
        }
    .end annotation
.end method

.method public abstract onThumbnailTaken(Landroid/graphics/Bitmap;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "thumbnail",
            "orientation"
        }
    .end annotation
.end method

.method public abstract onVideoRecordingFinished()V
.end method

.method public abstract onVideoRecordingPaused()V
.end method

.method public abstract onVideoRecordingPrepared()V
.end method

.method public abstract onVideoRecordingResumed()V
.end method

.method public abstract onVideoRecordingStarted()V
.end method

.method public abstract onVideoSaved(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ContentData;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "contentData"
        }
    .end annotation
.end method
