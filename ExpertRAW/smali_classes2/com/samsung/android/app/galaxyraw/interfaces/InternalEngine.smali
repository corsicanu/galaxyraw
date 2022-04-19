.class public interface abstract Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;
.super Ljava/lang/Object;
.source "InternalEngine.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/interfaces/Engine;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$RequestEventListener;,
        Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$RecordingEventListener;,
        Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$MakerPublicSettingsUpdater;,
        Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$AfInfoListener;,
        Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$TakePictureType;,
        Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$PictureSavingType;,
        Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$AeAfTriggerState;
    }
.end annotation


# virtual methods
.method public abstract changeAePrecaptureTriggerState(Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$AeAfTriggerState;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newState"
        }
    .end annotation
.end method

.method public abstract changeAfTriggerState(Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$AeAfTriggerState;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newState"
        }
    .end annotation
.end method

.method public abstract changeCaptureState(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newCaptureState"
        }
    .end annotation
.end method

.method public abstract changeState(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newState"
        }
    .end annotation
.end method

.method public abstract clearApplySettingsSequenceId()V
.end method

.method public abstract countDownPictureLatch()V
.end method

.method public abstract createEffectProcessor(ILandroid/os/Handler;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "effectProcessorMode",
            "handler"
        }
    .end annotation
.end method

.method public abstract createMultiCameraEffectProcessor(ILandroid/os/Handler;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "effectMode",
            "handler"
        }
    .end annotation
.end method

.method public abstract createNewOutputFilePath(Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$PictureSavingType;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation
.end method

.method public abstract destroyEffectProcessor()V
.end method

.method public abstract destroyMultiCameraEffectProcessor()V
.end method

.method public abstract getAgifBurstCaptureThumbnailCallback()Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$ThumbnailCallback;
.end method

.method public abstract getBrightnessValueForCapture()I
.end method

.method public abstract getBurstCaptureSoundId()Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager$SoundId;
.end method

.method public abstract getBurstCaptureThumbnailCallback()Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$ThumbnailCallback;
.end method

.method public abstract getCameraContext()Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;
.end method

.method public abstract getCaptureEventListeners()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureEventListener;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCurrentCaptureState()Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;
.end method

.method public abstract getCurrentPreviewSurface(I)Landroid/view/Surface;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "singleCameraId"
        }
    .end annotation
.end method

.method public abstract getCurrentState()Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;
.end method

.method public abstract getCurrentTakePictureType()Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$TakePictureType;
.end method

.method public abstract getDummyRecordingSurface(ILcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Landroid/view/Surface;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cameraId",
            "resolution"
        }
    .end annotation
.end method

.method public abstract getExtraPreviewSurface()Landroid/view/Surface;
.end method

.method public abstract getGenericEventListener()Lcom/samsung/android/app/galaxyraw/interfaces/Engine$GenericEventListener;
.end method

.method public abstract getLightConditionForCapture()I
.end method

.method public abstract getMakerEventListener()Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerEventListener;
.end method

.method public abstract getMediaRecorder()Landroid/media/MediaRecorder;
.end method

.method public abstract getMediaRecorderList()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/media/MediaRecorder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMultiCameraPreviewSurface(I)Landroid/view/Surface;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cameraId"
        }
    .end annotation
.end method

.method public abstract getNewOutputFilePath()Ljava/lang/String;
.end method

.method public abstract getOrientationForCapture()I
.end method

.method public abstract getRecordingEventListener()Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$RecordingEventListener;
.end method

.method public abstract getRequestEventListener()Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$RequestEventListener;
.end method

.method public abstract getScalerCropRegion()Landroid/graphics/Rect;
.end method

.method public abstract getScalerCropRegion(II)Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cameraId",
            "level"
        }
    .end annotation
.end method

.method public abstract getThumbnailCallback()Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$ThumbnailCallback;
.end method

.method public abstract handleCamAccessException(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "errorReason"
        }
    .end annotation
.end method

.method public abstract handleCameraError(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "error"
        }
    .end annotation
.end method

.method public abstract handlePreviewSnapShotError()V
.end method

.method public abstract handleTakePictureStopped()V
.end method

.method public abstract isAutoFlashRequired()Z
.end method

.method public abstract isAutoFocusTriggerRequired()Z
.end method

.method public abstract isCancelAfRequiredAfterTakingPicture()Z
.end method

.method public abstract isDraftPictureSaved()Z
.end method

.method public abstract isEffectProcessorRequired()Z
.end method

.method public abstract isExtraPreviewSurfaceCreated()Z
.end method

.method public abstract isHeifCaptureEnabled()Z
.end method

.method public abstract isLastSettingsApplied()Z
.end method

.method public abstract isLongTakePicture()Z
.end method

.method public abstract isManualExposure()Z
.end method

.method public abstract isMotionPhotoAudioRecordingEnabled()Z
.end method

.method public abstract isNightScreenFlashAvailable()Z
.end method

.method public abstract isPalmDetectionAvailable()Z
.end method

.method public abstract isPreviewSurfaceCreated()Z
.end method

.method public abstract isScreenFlashAvailable()Z
.end method

.method public abstract isTorchFlashEnabled()Z
.end method

.method public abstract notifyChangeShootingModeCompleted()V
.end method

.method public abstract notifyStartVideoRecordingPrepared()V
.end method

.method public abstract notifySwitchCameraPrepared()V
.end method

.method public abstract postToUiThread(Ljava/lang/Runnable;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "runnable"
        }
    .end annotation
.end method

.method public abstract setAeModeByFlashSetting(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation
.end method

.method public abstract setScalerCropRegion(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "level"
        }
    .end annotation
.end method

.method public abstract setTorchFlashEnabled(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract startEffectProcessor()V
.end method

.method public abstract startMultiCameraEffectProcessor()V
.end method

.method public abstract startNightScreenFlash()V
.end method

.method public abstract startScreenFlash()V
.end method

.method public abstract startTransientCaptureStopTimer()V
.end method

.method public abstract switchMultiCameraFacingInternal()V
.end method

.method public abstract takeEffectPreviewSnapshot()V
.end method

.method public abstract takePreviewSurfaceSnapshot()V
.end method

.method public abstract waitAeAfTriggerStateChanged()V
.end method
