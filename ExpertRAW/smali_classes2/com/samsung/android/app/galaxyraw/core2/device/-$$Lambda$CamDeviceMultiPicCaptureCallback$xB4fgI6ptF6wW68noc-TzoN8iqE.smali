.class public final synthetic Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceMultiPicCaptureCallback$xB4fgI6ptF6wW68noc-TzoN8iqE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceMultiPicCaptureCallback;

.field public final synthetic f$1:J

.field public final synthetic f$2:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceMultiPicCaptureCallback;JLjava/util/concurrent/CountDownLatch;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceMultiPicCaptureCallback$xB4fgI6ptF6wW68noc-TzoN8iqE;->f$0:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceMultiPicCaptureCallback;

    iput-wide p2, p0, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceMultiPicCaptureCallback$xB4fgI6ptF6wW68noc-TzoN8iqE;->f$1:J

    iput-object p4, p0, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceMultiPicCaptureCallback$xB4fgI6ptF6wW68noc-TzoN8iqE;->f$2:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceMultiPicCaptureCallback$xB4fgI6ptF6wW68noc-TzoN8iqE;->f$0:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceMultiPicCaptureCallback;

    iget-wide v1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceMultiPicCaptureCallback$xB4fgI6ptF6wW68noc-TzoN8iqE;->f$1:J

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceMultiPicCaptureCallback$xB4fgI6ptF6wW68noc-TzoN8iqE;->f$2:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0, v1, v2, p0}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceMultiPicCaptureCallback;->lambda$onCaptureStarted$4$CamDeviceMultiPicCaptureCallback(JLjava/util/concurrent/CountDownLatch;)V

    return-void
.end method
