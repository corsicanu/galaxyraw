.class public final synthetic Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceImpl$3clHm3qyHG0OxKd9vDUvGrdZRGA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

.field public final synthetic f$1:Landroid/hardware/camera2/CameraCaptureSession;

.field public final synthetic f$2:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$SessionStateCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;Landroid/hardware/camera2/CameraCaptureSession;Lcom/samsung/android/app/galaxyraw/core2/CamDevice$SessionStateCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceImpl$3clHm3qyHG0OxKd9vDUvGrdZRGA;->f$0:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceImpl$3clHm3qyHG0OxKd9vDUvGrdZRGA;->f$1:Landroid/hardware/camera2/CameraCaptureSession;

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceImpl$3clHm3qyHG0OxKd9vDUvGrdZRGA;->f$2:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$SessionStateCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceImpl$3clHm3qyHG0OxKd9vDUvGrdZRGA;->f$0:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceImpl$3clHm3qyHG0OxKd9vDUvGrdZRGA;->f$1:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceImpl$3clHm3qyHG0OxKd9vDUvGrdZRGA;->f$2:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$SessionStateCallback;

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->lambda$prepareCreateCaptureSession$5$CamDeviceImpl(Landroid/hardware/camera2/CameraCaptureSession;Lcom/samsung/android/app/galaxyraw/core2/CamDevice$SessionStateCallback;)V

    return-void
.end method
