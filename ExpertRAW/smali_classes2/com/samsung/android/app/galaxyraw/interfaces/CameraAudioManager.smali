.class public interface abstract Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager;
.super Ljava/lang/Object;
.source "CameraAudioManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager$ExternalAudioInputDeviceInfoUpdateListener;,
        Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager$AudioInputLevelUpdateListener;,
        Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager$SoundId;
    }
.end annotation


# virtual methods
.method public abstract abandonAudioFocus()V
.end method

.method public abstract disableSystemSound()V
.end method

.method public abstract enableMultiMicZoomFocus(ZI)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "enable",
            "zoomValue"
        }
    .end annotation
.end method

.method public abstract enableSystemSound()V
.end method

.method public abstract initialize()V
.end method

.method public abstract isInputLevelMonitorRunning()Z
.end method

.method public abstract isMultiMicZoomFocusEnabled()Z
.end method

.method public abstract playSound(Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager$SoundId;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "id",
            "loop"
        }
    .end annotation
.end method

.method public abstract prepareMultiMicController(ILandroid/util/Range;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "orientation",
            "zoomValue"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract releaseMultiMicZoomFocus()V
.end method

.method public abstract releaseSoundPool()V
.end method

.method public abstract requestAudioFocus()V
.end method

.method public abstract setAudioInputLevelUpdateListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager$AudioInputLevelUpdateListener;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation
.end method

.method public abstract setExternalAudioInputDeviceInfoUpdateListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager$ExternalAudioInputDeviceInfoUpdateListener;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation
.end method

.method public abstract setMediaRecorder(Landroid/media/MediaRecorder;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mediaRecorder"
        }
    .end annotation
.end method

.method public abstract setMultiMicZoomValue(F)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "zoomRatio"
        }
    .end annotation
.end method

.method public abstract startLevelMonitor()V
.end method

.method public abstract stop()V
.end method

.method public abstract stopLevelMonitor()V
.end method

.method public abstract stopSound(Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager$SoundId;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation
.end method
