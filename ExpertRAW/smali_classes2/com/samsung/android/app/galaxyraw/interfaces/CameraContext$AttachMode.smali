.class public interface abstract Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$AttachMode;
.super Ljava/lang/Object;
.source "CameraContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AttachMode"
.end annotation


# virtual methods
.method public abstract getRequestedMediaRecorderProfile()Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$RequestedMediaRecorderProfile;
.end method

.method public abstract getRequestedRecordingDurationLimit()I
.end method

.method public abstract getRequestedRecordingSizeLimit()J
.end method

.method public abstract getRequestedSaveUri()Landroid/net/Uri;
.end method

.method public abstract isLocationPermissionGranted()Z
.end method

.method public abstract isVideoResolutionRequested()Z
.end method

.method public abstract isVideoSavedOnRequestedUri()Z
.end method

.method public abstract setVideoSavedOnRequestedUri(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isVideoSavedOnRequestedUri"
        }
    .end annotation
.end method
