.class public final synthetic Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$HumanTrackingEventCallbackForwarder$E6xL3F3fghZmqrGwn7i4EXhT1kw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$HumanTrackingEventCallbackForwarder;

.field public final synthetic f$1:[B

.field public final synthetic f$2:[Landroid/graphics/Rect;

.field public final synthetic f$3:[Landroid/graphics/Rect;

.field public final synthetic f$4:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$HumanTrackingEventCallbackForwarder;[B[Landroid/graphics/Rect;[Landroid/graphics/Rect;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$HumanTrackingEventCallbackForwarder$E6xL3F3fghZmqrGwn7i4EXhT1kw;->f$0:Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$HumanTrackingEventCallbackForwarder;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$HumanTrackingEventCallbackForwarder$E6xL3F3fghZmqrGwn7i4EXhT1kw;->f$1:[B

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$HumanTrackingEventCallbackForwarder$E6xL3F3fghZmqrGwn7i4EXhT1kw;->f$2:[Landroid/graphics/Rect;

    iput-object p4, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$HumanTrackingEventCallbackForwarder$E6xL3F3fghZmqrGwn7i4EXhT1kw;->f$3:[Landroid/graphics/Rect;

    iput-object p5, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$HumanTrackingEventCallbackForwarder$E6xL3F3fghZmqrGwn7i4EXhT1kw;->f$4:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$HumanTrackingEventCallbackForwarder$E6xL3F3fghZmqrGwn7i4EXhT1kw;->f$0:Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$HumanTrackingEventCallbackForwarder;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$HumanTrackingEventCallbackForwarder$E6xL3F3fghZmqrGwn7i4EXhT1kw;->f$1:[B

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$HumanTrackingEventCallbackForwarder$E6xL3F3fghZmqrGwn7i4EXhT1kw;->f$2:[Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$HumanTrackingEventCallbackForwarder$E6xL3F3fghZmqrGwn7i4EXhT1kw;->f$3:[Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$HumanTrackingEventCallbackForwarder$E6xL3F3fghZmqrGwn7i4EXhT1kw;->f$4:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$HumanTrackingEventCallbackForwarder;->lambda$onHumanTrackingData$1$CallbackForwarder$HumanTrackingEventCallbackForwarder([B[Landroid/graphics/Rect;[Landroid/graphics/Rect;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V

    return-void
.end method
