.class final Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceManager$AvailabilityCallbackBridge;
.super Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
.source "CamDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AvailabilityCallbackBridge"
.end annotation


# instance fields
.field private final mTarget:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceManager$AvailabilityCallback;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceManager$AvailabilityCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceManager$AvailabilityCallbackBridge;->mTarget:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceManager$AvailabilityCallback;

    return-void
.end method


# virtual methods
.method public onCameraAccessPrioritiesChanged()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceManager$AvailabilityCallbackBridge;->mTarget:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceManager$AvailabilityCallback;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceManager$AvailabilityCallback;->onCameraAccessPrioritiesChanged()V

    return-void
.end method

.method public onCameraAvailable(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cameraId"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceManager$AvailabilityCallbackBridge;->mTarget:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceManager$AvailabilityCallback;

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceManager$AvailabilityCallback;->onCameraAvailable(Ljava/lang/String;)V

    return-void
.end method

.method public onCameraUnavailable(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cameraId"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceManager$AvailabilityCallbackBridge;->mTarget:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceManager$AvailabilityCallback;

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceManager$AvailabilityCallback;->onCameraUnavailable(Ljava/lang/String;)V

    return-void
.end method

.method public onPhysicalCameraAvailable(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
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

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceManager$AvailabilityCallbackBridge;->mTarget:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceManager$AvailabilityCallback;

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceManager$AvailabilityCallback;->onPhysicalCameraAvailable(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPhysicalCameraUnavailable(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
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

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceManager$AvailabilityCallbackBridge;->mTarget:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceManager$AvailabilityCallback;

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceManager$AvailabilityCallback;->onPhysicalCameraUnavailable(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
