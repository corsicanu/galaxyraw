.class public final synthetic Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackHelper$PostProcessorStatusCallbackHelper$ishAVjy6wVyS-2uB2Z6Kob73sBo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackHelper$PostProcessorStatusCallbackHelper$ishAVjy6wVyS-2uB2Z6Kob73sBo;->f$0:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackHelper$PostProcessorStatusCallbackHelper$ishAVjy6wVyS-2uB2Z6Kob73sBo;->f$0:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    check-cast p1, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PostProcessorStatusCallback;

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackHelper$PostProcessorStatusCallbackHelper;->lambda$onPostProcessorReady$1(Lcom/samsung/android/app/galaxyraw/core2/CamDevice;Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PostProcessorStatusCallback;)V

    return-void
.end method
