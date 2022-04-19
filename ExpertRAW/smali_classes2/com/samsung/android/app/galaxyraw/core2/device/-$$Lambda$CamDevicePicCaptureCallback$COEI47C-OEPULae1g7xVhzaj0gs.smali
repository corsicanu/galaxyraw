.class public final synthetic Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDevicePicCaptureCallback$COEI47C-OEPULae1g7xVhzaj0gs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/core2/device/CamDevicePicCaptureCallback;

.field public final synthetic f$1:Ljava/lang/Long;

.field public final synthetic f$2:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/core2/device/CamDevicePicCaptureCallback;Ljava/lang/Long;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDevicePicCaptureCallback$COEI47C-OEPULae1g7xVhzaj0gs;->f$0:Lcom/samsung/android/app/galaxyraw/core2/device/CamDevicePicCaptureCallback;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDevicePicCaptureCallback$COEI47C-OEPULae1g7xVhzaj0gs;->f$1:Ljava/lang/Long;

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDevicePicCaptureCallback$COEI47C-OEPULae1g7xVhzaj0gs;->f$2:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDevicePicCaptureCallback$COEI47C-OEPULae1g7xVhzaj0gs;->f$0:Lcom/samsung/android/app/galaxyraw/core2/device/CamDevicePicCaptureCallback;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDevicePicCaptureCallback$COEI47C-OEPULae1g7xVhzaj0gs;->f$1:Ljava/lang/Long;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDevicePicCaptureCallback$COEI47C-OEPULae1g7xVhzaj0gs;->f$2:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDevicePicCaptureCallback;->lambda$onCaptureProgressed$2$CamDevicePicCaptureCallback(Ljava/lang/Long;Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method
