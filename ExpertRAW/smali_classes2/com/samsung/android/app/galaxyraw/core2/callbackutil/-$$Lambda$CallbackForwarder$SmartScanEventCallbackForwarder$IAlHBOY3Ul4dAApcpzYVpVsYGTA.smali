.class public final synthetic Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$SmartScanEventCallbackForwarder$IAlHBOY3Ul4dAApcpzYVpVsYGTA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$SmartScanEventCallbackForwarder;

.field public final synthetic f$1:Z

.field public final synthetic f$2:[F

.field public final synthetic f$3:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$SmartScanEventCallbackForwarder;Z[FLcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$SmartScanEventCallbackForwarder$IAlHBOY3Ul4dAApcpzYVpVsYGTA;->f$0:Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$SmartScanEventCallbackForwarder;

    iput-boolean p2, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$SmartScanEventCallbackForwarder$IAlHBOY3Ul4dAApcpzYVpVsYGTA;->f$1:Z

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$SmartScanEventCallbackForwarder$IAlHBOY3Ul4dAApcpzYVpVsYGTA;->f$2:[F

    iput-object p4, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$SmartScanEventCallbackForwarder$IAlHBOY3Ul4dAApcpzYVpVsYGTA;->f$3:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$SmartScanEventCallbackForwarder$IAlHBOY3Ul4dAApcpzYVpVsYGTA;->f$0:Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$SmartScanEventCallbackForwarder;

    iget-boolean v1, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$SmartScanEventCallbackForwarder$IAlHBOY3Ul4dAApcpzYVpVsYGTA;->f$1:Z

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$SmartScanEventCallbackForwarder$IAlHBOY3Ul4dAApcpzYVpVsYGTA;->f$2:[F

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$SmartScanEventCallbackForwarder$IAlHBOY3Ul4dAApcpzYVpVsYGTA;->f$3:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    invoke-virtual {v0, v1, v2, p0}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$SmartScanEventCallbackForwarder;->lambda$onSmartScanResult$1$CallbackForwarder$SmartScanEventCallbackForwarder(Z[FLcom/samsung/android/app/galaxyraw/core2/CamDevice;)V

    return-void
.end method
