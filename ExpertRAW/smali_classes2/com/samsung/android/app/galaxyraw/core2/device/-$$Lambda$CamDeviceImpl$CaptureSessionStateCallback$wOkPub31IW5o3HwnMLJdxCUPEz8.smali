.class public final synthetic Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceImpl$CaptureSessionStateCallback$wOkPub31IW5o3HwnMLJdxCUPEz8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl$CaptureSessionStateCallback;

.field public final synthetic f$1:Landroid/hardware/camera2/CameraCaptureSession;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl$CaptureSessionStateCallback;Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceImpl$CaptureSessionStateCallback$wOkPub31IW5o3HwnMLJdxCUPEz8;->f$0:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl$CaptureSessionStateCallback;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceImpl$CaptureSessionStateCallback$wOkPub31IW5o3HwnMLJdxCUPEz8;->f$1:Landroid/hardware/camera2/CameraCaptureSession;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceImpl$CaptureSessionStateCallback$wOkPub31IW5o3HwnMLJdxCUPEz8;->f$0:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl$CaptureSessionStateCallback;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceImpl$CaptureSessionStateCallback$wOkPub31IW5o3HwnMLJdxCUPEz8;->f$1:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl$CaptureSessionStateCallback;->lambda$onConfigureFailed$1$CamDeviceImpl$CaptureSessionStateCallback(Landroid/hardware/camera2/CameraCaptureSession;)V

    return-void
.end method
