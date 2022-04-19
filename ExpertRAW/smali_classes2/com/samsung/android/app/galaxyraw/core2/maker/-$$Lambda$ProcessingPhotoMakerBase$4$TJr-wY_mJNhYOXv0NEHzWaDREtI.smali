.class public final synthetic Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$ProcessingPhotoMakerBase$4$TJr-wY_mJNhYOXv0NEHzWaDREtI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase$4;

.field public final synthetic f$1:Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest$Sequence;

.field public final synthetic f$2:I

.field public final synthetic f$3:Landroid/hardware/camera2/CaptureFailure;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase$4;Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest$Sequence;ILandroid/hardware/camera2/CaptureFailure;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$ProcessingPhotoMakerBase$4$TJr-wY_mJNhYOXv0NEHzWaDREtI;->f$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase$4;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$ProcessingPhotoMakerBase$4$TJr-wY_mJNhYOXv0NEHzWaDREtI;->f$1:Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest$Sequence;

    iput p3, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$ProcessingPhotoMakerBase$4$TJr-wY_mJNhYOXv0NEHzWaDREtI;->f$2:I

    iput-object p4, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$ProcessingPhotoMakerBase$4$TJr-wY_mJNhYOXv0NEHzWaDREtI;->f$3:Landroid/hardware/camera2/CaptureFailure;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$ProcessingPhotoMakerBase$4$TJr-wY_mJNhYOXv0NEHzWaDREtI;->f$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase$4;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$ProcessingPhotoMakerBase$4$TJr-wY_mJNhYOXv0NEHzWaDREtI;->f$1:Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest$Sequence;

    iget v2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$ProcessingPhotoMakerBase$4$TJr-wY_mJNhYOXv0NEHzWaDREtI;->f$2:I

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$ProcessingPhotoMakerBase$4$TJr-wY_mJNhYOXv0NEHzWaDREtI;->f$3:Landroid/hardware/camera2/CaptureFailure;

    check-cast p1, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest;

    invoke-virtual {v0, v1, v2, p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase$4;->lambda$onError$0$ProcessingPhotoMakerBase$4(Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest$Sequence;ILandroid/hardware/camera2/CaptureFailure;Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest;)V

    return-void
.end method
