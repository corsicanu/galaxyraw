.class public final synthetic Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceBurstPicCaptureCallback$N42d-GOSilQGoJCJW3dQz0Jh3eU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceBurstPicCaptureCallback;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceBurstPicCaptureCallback;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceBurstPicCaptureCallback$N42d-GOSilQGoJCJW3dQz0Jh3eU;->f$0:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceBurstPicCaptureCallback;

    iput p2, p0, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceBurstPicCaptureCallback$N42d-GOSilQGoJCJW3dQz0Jh3eU;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceBurstPicCaptureCallback$N42d-GOSilQGoJCJW3dQz0Jh3eU;->f$0:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceBurstPicCaptureCallback;

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceBurstPicCaptureCallback$N42d-GOSilQGoJCJW3dQz0Jh3eU;->f$1:I

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceBurstPicCaptureCallback;->lambda$onCaptureSequenceCompleted$7$CamDeviceBurstPicCaptureCallback(I)V

    return-void
.end method
