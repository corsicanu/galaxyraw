.class public final synthetic Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$DynamicShotInfoCallbackForwarder$8LAqPzAEX18OC371SV9gG95bjKA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$DynamicShotInfoCallbackForwarder;

.field public final synthetic f$1:Ljava/lang/Long;

.field public final synthetic f$2:Lcom/samsung/android/app/galaxyraw/core2/container/DynamicShotInfo;

.field public final synthetic f$3:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$DynamicShotInfoCallbackForwarder;Ljava/lang/Long;Lcom/samsung/android/app/galaxyraw/core2/container/DynamicShotInfo;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$DynamicShotInfoCallbackForwarder$8LAqPzAEX18OC371SV9gG95bjKA;->f$0:Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$DynamicShotInfoCallbackForwarder;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$DynamicShotInfoCallbackForwarder$8LAqPzAEX18OC371SV9gG95bjKA;->f$1:Ljava/lang/Long;

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$DynamicShotInfoCallbackForwarder$8LAqPzAEX18OC371SV9gG95bjKA;->f$2:Lcom/samsung/android/app/galaxyraw/core2/container/DynamicShotInfo;

    iput-object p4, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$DynamicShotInfoCallbackForwarder$8LAqPzAEX18OC371SV9gG95bjKA;->f$3:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$DynamicShotInfoCallbackForwarder$8LAqPzAEX18OC371SV9gG95bjKA;->f$0:Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$DynamicShotInfoCallbackForwarder;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$DynamicShotInfoCallbackForwarder$8LAqPzAEX18OC371SV9gG95bjKA;->f$1:Ljava/lang/Long;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$DynamicShotInfoCallbackForwarder$8LAqPzAEX18OC371SV9gG95bjKA;->f$2:Lcom/samsung/android/app/galaxyraw/core2/container/DynamicShotInfo;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$DynamicShotInfoCallbackForwarder$8LAqPzAEX18OC371SV9gG95bjKA;->f$3:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    invoke-virtual {v0, v1, v2, p0}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$DynamicShotInfoCallbackForwarder;->lambda$onDynamicShotInfoChanged$1$CallbackForwarder$DynamicShotInfoCallbackForwarder(Ljava/lang/Long;Lcom/samsung/android/app/galaxyraw/core2/container/DynamicShotInfo;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V

    return-void
.end method
