.class public final synthetic Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$PanoramaCallbackForwarder$DNtJTbmHv8RRKOblOMK1wY0gK3c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$PanoramaCallbackForwarder;

.field public final synthetic f$1:Landroid/net/Uri;

.field public final synthetic f$2:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$PanoramaCallbackForwarder;Landroid/net/Uri;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$PanoramaCallbackForwarder$DNtJTbmHv8RRKOblOMK1wY0gK3c;->f$0:Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$PanoramaCallbackForwarder;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$PanoramaCallbackForwarder$DNtJTbmHv8RRKOblOMK1wY0gK3c;->f$1:Landroid/net/Uri;

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$PanoramaCallbackForwarder$DNtJTbmHv8RRKOblOMK1wY0gK3c;->f$2:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$PanoramaCallbackForwarder$DNtJTbmHv8RRKOblOMK1wY0gK3c;->f$0:Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$PanoramaCallbackForwarder;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$PanoramaCallbackForwarder$DNtJTbmHv8RRKOblOMK1wY0gK3c;->f$1:Landroid/net/Uri;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$PanoramaCallbackForwarder$DNtJTbmHv8RRKOblOMK1wY0gK3c;->f$2:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$PanoramaCallbackForwarder;->lambda$onCaptureResult$1$CallbackForwarder$PanoramaCallbackForwarder(Landroid/net/Uri;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V

    return-void
.end method
