.class public final synthetic Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceImpl$6IoJBPlNb4GXZqSp2o8BxPEuoTY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

.field public final synthetic f$1:Landroid/hardware/camera2/CameraCaptureSession;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceImpl$6IoJBPlNb4GXZqSp2o8BxPEuoTY;->f$0:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceImpl$6IoJBPlNb4GXZqSp2o8BxPEuoTY;->f$1:Landroid/hardware/camera2/CameraCaptureSession;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceImpl$6IoJBPlNb4GXZqSp2o8BxPEuoTY;->f$0:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceImpl$6IoJBPlNb4GXZqSp2o8BxPEuoTY;->f$1:Landroid/hardware/camera2/CameraCaptureSession;

    check-cast p1, Lcom/samsung/android/app/galaxyraw/core2/CamDevice$SessionStateCallback;

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->lambda$prepareCreateCaptureSession$6$CamDeviceImpl(Landroid/hardware/camera2/CameraCaptureSession;Lcom/samsung/android/app/galaxyraw/core2/CamDevice$SessionStateCallback;)V

    return-void
.end method
