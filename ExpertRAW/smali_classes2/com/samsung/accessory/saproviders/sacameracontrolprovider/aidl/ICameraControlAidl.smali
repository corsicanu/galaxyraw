.class public interface abstract Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidl;
.super Ljava/lang/Object;
.source "ICameraControlAidl.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidl$Stub;
    }
.end annotation


# static fields
.field public static final ACTION:Ljava/lang/String; = "com.samsung.accessory.saproviders.sacameracontrolprovider.aidl"

.field public static final API_VERSION_1:I = 0x4

.field public static final ERROR_MSG_ANGLE_CHAGNE_NOT_AVAILABLE:Ljava/lang/String; = "angle_change_not_available"

.field public static final ERROR_MSG_CAPTURE_NOT_AVAILABLE:Ljava/lang/String; = "capture_not_available"

.field public static final ERROR_MSG_CAPTURING:Ljava/lang/String; = "capturing"

.field public static final ERROR_MSG_CHANGING_SHOOTING_MODE_NOT_AVAILABLE:Ljava/lang/String; = "changing_shooting_mode_not_available"

.field public static final ERROR_MSG_RECORDING_IS_NOT_IN_PROGRESS:Ljava/lang/String; = "recording_is_not_in_progress"

.field public static final ERROR_MSG_RECORDING_NOT_AVAILABLE:Ljava/lang/String; = "recording_not_available"

.field public static final ERROR_MSG_SWITCHING_FACING_NOT_AVAILABLE:Ljava/lang/String; = "changing_camera_facing_not_available"

.field public static final ERROR_MSG_TIMER_IS_NOT_RUNNING:Ljava/lang/String; = "timer_is_not_running"

.field public static final ERROR_MSG_UPDATING_THUMBNAIL:Ljava/lang/String; = "thumbnail_error_occurred"

.field public static final ERROR_MSG_ZOOM_NOT_AVAILABLE:Ljava/lang/String; = "zoom_not_available"

.field public static final JSON_VALUE_KEY_API_VERSION:Ljava/lang/String; = "apiVersion"

.field public static final JSON_VALUE_KEY_CALL_STATUS:Ljava/lang/String; = "callStatus"

.field public static final JSON_VALUE_KEY_CAMERA_SETTING_STATUS:Ljava/lang/String; = "cameraSettingStatus"

.field public static final JSON_VALUE_KEY_CAMERA_VERSION:Ljava/lang/String; = "cameraVersion"

.field public static final JSON_VALUE_KEY_CAPTURE_TIME:Ljava/lang/String; = "dynamicShotCaptureDuration"

.field public static final JSON_VALUE_KEY_FLASH_STATE:Ljava/lang/String; = "flashState"

.field public static final JSON_VALUE_KEY_HOLD_SHOT_TYPE:Ljava/lang/String; = "holdShotType"

.field public static final JSON_VALUE_KEY_IS_RECORDING_MODE:Ljava/lang/String; = "isRecordingMode"

.field public static final JSON_VALUE_KEY_IS_STORAGE_AVAILABLE:Ljava/lang/String; = "isStorageAvailable"

.field public static final JSON_VALUE_KEY_IS_SUPPORTED:Ljava/lang/String; = "isSupported"

.field public static final JSON_VALUE_KEY_LENS_STATE:Ljava/lang/String; = "lensState"

.field public static final JSON_VALUE_KEY_MODE_NAME:Ljava/lang/String; = "modeName"

.field public static final JSON_VALUE_KEY_ORIENTATION:Ljava/lang/String; = "orientation"

.field public static final JSON_VALUE_KEY_PREVIEW_HEIGHT:Ljava/lang/String; = "previewHeight"

.field public static final JSON_VALUE_KEY_PREVIEW_WIDTH:Ljava/lang/String; = "previewWidth"

.field public static final JSON_VALUE_KEY_RECORDING_SNAPSHOT_AVAILABLE:Ljava/lang/String; = "isRecordingSnapshotAvailable"

.field public static final JSON_VALUE_KEY_RECORDING_TIME:Ljava/lang/String; = "recordingTime"

.field public static final JSON_VALUE_KEY_TIMER_STATE:Ljava/lang/String; = "timerState"

.field public static final JSON_VALUE_KEY_TIMESTAMP:Ljava/lang/String; = "timestamp"

.field public static final JSON_VALUE_KEY_ZOOM_LENS_NAME:Ljava/lang/String; = "lensName"

.field public static final JSON_VALUE_KEY_ZOOM_LEVEL:Ljava/lang/String; = "zoomLevel"

.field public static final JSON_VALUE_KEY_ZOOM_LIST:Ljava/lang/String; = "zoomList"

.field public static final JSON_VALUE_KEY_ZOOM_MAX:Ljava/lang/String; = "zoomMax"

.field public static final JSON_VALUE_KEY_ZOOM_MIN:Ljava/lang/String; = "zoomMin"

.field public static final JSON_VALUE_KEY_ZOOM_STEP:Ljava/lang/String; = "zoomStep"


# virtual methods
.method public abstract getVersion()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract isSupportWatchApi(I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onBurstModeStart()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onBurstModeStop(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onCameraStarted(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onCameraTerminated()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onCancelCapture()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onCancelTimer()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onCompleteQuickTakeRecording()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onError(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onPauseRecording()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onPictureTaken(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onPictureTakenCount(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onPresentationInitialized()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onResumeRecording()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onSetCameraState(Ljava/lang/String;II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onSetCurrentStates(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onSetDisplayRotation(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onSetFlashState(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onSetLensState(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onSetOrientationState(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onSetPreviewState(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onSetSpecificStates(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onSetSupported(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onSetTimerState(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onSetZoomLevel(D)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onSetZoomRange(DDD)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onStartCapture()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onStartQuickTakeRecording()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onStartRecording()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onStopCapture()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onStopRecording(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onTimerStart()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onUpdateThumbnail(Landroid/graphics/Bitmap;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onUpdateThumbnail2(Landroid/graphics/Bitmap;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract registerCallback(Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidlCallback;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unregisterCallback(Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidlCallback;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
