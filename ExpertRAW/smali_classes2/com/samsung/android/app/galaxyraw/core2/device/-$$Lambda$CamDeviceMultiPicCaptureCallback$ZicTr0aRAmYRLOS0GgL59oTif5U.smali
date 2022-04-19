.class public final synthetic Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceMultiPicCaptureCallback$ZicTr0aRAmYRLOS0GgL59oTif5U;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceMultiPicCaptureCallback;

.field public final synthetic f$1:Ljava/lang/Long;

.field public final synthetic f$2:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceMultiPicCaptureCallback;Ljava/lang/Long;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceMultiPicCaptureCallback$ZicTr0aRAmYRLOS0GgL59oTif5U;->f$0:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceMultiPicCaptureCallback;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceMultiPicCaptureCallback$ZicTr0aRAmYRLOS0GgL59oTif5U;->f$1:Ljava/lang/Long;

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceMultiPicCaptureCallback$ZicTr0aRAmYRLOS0GgL59oTif5U;->f$2:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceMultiPicCaptureCallback$ZicTr0aRAmYRLOS0GgL59oTif5U;->f$0:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceMultiPicCaptureCallback;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceMultiPicCaptureCallback$ZicTr0aRAmYRLOS0GgL59oTif5U;->f$1:Ljava/lang/Long;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceMultiPicCaptureCallback$ZicTr0aRAmYRLOS0GgL59oTif5U;->f$2:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceMultiPicCaptureCallback;->lambda$onCaptureProgressed$2$CamDeviceMultiPicCaptureCallback(Ljava/lang/Long;Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method
