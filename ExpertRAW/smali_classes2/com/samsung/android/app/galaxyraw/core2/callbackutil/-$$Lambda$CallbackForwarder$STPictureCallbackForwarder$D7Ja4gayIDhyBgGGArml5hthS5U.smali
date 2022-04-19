.class public final synthetic Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$STPictureCallbackForwarder$D7Ja4gayIDhyBgGGArml5hthS5U;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$STPictureCallbackForwarder;

.field public final synthetic f$1:Ljava/lang/Long;

.field public final synthetic f$2:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$STPictureCallbackForwarder;Ljava/lang/Long;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$STPictureCallbackForwarder$D7Ja4gayIDhyBgGGArml5hthS5U;->f$0:Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$STPictureCallbackForwarder;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$STPictureCallbackForwarder$D7Ja4gayIDhyBgGGArml5hthS5U;->f$1:Ljava/lang/Long;

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$STPictureCallbackForwarder$D7Ja4gayIDhyBgGGArml5hthS5U;->f$2:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$STPictureCallbackForwarder$D7Ja4gayIDhyBgGGArml5hthS5U;->f$0:Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$STPictureCallbackForwarder;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$STPictureCallbackForwarder$D7Ja4gayIDhyBgGGArml5hthS5U;->f$1:Ljava/lang/Long;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$STPictureCallbackForwarder$D7Ja4gayIDhyBgGGArml5hthS5U;->f$2:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$STPictureCallbackForwarder;->lambda$onShutter$11$CallbackForwarder$STPictureCallbackForwarder(Ljava/lang/Long;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V

    return-void
.end method
