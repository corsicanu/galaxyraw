.class public final synthetic Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDevicePicCaptureCallback$0NqKV4nVjj709utKISa-vJ6ki2s;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/core2/device/CamDevicePicCaptureCallback;

.field public final synthetic f$1:J

.field public final synthetic f$2:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/core2/device/CamDevicePicCaptureCallback;JLjava/util/concurrent/CountDownLatch;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDevicePicCaptureCallback$0NqKV4nVjj709utKISa-vJ6ki2s;->f$0:Lcom/samsung/android/app/galaxyraw/core2/device/CamDevicePicCaptureCallback;

    iput-wide p2, p0, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDevicePicCaptureCallback$0NqKV4nVjj709utKISa-vJ6ki2s;->f$1:J

    iput-object p4, p0, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDevicePicCaptureCallback$0NqKV4nVjj709utKISa-vJ6ki2s;->f$2:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDevicePicCaptureCallback$0NqKV4nVjj709utKISa-vJ6ki2s;->f$0:Lcom/samsung/android/app/galaxyraw/core2/device/CamDevicePicCaptureCallback;

    iget-wide v1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDevicePicCaptureCallback$0NqKV4nVjj709utKISa-vJ6ki2s;->f$1:J

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDevicePicCaptureCallback$0NqKV4nVjj709utKISa-vJ6ki2s;->f$2:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0, v1, v2, p0}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDevicePicCaptureCallback;->lambda$onCaptureStarted$3$CamDevicePicCaptureCallback(JLjava/util/concurrent/CountDownLatch;)V

    return-void
.end method
