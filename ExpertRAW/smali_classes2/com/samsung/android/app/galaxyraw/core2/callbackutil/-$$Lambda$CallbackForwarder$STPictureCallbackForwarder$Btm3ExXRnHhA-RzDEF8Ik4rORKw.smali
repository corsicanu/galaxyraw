.class public final synthetic Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$STPictureCallbackForwarder$Btm3ExXRnHhA-RzDEF8Ik4rORKw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/nio/ByteBuffer;

.field public final synthetic f$1:Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo;

.field public final synthetic f$2:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;


# direct methods
.method public synthetic constructor <init>(Ljava/nio/ByteBuffer;Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$STPictureCallbackForwarder$Btm3ExXRnHhA-RzDEF8Ik4rORKw;->f$0:Ljava/nio/ByteBuffer;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$STPictureCallbackForwarder$Btm3ExXRnHhA-RzDEF8Ik4rORKw;->f$1:Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo;

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$STPictureCallbackForwarder$Btm3ExXRnHhA-RzDEF8Ik4rORKw;->f$2:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$STPictureCallbackForwarder$Btm3ExXRnHhA-RzDEF8Ik4rORKw;->f$0:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$STPictureCallbackForwarder$Btm3ExXRnHhA-RzDEF8Ik4rORKw;->f$1:Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$STPictureCallbackForwarder$Btm3ExXRnHhA-RzDEF8Ik4rORKw;->f$2:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    check-cast p1, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$STPictureCallback;

    invoke-static {v0, v1, p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$STPictureCallbackForwarder;->lambda$onUnProcessedPictureTaken$12(Ljava/nio/ByteBuffer;Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$STPictureCallback;)V

    return-void
.end method
