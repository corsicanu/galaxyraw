.class final Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceManager$TorchCallbackBridge;
.super Landroid/hardware/camera2/CameraManager$TorchCallback;
.source "CamDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TorchCallbackBridge"
.end annotation


# instance fields
.field private final mTarget:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceManager$TorchCallback;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceManager$TorchCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$TorchCallback;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceManager$TorchCallbackBridge;->mTarget:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceManager$TorchCallback;

    return-void
.end method


# virtual methods
.method public onTorchModeChanged(Ljava/lang/String;Z)V
    .locals 0
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

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceManager$TorchCallbackBridge;->mTarget:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceManager$TorchCallback;

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceManager$TorchCallback;->onTorchModeChanged(Ljava/lang/String;Z)V

    return-void
.end method

.method public onTorchModeUnavailable(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cameraId"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceManager$TorchCallbackBridge;->mTarget:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceManager$TorchCallback;

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceManager$TorchCallback;->onTorchModeUnavailable(Ljava/lang/String;)V

    return-void
.end method
