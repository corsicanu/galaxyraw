.class public final synthetic Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDevicePrevSingleCaptureCallback$TBYvR2I0ZAZxEWIl6Kn3khTe4i8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/core2/device/CamDevicePrevSingleCaptureCallback;

.field public final synthetic f$1:Landroid/hardware/camera2/CaptureResult;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/core2/device/CamDevicePrevSingleCaptureCallback;Landroid/hardware/camera2/CaptureResult;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDevicePrevSingleCaptureCallback$TBYvR2I0ZAZxEWIl6Kn3khTe4i8;->f$0:Lcom/samsung/android/app/galaxyraw/core2/device/CamDevicePrevSingleCaptureCallback;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDevicePrevSingleCaptureCallback$TBYvR2I0ZAZxEWIl6Kn3khTe4i8;->f$1:Landroid/hardware/camera2/CaptureResult;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDevicePrevSingleCaptureCallback$TBYvR2I0ZAZxEWIl6Kn3khTe4i8;->f$0:Lcom/samsung/android/app/galaxyraw/core2/device/CamDevicePrevSingleCaptureCallback;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDevicePrevSingleCaptureCallback$TBYvR2I0ZAZxEWIl6Kn3khTe4i8;->f$1:Landroid/hardware/camera2/CaptureResult;

    check-cast p1, Lcom/samsung/android/app/galaxyraw/core2/CamDevice$PreviewStateCallback;

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDevicePrevSingleCaptureCallback;->lambda$onCaptureProgressed$2$CamDevicePrevSingleCaptureCallback(Landroid/hardware/camera2/CaptureResult;Lcom/samsung/android/app/galaxyraw/core2/CamDevice$PreviewStateCallback;)V

    return-void
.end method
