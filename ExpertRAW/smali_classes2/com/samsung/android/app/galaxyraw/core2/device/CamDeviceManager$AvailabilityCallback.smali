.class public interface abstract Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceManager$AvailabilityCallback;
.super Ljava/lang/Object;
.source "CamDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AvailabilityCallback"
.end annotation


# virtual methods
.method public abstract onCameraAccessPrioritiesChanged()V
.end method

.method public abstract onCameraAvailable(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cameraId"
        }
    .end annotation
.end method

.method public abstract onCameraUnavailable(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cameraId"
        }
    .end annotation
.end method

.method public abstract onPhysicalCameraAvailable(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cameraId",
            "physicalCameraId"
        }
    .end annotation
.end method

.method public abstract onPhysicalCameraUnavailable(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cameraId",
            "physicalCameraId"
        }
    .end annotation
.end method
