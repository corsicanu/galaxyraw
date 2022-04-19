.class public final synthetic Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$StateCallbackForwarder$eQoyLgLMaZ8O7n-Kodr7RaC26uw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$StateCallbackForwarder;

.field public final synthetic f$1:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;

.field public final synthetic f$2:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$StateCallbackForwarder;Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$StateCallbackForwarder$eQoyLgLMaZ8O7n-Kodr7RaC26uw;->f$0:Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$StateCallbackForwarder;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$StateCallbackForwarder$eQoyLgLMaZ8O7n-Kodr7RaC26uw;->f$1:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$StateCallbackForwarder$eQoyLgLMaZ8O7n-Kodr7RaC26uw;->f$2:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$StateCallbackForwarder$eQoyLgLMaZ8O7n-Kodr7RaC26uw;->f$0:Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$StateCallbackForwarder;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$StateCallbackForwarder$eQoyLgLMaZ8O7n-Kodr7RaC26uw;->f$1:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$StateCallbackForwarder$eQoyLgLMaZ8O7n-Kodr7RaC26uw;->f$2:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$StateCallbackForwarder;->lambda$onCamDeviceDisconnected$5$CallbackForwarder$StateCallbackForwarder(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V

    return-void
.end method
