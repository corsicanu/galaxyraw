.class public final synthetic Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$ExposureTimeCallbackForwarder$GDnNOqXPHuiJkKJGb63QGJkg9jE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$ExposureTimeCallbackForwarder;

.field public final synthetic f$1:Ljava/lang/Long;

.field public final synthetic f$2:Ljava/lang/Long;

.field public final synthetic f$3:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$ExposureTimeCallbackForwarder;Ljava/lang/Long;Ljava/lang/Long;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$ExposureTimeCallbackForwarder$GDnNOqXPHuiJkKJGb63QGJkg9jE;->f$0:Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$ExposureTimeCallbackForwarder;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$ExposureTimeCallbackForwarder$GDnNOqXPHuiJkKJGb63QGJkg9jE;->f$1:Ljava/lang/Long;

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$ExposureTimeCallbackForwarder$GDnNOqXPHuiJkKJGb63QGJkg9jE;->f$2:Ljava/lang/Long;

    iput-object p4, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$ExposureTimeCallbackForwarder$GDnNOqXPHuiJkKJGb63QGJkg9jE;->f$3:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$ExposureTimeCallbackForwarder$GDnNOqXPHuiJkKJGb63QGJkg9jE;->f$0:Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$ExposureTimeCallbackForwarder;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$ExposureTimeCallbackForwarder$GDnNOqXPHuiJkKJGb63QGJkg9jE;->f$1:Ljava/lang/Long;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$ExposureTimeCallbackForwarder$GDnNOqXPHuiJkKJGb63QGJkg9jE;->f$2:Ljava/lang/Long;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$ExposureTimeCallbackForwarder$GDnNOqXPHuiJkKJGb63QGJkg9jE;->f$3:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    invoke-virtual {v0, v1, v2, p0}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$ExposureTimeCallbackForwarder;->lambda$onExposureTimeChanged$1$CallbackForwarder$ExposureTimeCallbackForwarder(Ljava/lang/Long;Ljava/lang/Long;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V

    return-void
.end method
