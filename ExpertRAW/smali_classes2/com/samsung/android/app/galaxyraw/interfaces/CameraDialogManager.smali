.class public interface abstract Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager;
.super Ljava/lang/Object;
.source "CameraDialogManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$CameraDialogListener;,
        Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;
    }
.end annotation


# virtual methods
.method public abstract checkExternalSdStorage()V
.end method

.method public abstract clear()V
.end method

.method public abstract dismissCameraDialog(Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation
.end method

.method public abstract handleLocationPermissionResult(Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation
.end method

.method public abstract initialize()V
.end method

.method public abstract isCameraDialogVisible()Z
.end method

.method public abstract isCameraDialogVisible(Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation
.end method

.method public abstract isDialogEnabled(Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation
.end method

.method public abstract registerCameraDialogListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$CameraDialogListener;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation
.end method

.method public abstract setDialogEnabled(Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "id",
            "isEnabled"
        }
    .end annotation
.end method

.method public abstract showCameraDialog(Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation
.end method

.method public abstract showCameraDialog(Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "id",
            "title",
            "message"
        }
    .end annotation
.end method

.method public abstract showImproveAccuracyDialog()V
.end method

.method public abstract showLocationTagDialog(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isLocationRequired"
        }
    .end annotation
.end method

.method public abstract showTalkBackGuide()V
.end method

.method public abstract startUpdateCheck(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "showInformationSecurityDialog"
        }
    .end annotation
.end method

.method public abstract unregisterCameraDialogListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$CameraDialogListener;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation
.end method
