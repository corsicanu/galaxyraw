.class public final synthetic Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceBurstPicRecordCaptureCallback$X509j5WL1XAy2tbyLqsMhhYS7R0;
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

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceBurstPicRecordCaptureCallback$X509j5WL1XAy2tbyLqsMhhYS7R0;->f$0:Landroid/hardware/camera2/CaptureFailure;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceBurstPicRecordCaptureCallback$X509j5WL1XAy2tbyLqsMhhYS7R0;->f$0:Landroid/hardware/camera2/CaptureFailure;

    check-cast p1, Lcom/samsung/android/app/galaxyraw/core2/CamDevice$RecordStateCallback;

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceBurstPicRecordCaptureCallback;->lambda$onCaptureFailed$5(Landroid/hardware/camera2/CaptureFailure;Lcom/samsung/android/app/galaxyraw/core2/CamDevice$RecordStateCallback;)V

    return-void
.end method
