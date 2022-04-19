.class public final synthetic Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$STPictureCallbackForwarder$CkGeYdhRgAPik7cW8-9n6rddxAA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$STPictureCallbackForwarder;

.field public final synthetic f$1:Ljava/nio/ByteBuffer;

.field public final synthetic f$2:Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo;

.field public final synthetic f$3:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$STPictureCallbackForwarder;Ljava/nio/ByteBuffer;Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$STPictureCallbackForwarder$CkGeYdhRgAPik7cW8-9n6rddxAA;->f$0:Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$STPictureCallbackForwarder;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$STPictureCallbackForwarder$CkGeYdhRgAPik7cW8-9n6rddxAA;->f$1:Ljava/nio/ByteBuffer;

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$STPictureCallbackForwarder$CkGeYdhRgAPik7cW8-9n6rddxAA;->f$2:Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo;

    iput-object p4, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$STPictureCallbackForwarder$CkGeYdhRgAPik7cW8-9n6rddxAA;->f$3:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$STPictureCallbackForwarder$CkGeYdhRgAPik7cW8-9n6rddxAA;->f$0:Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$STPictureCallbackForwarder;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$STPictureCallbackForwarder$CkGeYdhRgAPik7cW8-9n6rddxAA;->f$1:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$STPictureCallbackForwarder$CkGeYdhRgAPik7cW8-9n6rddxAA;->f$2:Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$STPictureCallbackForwarder$CkGeYdhRgAPik7cW8-9n6rddxAA;->f$3:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    invoke-virtual {v0, v1, v2, p0}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$STPictureCallbackForwarder;->lambda$onUnProcessedPictureTaken$13$CallbackForwarder$STPictureCallbackForwarder(Ljava/nio/ByteBuffer;Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V

    return-void
.end method
