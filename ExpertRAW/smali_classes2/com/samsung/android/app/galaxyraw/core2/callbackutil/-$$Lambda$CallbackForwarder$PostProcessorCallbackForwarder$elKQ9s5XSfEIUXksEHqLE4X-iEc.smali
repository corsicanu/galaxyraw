.class public final synthetic Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$PostProcessorCallbackForwarder$elKQ9s5XSfEIUXksEHqLE4X-iEc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$PostProcessorCallbackForwarder;

.field public final synthetic f$1:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$PostProcessorCallbackForwarder;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$PostProcessorCallbackForwarder$elKQ9s5XSfEIUXksEHqLE4X-iEc;->f$0:Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$PostProcessorCallbackForwarder;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$PostProcessorCallbackForwarder$elKQ9s5XSfEIUXksEHqLE4X-iEc;->f$1:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$PostProcessorCallbackForwarder$elKQ9s5XSfEIUXksEHqLE4X-iEc;->f$0:Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$PostProcessorCallbackForwarder;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$PostProcessorCallbackForwarder$elKQ9s5XSfEIUXksEHqLE4X-iEc;->f$1:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$PostProcessorCallbackForwarder;->lambda$onPostProcessorActive$1$CallbackForwarder$PostProcessorCallbackForwarder(Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V

    return-void
.end method
