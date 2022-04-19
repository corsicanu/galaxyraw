.class public interface abstract Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;
.super Ljava/lang/Object;
.source "CameraContext.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/interfaces/ActivityContext;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$ViewerMode;,
        Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$RequestedMediaRecorderProfile;,
        Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$HapticPattern;,
        Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$PictureSavingEventListener;,
        Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$LowMemoryListener;,
        Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$LatestMedia;,
        Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$HrmShutterListener;,
        Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$FaceDetectionListener;,
        Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$AttachMode;,
        Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;
    }
.end annotation


# static fields
.field public static final INSIDE_POCKET_FINISH_CAMERA_MSG:I = 0x64


# virtual methods
.method public abstract changeExtraPreviewSurfaceSize()V
.end method

.method public abstract changeShootingMode(IZ)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "shootingModeId",
            "isFacingSwitch"
        }
    .end annotation
.end method

.method public abstract finishOnError(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "error"
        }
    .end annotation
.end method

.method public abstract getAttachModeManager()Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$AttachMode;
.end method

.method public abstract getBackgroundHandler()Landroid/os/Handler;
.end method

.method public abstract getBrightnessValue()F
.end method

.method public abstract getCameraAudioManager()Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager;
.end method

.method public abstract getCameraDialogManager()Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager;
.end method

.method public abstract getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;
.end method

.method public abstract getCommandReceiver()Lcom/samsung/android/app/galaxyraw/interfaces/CommandInterface;
.end method

.method public abstract getCurrentWindowHeight()I
.end method

.method public abstract getCurrentWindowWidth()I
.end method

.method public abstract getLatestMedia()Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$LatestMedia;
.end method

.method public abstract getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;
.end method

.method public abstract getMainHandler()Landroid/os/Handler;
.end method

.method public abstract getPlugInFilterManager()Lcom/samsung/android/app/galaxyraw/interfaces/PlugInFilterManager;
.end method

.method public abstract getPreviewManager()Lcom/samsung/android/app/galaxyraw/interfaces/PreviewLayoutManager;
.end method

.method public abstract getShootingModeFeature()Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;
.end method

.method public abstract getUriListInSecureCamera()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getViewerFragment()Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;
.end method

.method public abstract handleSmartScanCaptureEvent(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputType"
        }
    .end annotation
.end method

.method public abstract isAngleChangeSupported()Z
.end method

.method public abstract isAttachFragmentVisible()Z
.end method

.method public abstract isCaptureAvailable()Z
.end method

.method public abstract isCapturing()Z
.end method

.method public abstract isFilterSupported()Z
.end method

.method public abstract isGalleryActivityLaunching()Z
.end method

.method public abstract isInLockTaskMode()Z
.end method

.method public abstract isLayerInitialized()Z
.end method

.method public abstract isRawCaptureEnabled()Z
.end method

.method public abstract isRecording()Z
.end method

.method public abstract isRecordingAvailable(Z)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isRecordKeyPressed"
        }
    .end annotation
.end method

.method public abstract isSeamlessZoomAvailable(I)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "facing"
        }
    .end annotation
.end method

.method public abstract isSensorCropEnabled()Z
.end method

.method public abstract isSettingActivityLaunching()Z
.end method

.method public abstract isShootingModeActivated()Z
.end method

.method public abstract isTouchEvSupported()Z
.end method

.method public abstract isTrackingAfAvailable()Z
.end method

.method public abstract isViewerFragmentVisible()Z
.end method

.method public abstract isZoomAvailable()Z
.end method

.method public abstract isZoomSupported()Z
.end method

.method public abstract launchGallery(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activityAnimation"
        }
    .end annotation
.end method

.method public abstract playHaptic(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$HapticPattern;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pattern"
        }
    .end annotation
.end method

.method public abstract registerFaceDetectionListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$FaceDetectionListener;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation
.end method

.method public abstract registerHrmShutterListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$HrmShutterListener;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation
.end method

.method public abstract registerLowMemoryListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$LowMemoryListener;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation
.end method

.method public abstract requestHighAccuracyLocationMode()V
.end method

.method public abstract restartInactivityTimer()V
.end method

.method public abstract setPictureSavingEventListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$PictureSavingEventListener;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation
.end method

.method public abstract startViewerFragment()V
.end method

.method public abstract startVoiceRecognizer()V
.end method

.method public abstract stopInactivityTimer()V
.end method

.method public abstract stopVoiceRecognizer()V
.end method

.method public abstract unregisterFaceDetectionListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$FaceDetectionListener;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation
.end method

.method public abstract unregisterHrmShutterListener()V
.end method

.method public abstract unregisterLowMemoryListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$LowMemoryListener;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation
.end method

.method public abstract updateLatestMedia()V
.end method

.method public abstract updateSecureUriList()V
.end method

.method public abstract updateThumbnail()V
.end method
