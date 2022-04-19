.class public final synthetic Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceBurstPicCaptureCallback$dZ25iwxSJuQysL-SlNqFYJuksLQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceBurstPicCaptureCallback;

.field public final synthetic f$1:Landroid/hardware/camera2/CaptureFailure;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceBurstPicCaptureCallback;Landroid/hardware/camera2/CaptureFailure;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceBurstPicCaptureCallback$dZ25iwxSJuQysL-SlNqFYJuksLQ;->f$0:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceBurstPicCaptureCallback;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceBurstPicCaptureCallback$dZ25iwxSJuQysL-SlNqFYJuksLQ;->f$1:Landroid/hardware/camera2/CaptureFailure;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceBurstPicCaptureCallback$dZ25iwxSJuQysL-SlNqFYJuksLQ;->f$0:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceBurstPicCaptureCallback;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceBurstPicCaptureCallback$dZ25iwxSJuQysL-SlNqFYJuksLQ;->f$1:Landroid/hardware/camera2/CaptureFailure;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceBurstPicCaptureCallback;->lambda$onCaptureFailed$3$CamDeviceBurstPicCaptureCallback(Landroid/hardware/camera2/CaptureFailure;)V

    return-void
.end method
