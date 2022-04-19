.class public final synthetic Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceBurstPicCaptureCallback$JCvu9CZw6W5_JHuMG0yv_BqH-hg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceBurstPicCaptureCallback;

.field public final synthetic f$1:Landroid/hardware/camera2/CaptureResult;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceBurstPicCaptureCallback;Landroid/hardware/camera2/CaptureResult;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceBurstPicCaptureCallback$JCvu9CZw6W5_JHuMG0yv_BqH-hg;->f$0:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceBurstPicCaptureCallback;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceBurstPicCaptureCallback$JCvu9CZw6W5_JHuMG0yv_BqH-hg;->f$1:Landroid/hardware/camera2/CaptureResult;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceBurstPicCaptureCallback$JCvu9CZw6W5_JHuMG0yv_BqH-hg;->f$0:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceBurstPicCaptureCallback;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceBurstPicCaptureCallback$JCvu9CZw6W5_JHuMG0yv_BqH-hg;->f$1:Landroid/hardware/camera2/CaptureResult;

    check-cast p1, Lcom/samsung/android/app/galaxyraw/core2/CamDevice$PreviewStateCallback;

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceBurstPicCaptureCallback;->lambda$onCaptureProgressed$5$CamDeviceBurstPicCaptureCallback(Landroid/hardware/camera2/CaptureResult;Lcom/samsung/android/app/galaxyraw/core2/CamDevice$PreviewStateCallback;)V

    return-void
.end method
