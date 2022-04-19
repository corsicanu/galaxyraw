.class public final synthetic Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$PictureCallbackForwarder$y5mXk3slZjgET1wGyz5jbrfwD9A;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$PictureCallbackForwarder;

.field public final synthetic f$1:Ljava/nio/ByteBuffer;

.field public final synthetic f$2:Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo;

.field public final synthetic f$3:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$PictureCallbackForwarder;Ljava/nio/ByteBuffer;Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$PictureCallbackForwarder$y5mXk3slZjgET1wGyz5jbrfwD9A;->f$0:Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$PictureCallbackForwarder;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$PictureCallbackForwarder$y5mXk3slZjgET1wGyz5jbrfwD9A;->f$1:Ljava/nio/ByteBuffer;

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$PictureCallbackForwarder$y5mXk3slZjgET1wGyz5jbrfwD9A;->f$2:Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo;

    iput-object p4, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$PictureCallbackForwarder$y5mXk3slZjgET1wGyz5jbrfwD9A;->f$3:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$PictureCallbackForwarder$y5mXk3slZjgET1wGyz5jbrfwD9A;->f$0:Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$PictureCallbackForwarder;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$PictureCallbackForwarder$y5mXk3slZjgET1wGyz5jbrfwD9A;->f$1:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$PictureCallbackForwarder$y5mXk3slZjgET1wGyz5jbrfwD9A;->f$2:Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$PictureCallbackForwarder$y5mXk3slZjgET1wGyz5jbrfwD9A;->f$3:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    invoke-virtual {v0, v1, v2, p0}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$PictureCallbackForwarder;->lambda$onPictureTaken$5$CallbackForwarder$PictureCallbackForwarder(Ljava/nio/ByteBuffer;Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V

    return-void
.end method
