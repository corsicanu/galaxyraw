.class public final synthetic Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceBurstPicCaptureCallback$hNMu4GQUcW20j0DkmY9vQoBWBCo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceBurstPicCaptureCallback;

.field public final synthetic f$1:Landroid/hardware/camera2/TotalCaptureResult;

.field public final synthetic f$2:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureRequestInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceBurstPicCaptureCallback;Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureRequestInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceBurstPicCaptureCallback$hNMu4GQUcW20j0DkmY9vQoBWBCo;->f$0:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceBurstPicCaptureCallback;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceBurstPicCaptureCallback$hNMu4GQUcW20j0DkmY9vQoBWBCo;->f$1:Landroid/hardware/camera2/TotalCaptureResult;

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceBurstPicCaptureCallback$hNMu4GQUcW20j0DkmY9vQoBWBCo;->f$2:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureRequestInfo;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceBurstPicCaptureCallback$hNMu4GQUcW20j0DkmY9vQoBWBCo;->f$0:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceBurstPicCaptureCallback;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceBurstPicCaptureCallback$hNMu4GQUcW20j0DkmY9vQoBWBCo;->f$1:Landroid/hardware/camera2/TotalCaptureResult;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceBurstPicCaptureCallback$hNMu4GQUcW20j0DkmY9vQoBWBCo;->f$2:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureRequestInfo;

    check-cast p1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureData;

    invoke-virtual {v0, v1, p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceBurstPicCaptureCallback;->lambda$onCaptureCompleted$1$CamDeviceBurstPicCaptureCallback(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureRequestInfo;Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureData;)V

    return-void
.end method
