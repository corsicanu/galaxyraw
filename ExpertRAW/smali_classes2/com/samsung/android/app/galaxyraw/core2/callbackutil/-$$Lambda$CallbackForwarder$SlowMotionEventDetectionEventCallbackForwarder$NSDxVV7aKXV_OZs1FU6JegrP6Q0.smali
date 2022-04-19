.class public final synthetic Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$SlowMotionEventDetectionEventCallbackForwarder$NSDxVV7aKXV_OZs1FU6JegrP6Q0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$SlowMotionEventDetectionEventCallbackForwarder;

.field public final synthetic f$1:[Lcom/samsung/android/app/galaxyraw/core2/container/SlowMotionEvent;

.field public final synthetic f$2:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$SlowMotionEventDetectionEventCallbackForwarder;[Lcom/samsung/android/app/galaxyraw/core2/container/SlowMotionEvent;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$SlowMotionEventDetectionEventCallbackForwarder$NSDxVV7aKXV_OZs1FU6JegrP6Q0;->f$0:Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$SlowMotionEventDetectionEventCallbackForwarder;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$SlowMotionEventDetectionEventCallbackForwarder$NSDxVV7aKXV_OZs1FU6JegrP6Q0;->f$1:[Lcom/samsung/android/app/galaxyraw/core2/container/SlowMotionEvent;

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$SlowMotionEventDetectionEventCallbackForwarder$NSDxVV7aKXV_OZs1FU6JegrP6Q0;->f$2:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$SlowMotionEventDetectionEventCallbackForwarder$NSDxVV7aKXV_OZs1FU6JegrP6Q0;->f$0:Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$SlowMotionEventDetectionEventCallbackForwarder;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$SlowMotionEventDetectionEventCallbackForwarder$NSDxVV7aKXV_OZs1FU6JegrP6Q0;->f$1:[Lcom/samsung/android/app/galaxyraw/core2/container/SlowMotionEvent;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$SlowMotionEventDetectionEventCallbackForwarder$NSDxVV7aKXV_OZs1FU6JegrP6Q0;->f$2:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$SlowMotionEventDetectionEventCallbackForwarder;->lambda$onEventDetectionResult$1$CallbackForwarder$SlowMotionEventDetectionEventCallbackForwarder([Lcom/samsung/android/app/galaxyraw/core2/container/SlowMotionEvent;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V

    return-void
.end method
