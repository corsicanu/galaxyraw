.class public final synthetic Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceMultiPicCaptureCallback$AiHOOHljJVwb7QcH4QQFuqJD74A;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceMultiPicCaptureCallback;

.field public final synthetic f$1:Landroid/hardware/camera2/CameraCaptureSession;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceMultiPicCaptureCallback;Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceMultiPicCaptureCallback$AiHOOHljJVwb7QcH4QQFuqJD74A;->f$0:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceMultiPicCaptureCallback;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceMultiPicCaptureCallback$AiHOOHljJVwb7QcH4QQFuqJD74A;->f$1:Landroid/hardware/camera2/CameraCaptureSession;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceMultiPicCaptureCallback$AiHOOHljJVwb7QcH4QQFuqJD74A;->f$0:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceMultiPicCaptureCallback;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceMultiPicCaptureCallback$AiHOOHljJVwb7QcH4QQFuqJD74A;->f$1:Landroid/hardware/camera2/CameraCaptureSession;

    check-cast p1, Landroid/util/Pair;

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceMultiPicCaptureCallback;->lambda$onCaptureProgressed$3$CamDeviceMultiPicCaptureCallback(Landroid/hardware/camera2/CameraCaptureSession;Landroid/util/Pair;)V

    return-void
.end method
