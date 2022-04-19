.class Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$SensorInfoCallbackManager;
.super Ljava/lang/Object;
.source "CallbackManagerImpl.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$EvCompensationValueCallback;
.implements Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$ExposureTimeCallback;
.implements Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$ColorTemperatureCallback;
.implements Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SensorSensitivityCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SensorInfoCallbackManager"
.end annotation


# instance fields
.field private mSensorInfoEventListener:Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$SensorInfoEventListener;

.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$SensorInfoCallbackManager;->this$0:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$SensorInfoCallbackManager;-><init>(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onColorTemperatureChanged$0$CallbackManagerImpl$SensorInfoCallbackManager(Ljava/lang/Long;Ljava/lang/Integer;)V
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$SensorInfoCallbackManager;->mSensorInfoEventListener:Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$SensorInfoEventListener;

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {p0, v0, v1, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$SensorInfoEventListener;->onColorTemperatureChanged(JI)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$onEvCompensationValueChanged$1$CallbackManagerImpl$SensorInfoCallbackManager(Ljava/lang/Long;Ljava/lang/Integer;)V
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$SensorInfoCallbackManager;->mSensorInfoEventListener:Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$SensorInfoEventListener;

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {p0, v0, v1, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$SensorInfoEventListener;->onExposureValueChanged(JI)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$onExposureTimeChanged$2$CallbackManagerImpl$SensorInfoCallbackManager(Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$SensorInfoCallbackManager;->mSensorInfoEventListener:Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$SensorInfoEventListener;

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-interface {p0, v0, v1, p1, p2}, Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$SensorInfoEventListener;->onExposureTimeChanged(JJ)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$onSensorSensitivityChanged$3$CallbackManagerImpl$SensorInfoCallbackManager(Ljava/lang/Long;Ljava/lang/Integer;)V
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$SensorInfoCallbackManager;->mSensorInfoEventListener:Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$SensorInfoEventListener;

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {p0, v0, v1, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$SensorInfoEventListener;->onIsoChanged(JI)V

    :cond_0
    return-void
.end method

.method public onColorTemperatureChanged(Ljava/lang/Long;Ljava/lang/Integer;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "timeStamp",
            "colorTemperature",
            "camDevice"
        }
    .end annotation

    iget-object p3, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$SensorInfoCallbackManager;->this$0:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;

    invoke-static {p3}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->access$4000(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;)Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    move-result-object p3

    new-instance v0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CallbackManagerImpl$SensorInfoCallbackManager$zuPiyeTrUdaWoTqKIxmLVmv-Zxg;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CallbackManagerImpl$SensorInfoCallbackManager$zuPiyeTrUdaWoTqKIxmLVmv-Zxg;-><init>(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$SensorInfoCallbackManager;Ljava/lang/Long;Ljava/lang/Integer;)V

    invoke-virtual {p3, v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->postToUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onEvCompensationValueChanged(Ljava/lang/Long;Ljava/lang/Integer;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "timeStamp",
            "evCompensationValue",
            "camDevice"
        }
    .end annotation

    iget-object p3, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$SensorInfoCallbackManager;->this$0:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;

    invoke-static {p3}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->access$4000(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;)Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    move-result-object p3

    new-instance v0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CallbackManagerImpl$SensorInfoCallbackManager$22Y1u98kTXlYNSvOR8S6nbvVNa0;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CallbackManagerImpl$SensorInfoCallbackManager$22Y1u98kTXlYNSvOR8S6nbvVNa0;-><init>(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$SensorInfoCallbackManager;Ljava/lang/Long;Ljava/lang/Integer;)V

    invoke-virtual {p3, v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->postToUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onExposureTimeChanged(Ljava/lang/Long;Ljava/lang/Long;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "timeStamp",
            "exposureTime",
            "camDevice"
        }
    .end annotation

    iget-object p3, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$SensorInfoCallbackManager;->this$0:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;

    invoke-static {p3}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->access$4000(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;)Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    move-result-object p3

    new-instance v0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CallbackManagerImpl$SensorInfoCallbackManager$VNx5L6uXKyKjPqBfuqXQl3p4rDo;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CallbackManagerImpl$SensorInfoCallbackManager$VNx5L6uXKyKjPqBfuqXQl3p4rDo;-><init>(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$SensorInfoCallbackManager;Ljava/lang/Long;Ljava/lang/Long;)V

    invoke-virtual {p3, v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->postToUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSensorSensitivityChanged(Ljava/lang/Long;Ljava/lang/Integer;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "timeStamp",
            "sensorSensitivity",
            "camDevice"
        }
    .end annotation

    iget-object p3, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$SensorInfoCallbackManager;->this$0:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;

    invoke-static {p3}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->access$4000(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;)Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    move-result-object p3

    new-instance v0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CallbackManagerImpl$SensorInfoCallbackManager$-5fuZalFY7HLr4FwhRgHckXCS-U;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CallbackManagerImpl$SensorInfoCallbackManager$-5fuZalFY7HLr4FwhRgHckXCS-U;-><init>(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$SensorInfoCallbackManager;Ljava/lang/Long;Ljava/lang/Integer;)V

    invoke-virtual {p3, v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->postToUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method setSensorInfoEventListener(Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$SensorInfoEventListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$SensorInfoCallbackManager;->mSensorInfoEventListener:Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$SensorInfoEventListener;

    return-void
.end method
