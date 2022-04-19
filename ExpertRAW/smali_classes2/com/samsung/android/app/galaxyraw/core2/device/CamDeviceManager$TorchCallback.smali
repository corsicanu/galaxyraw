.class public interface abstract Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceManager$TorchCallback;
.super Ljava/lang/Object;
.source "CamDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TorchCallback"
.end annotation


# virtual methods
.method public abstract onTorchModeChanged(Ljava/lang/String;Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cameraId",
            "enabled"
        }
    .end annotation
.end method

.method public abstract onTorchModeUnavailable(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cameraId"
        }
    .end annotation
.end method
