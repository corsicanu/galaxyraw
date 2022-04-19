.class public final synthetic Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceRecCaptureCallback$rTalf0Hx9gDUtKWSyMzOnGCRavY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/hardware/camera2/CaptureFailure;


# direct methods
.method public synthetic constructor <init>(Landroid/hardware/camera2/CaptureFailure;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceRecCaptureCallback$rTalf0Hx9gDUtKWSyMzOnGCRavY;->f$0:Landroid/hardware/camera2/CaptureFailure;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceRecCaptureCallback$rTalf0Hx9gDUtKWSyMzOnGCRavY;->f$0:Landroid/hardware/camera2/CaptureFailure;

    check-cast p1, Lcom/samsung/android/app/galaxyraw/core2/CamDevice$RecordStateCallback;

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRecCaptureCallback;->lambda$onCaptureFailed$2(Landroid/hardware/camera2/CaptureFailure;Lcom/samsung/android/app/galaxyraw/core2/CamDevice$RecordStateCallback;)V

    return-void
.end method
