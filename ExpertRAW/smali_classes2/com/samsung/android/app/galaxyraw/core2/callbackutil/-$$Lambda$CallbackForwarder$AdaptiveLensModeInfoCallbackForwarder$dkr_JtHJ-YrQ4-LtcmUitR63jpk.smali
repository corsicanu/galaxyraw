.class public final synthetic Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$AdaptiveLensModeInfoCallbackForwarder$dkr_JtHJ-YrQ4-LtcmUitR63jpk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AdaptiveLensModeInfoCallback$AdaptiveLensModeInfo;

.field public final synthetic f$1:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AdaptiveLensModeInfoCallback$AdaptiveLensModeInfo;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$AdaptiveLensModeInfoCallbackForwarder$dkr_JtHJ-YrQ4-LtcmUitR63jpk;->f$0:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AdaptiveLensModeInfoCallback$AdaptiveLensModeInfo;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$AdaptiveLensModeInfoCallbackForwarder$dkr_JtHJ-YrQ4-LtcmUitR63jpk;->f$1:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$AdaptiveLensModeInfoCallbackForwarder$dkr_JtHJ-YrQ4-LtcmUitR63jpk;->f$0:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AdaptiveLensModeInfoCallback$AdaptiveLensModeInfo;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$AdaptiveLensModeInfoCallbackForwarder$dkr_JtHJ-YrQ4-LtcmUitR63jpk;->f$1:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    check-cast p1, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AdaptiveLensModeInfoCallback;

    invoke-static {v0, p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$AdaptiveLensModeInfoCallbackForwarder;->lambda$onAdaptiveLensModeInfoChanged$0(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AdaptiveLensModeInfoCallback$AdaptiveLensModeInfo;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AdaptiveLensModeInfoCallback;)V

    return-void
.end method
