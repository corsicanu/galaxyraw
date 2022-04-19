.class public final synthetic Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$FaceRecognitionEventCallbackForwarder$Y_s5C_aNLv0BkjGCa18XJkiL6lA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$FaceRecognitionEventCallbackForwarder;

.field public final synthetic f$1:[Lcom/samsung/android/app/galaxyraw/core2/container/FaceRecognitionFeatureData;

.field public final synthetic f$2:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$FaceRecognitionEventCallbackForwarder;[Lcom/samsung/android/app/galaxyraw/core2/container/FaceRecognitionFeatureData;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$FaceRecognitionEventCallbackForwarder$Y_s5C_aNLv0BkjGCa18XJkiL6lA;->f$0:Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$FaceRecognitionEventCallbackForwarder;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$FaceRecognitionEventCallbackForwarder$Y_s5C_aNLv0BkjGCa18XJkiL6lA;->f$1:[Lcom/samsung/android/app/galaxyraw/core2/container/FaceRecognitionFeatureData;

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$FaceRecognitionEventCallbackForwarder$Y_s5C_aNLv0BkjGCa18XJkiL6lA;->f$2:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$FaceRecognitionEventCallbackForwarder$Y_s5C_aNLv0BkjGCa18XJkiL6lA;->f$0:Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$FaceRecognitionEventCallbackForwarder;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$FaceRecognitionEventCallbackForwarder$Y_s5C_aNLv0BkjGCa18XJkiL6lA;->f$1:[Lcom/samsung/android/app/galaxyraw/core2/container/FaceRecognitionFeatureData;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$FaceRecognitionEventCallbackForwarder$Y_s5C_aNLv0BkjGCa18XJkiL6lA;->f$2:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$FaceRecognitionEventCallbackForwarder;->lambda$onExtractFeatureData$3$CallbackForwarder$FaceRecognitionEventCallbackForwarder([Lcom/samsung/android/app/galaxyraw/core2/container/FaceRecognitionFeatureData;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V

    return-void
.end method
