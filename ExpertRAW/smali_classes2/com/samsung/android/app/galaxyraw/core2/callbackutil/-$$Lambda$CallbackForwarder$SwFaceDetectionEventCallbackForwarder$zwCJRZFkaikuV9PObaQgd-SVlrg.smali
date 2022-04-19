.class public final synthetic Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$SwFaceDetectionEventCallbackForwarder$zwCJRZFkaikuV9PObaQgd-SVlrg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:[Landroid/hardware/camera2/params/Face;

.field public final synthetic f$1:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;


# direct methods
.method public synthetic constructor <init>([Landroid/hardware/camera2/params/Face;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$SwFaceDetectionEventCallbackForwarder$zwCJRZFkaikuV9PObaQgd-SVlrg;->f$0:[Landroid/hardware/camera2/params/Face;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$SwFaceDetectionEventCallbackForwarder$zwCJRZFkaikuV9PObaQgd-SVlrg;->f$1:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$SwFaceDetectionEventCallbackForwarder$zwCJRZFkaikuV9PObaQgd-SVlrg;->f$0:[Landroid/hardware/camera2/params/Face;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$SwFaceDetectionEventCallbackForwarder$zwCJRZFkaikuV9PObaQgd-SVlrg;->f$1:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    check-cast p1, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SwFaceDetectionEventCallback;

    invoke-static {v0, p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$SwFaceDetectionEventCallbackForwarder;->lambda$onSwFaceDetection$0([Landroid/hardware/camera2/params/Face;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SwFaceDetectionEventCallback;)V

    return-void
.end method
