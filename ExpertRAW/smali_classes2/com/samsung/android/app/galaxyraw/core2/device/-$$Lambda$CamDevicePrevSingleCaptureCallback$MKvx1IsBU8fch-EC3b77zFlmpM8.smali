.class public final synthetic Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDevicePrevSingleCaptureCallback$MKvx1IsBU8fch-EC3b77zFlmpM8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/core2/device/CamDevicePrevSingleCaptureCallback;

.field public final synthetic f$1:Landroid/hardware/camera2/TotalCaptureResult;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/core2/device/CamDevicePrevSingleCaptureCallback;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDevicePrevSingleCaptureCallback$MKvx1IsBU8fch-EC3b77zFlmpM8;->f$0:Lcom/samsung/android/app/galaxyraw/core2/device/CamDevicePrevSingleCaptureCallback;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDevicePrevSingleCaptureCallback$MKvx1IsBU8fch-EC3b77zFlmpM8;->f$1:Landroid/hardware/camera2/TotalCaptureResult;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDevicePrevSingleCaptureCallback$MKvx1IsBU8fch-EC3b77zFlmpM8;->f$0:Lcom/samsung/android/app/galaxyraw/core2/device/CamDevicePrevSingleCaptureCallback;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDevicePrevSingleCaptureCallback$MKvx1IsBU8fch-EC3b77zFlmpM8;->f$1:Landroid/hardware/camera2/TotalCaptureResult;

    check-cast p1, Lcom/samsung/android/app/galaxyraw/core2/CamDevice$PreviewStateCallback;

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDevicePrevSingleCaptureCallback;->lambda$onCaptureCompleted$0$CamDevicePrevSingleCaptureCallback(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/app/galaxyraw/core2/CamDevice$PreviewStateCallback;)V

    return-void
.end method
