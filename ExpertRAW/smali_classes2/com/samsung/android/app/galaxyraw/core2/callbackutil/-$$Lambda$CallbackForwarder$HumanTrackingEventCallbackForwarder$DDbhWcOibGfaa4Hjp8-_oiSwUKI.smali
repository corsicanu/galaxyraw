.class public final synthetic Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$HumanTrackingEventCallbackForwarder$DDbhWcOibGfaa4Hjp8-_oiSwUKI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:[B

.field public final synthetic f$1:[Landroid/graphics/Rect;

.field public final synthetic f$2:[Landroid/graphics/Rect;

.field public final synthetic f$3:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;


# direct methods
.method public synthetic constructor <init>([B[Landroid/graphics/Rect;[Landroid/graphics/Rect;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$HumanTrackingEventCallbackForwarder$DDbhWcOibGfaa4Hjp8-_oiSwUKI;->f$0:[B

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$HumanTrackingEventCallbackForwarder$DDbhWcOibGfaa4Hjp8-_oiSwUKI;->f$1:[Landroid/graphics/Rect;

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$HumanTrackingEventCallbackForwarder$DDbhWcOibGfaa4Hjp8-_oiSwUKI;->f$2:[Landroid/graphics/Rect;

    iput-object p4, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$HumanTrackingEventCallbackForwarder$DDbhWcOibGfaa4Hjp8-_oiSwUKI;->f$3:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$HumanTrackingEventCallbackForwarder$DDbhWcOibGfaa4Hjp8-_oiSwUKI;->f$0:[B

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$HumanTrackingEventCallbackForwarder$DDbhWcOibGfaa4Hjp8-_oiSwUKI;->f$1:[Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$HumanTrackingEventCallbackForwarder$DDbhWcOibGfaa4Hjp8-_oiSwUKI;->f$2:[Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$HumanTrackingEventCallbackForwarder$DDbhWcOibGfaa4Hjp8-_oiSwUKI;->f$3:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    check-cast p1, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$HumanTrackingEventCallback;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$HumanTrackingEventCallbackForwarder;->lambda$onHumanTrackingData$0([B[Landroid/graphics/Rect;[Landroid/graphics/Rect;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$HumanTrackingEventCallback;)V

    return-void
.end method
