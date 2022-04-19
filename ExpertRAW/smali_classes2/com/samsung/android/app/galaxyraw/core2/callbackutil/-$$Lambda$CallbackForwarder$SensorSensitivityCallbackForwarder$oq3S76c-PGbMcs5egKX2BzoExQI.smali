.class public final synthetic Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$SensorSensitivityCallbackForwarder$oq3S76c-PGbMcs5egKX2BzoExQI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$SensorSensitivityCallbackForwarder;

.field public final synthetic f$1:Ljava/lang/Long;

.field public final synthetic f$2:Ljava/lang/Integer;

.field public final synthetic f$3:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$SensorSensitivityCallbackForwarder;Ljava/lang/Long;Ljava/lang/Integer;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$SensorSensitivityCallbackForwarder$oq3S76c-PGbMcs5egKX2BzoExQI;->f$0:Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$SensorSensitivityCallbackForwarder;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$SensorSensitivityCallbackForwarder$oq3S76c-PGbMcs5egKX2BzoExQI;->f$1:Ljava/lang/Long;

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$SensorSensitivityCallbackForwarder$oq3S76c-PGbMcs5egKX2BzoExQI;->f$2:Ljava/lang/Integer;

    iput-object p4, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$SensorSensitivityCallbackForwarder$oq3S76c-PGbMcs5egKX2BzoExQI;->f$3:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$SensorSensitivityCallbackForwarder$oq3S76c-PGbMcs5egKX2BzoExQI;->f$0:Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$SensorSensitivityCallbackForwarder;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$SensorSensitivityCallbackForwarder$oq3S76c-PGbMcs5egKX2BzoExQI;->f$1:Ljava/lang/Long;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$SensorSensitivityCallbackForwarder$oq3S76c-PGbMcs5egKX2BzoExQI;->f$2:Ljava/lang/Integer;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$SensorSensitivityCallbackForwarder$oq3S76c-PGbMcs5egKX2BzoExQI;->f$3:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    invoke-virtual {v0, v1, v2, p0}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$SensorSensitivityCallbackForwarder;->lambda$onSensorSensitivityChanged$1$CallbackForwarder$SensorSensitivityCallbackForwarder(Ljava/lang/Long;Ljava/lang/Integer;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V

    return-void
.end method
