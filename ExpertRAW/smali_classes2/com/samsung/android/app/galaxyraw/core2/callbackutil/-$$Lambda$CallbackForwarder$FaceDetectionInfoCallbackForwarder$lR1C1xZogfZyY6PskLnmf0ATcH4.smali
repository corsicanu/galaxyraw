.class public final synthetic Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$FaceDetectionInfoCallbackForwarder$lR1C1xZogfZyY6PskLnmf0ATcH4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$FaceDetectionInfoCallbackForwarder;

.field public final synthetic f$1:Ljava/lang/Long;

.field public final synthetic f$2:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$FaceDetectionInfoCallback$FaceDetectionInfo;

.field public final synthetic f$3:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$FaceDetectionInfoCallbackForwarder;Ljava/lang/Long;Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$FaceDetectionInfoCallback$FaceDetectionInfo;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$FaceDetectionInfoCallbackForwarder$lR1C1xZogfZyY6PskLnmf0ATcH4;->f$0:Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$FaceDetectionInfoCallbackForwarder;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$FaceDetectionInfoCallbackForwarder$lR1C1xZogfZyY6PskLnmf0ATcH4;->f$1:Ljava/lang/Long;

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$FaceDetectionInfoCallbackForwarder$lR1C1xZogfZyY6PskLnmf0ATcH4;->f$2:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$FaceDetectionInfoCallback$FaceDetectionInfo;

    iput-object p4, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$FaceDetectionInfoCallbackForwarder$lR1C1xZogfZyY6PskLnmf0ATcH4;->f$3:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$FaceDetectionInfoCallbackForwarder$lR1C1xZogfZyY6PskLnmf0ATcH4;->f$0:Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$FaceDetectionInfoCallbackForwarder;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$FaceDetectionInfoCallbackForwarder$lR1C1xZogfZyY6PskLnmf0ATcH4;->f$1:Ljava/lang/Long;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$FaceDetectionInfoCallbackForwarder$lR1C1xZogfZyY6PskLnmf0ATcH4;->f$2:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$FaceDetectionInfoCallback$FaceDetectionInfo;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$FaceDetectionInfoCallbackForwarder$lR1C1xZogfZyY6PskLnmf0ATcH4;->f$3:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    invoke-virtual {v0, v1, v2, p0}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$FaceDetectionInfoCallbackForwarder;->lambda$onFaceDetection$1$CallbackForwarder$FaceDetectionInfoCallbackForwarder(Ljava/lang/Long;Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$FaceDetectionInfoCallback$FaceDetectionInfo;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V

    return-void
.end method
