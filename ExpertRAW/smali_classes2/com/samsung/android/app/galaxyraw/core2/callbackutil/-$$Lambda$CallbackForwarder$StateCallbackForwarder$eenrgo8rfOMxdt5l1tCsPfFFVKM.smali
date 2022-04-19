.class public final synthetic Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$StateCallbackForwarder$eenrgo8rfOMxdt5l1tCsPfFFVKM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;

.field public final synthetic f$1:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$StateCallbackForwarder$eenrgo8rfOMxdt5l1tCsPfFFVKM;->f$0:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$StateCallbackForwarder$eenrgo8rfOMxdt5l1tCsPfFFVKM;->f$1:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$StateCallbackForwarder$eenrgo8rfOMxdt5l1tCsPfFFVKM;->f$0:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$StateCallbackForwarder$eenrgo8rfOMxdt5l1tCsPfFFVKM;->f$1:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    check-cast p1, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$StateCallback;

    invoke-static {v0, p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$StateCallbackForwarder;->lambda$onCamDeviceConnectFailed$0(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$StateCallback;)V

    return-void
.end method
