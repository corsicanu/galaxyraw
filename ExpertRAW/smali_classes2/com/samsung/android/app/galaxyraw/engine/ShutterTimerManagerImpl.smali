.class Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl;
.super Ljava/lang/Object;
.source "ShutterTimerManagerImpl.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl$TimerHandler;,
        Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl$TimerState;
    }
.end annotation


# static fields
.field private static final ONE_SECOND_IN_MILLIS:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "ShutterTimerManager"


# instance fields
.field private final mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

.field private mShutterTimerCaptureTriggerListener:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager$ShutterTimerCaptureTriggerListener;

.field private mShutterTimerEventListener:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager$ShutterTimerEventListener;

.field private mTimerCountingEventListener:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager$TimerTickEventListener;

.field private final mTimerHandler:Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl$TimerHandler;

.field private mTimerMode:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager$TimerMode;

.field private mTimerState:Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl$TimerState;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "engine"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl$TimerHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl$TimerHandler;-><init>(Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl;Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl$1;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl;->mTimerHandler:Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl$TimerHandler;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl$TimerState;->IDLE:Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl$TimerState;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl;->mTimerState:Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl$TimerState;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl;)Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    return-object p0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl;->handleOneShotTimer(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl;->handleTimerTick(I)V

    return-void
.end method

.method private getTimerMode(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;)Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager$TimerMode;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputType"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getCameraContext()Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->TIMER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p0, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_3

    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_0

    return-object v4

    :cond_0
    sget-object p0, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager$TimerMode;->TIMER_10S:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager$TimerMode;

    return-object p0

    :cond_1
    sget-object p0, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager$TimerMode;->TIMER_5S:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager$TimerMode;

    return-object p0

    :cond_2
    sget-object p0, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager$TimerMode;->TIMER_2S:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager$TimerMode;

    return-object p0

    :cond_3
    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl$1;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$CameraContext$InputType:[I

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    if-eq p1, v3, :cond_6

    if-eq p1, v2, :cond_4

    if-eq p1, v1, :cond_4

    return-object v4

    :cond_4
    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result p0

    if-nez p0, :cond_5

    sget-object p0, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager$TimerMode;->TIMER_ONESHOT:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager$TimerMode;

    return-object p0

    :cond_5
    return-object v4

    :cond_6
    sget-object p0, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager$TimerMode;->TIMER_ONESHOT:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager$TimerMode;

    return-object p0
.end method

.method private handleOneShotTimer(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "currentProgressTime"
        }
    .end annotation

    if-eqz p1, :cond_1

    const/16 v0, 0x5dc

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl;->handleTimerFinished()V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid progress time to handle one shot timer event : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl;->mShutterTimerEventListener:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager$ShutterTimerEventListener;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl;->mTimerMode:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager$TimerMode;

    invoke-interface {p1, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager$ShutterTimerEventListener;->onShutterTimerStarted(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager$TimerMode;)V

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl;->mTimerHandler:Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl$TimerHandler;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$ShutterTimerManagerImpl$CRkpBYMx1zWX8MwUk43TTd0pSAA;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$ShutterTimerManagerImpl$CRkpBYMx1zWX8MwUk43TTd0pSAA;-><init>(Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl;)V

    const-wide/16 v1, 0x5dc

    invoke-virtual {p1, v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl$TimerHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private handleTimerFinished()V
    .locals 2

    const-string v0, "ShutterTimerManager"

    const-string v1, "handleTimerFinished"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl$TimerState;->IDLE:Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl$TimerState;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl;->mTimerState:Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl$TimerState;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl;->mShutterTimerEventListener:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager$ShutterTimerEventListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl;->mTimerMode:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager$TimerMode;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager$ShutterTimerEventListener;->onShutterTimerFinished(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager$TimerMode;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl;->mShutterTimerCaptureTriggerListener:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager$ShutterTimerCaptureTriggerListener;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager$ShutterTimerCaptureTriggerListener;->onShutterTimerCaptureTriggered()V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->requestShutterTimerCapture()V

    :goto_0
    return-void
.end method

.method private handleTimerTick(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "currentProgressTime"
        }
    .end annotation

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl;->mShutterTimerEventListener:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager$ShutterTimerEventListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl;->mTimerMode:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager$TimerMode;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager$ShutterTimerEventListener;->onShutterTimerStarted(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager$TimerMode;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl;->mTimerCountingEventListener:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager$TimerTickEventListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl;->mTimerMode:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager$TimerMode;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager$TimerMode;->getDuration()I

    move-result v0

    sub-int/2addr v0, p1

    div-int/lit16 v0, v0, 0x3e8

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl;->mTimerCountingEventListener:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager$TimerTickEventListener;

    invoke-interface {v1, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager$TimerTickEventListener;->onTimerTick(I)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl;->mTimerMode:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager$TimerMode;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager$TimerMode;->getDuration()I

    move-result v0

    if-ne p1, v0, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl;->handleTimerFinished()V

    return-void

    :cond_2
    add-int/lit16 p1, p1, 0x3e8

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl;->mTimerHandler:Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl$TimerHandler;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl;->mTimerMode:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager$TimerMode;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager$TimerMode;->ordinal()I

    move-result p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, p0, p1, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl$TimerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private isTimerSupported(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureType;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "captureType"
        }
    .end annotation

    sget-object p0, Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl$1;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$Engine$CaptureType:[I

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureType;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x1

    if-eq p0, p1, :cond_0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return p1
.end method


# virtual methods
.method public cancelShutterTimer()V
    .locals 3

    const-string v0, "ShutterTimerManager"

    const-string v1, "cancelShutterTimer"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl;->mTimerState:Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl$TimerState;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl$TimerState;->IDLE:Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl$TimerState;

    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl;->mTimerState:Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl$TimerState;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl$1;->$SwitchMap$com$samsung$android$app$galaxyraw$engine$ShutterTimerManagerImpl$TimerState:[I

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl$TimerState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$ShutterTimerManagerImpl$D_SdG8Y5sbkxJ4pw343Ltg3gWRw;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$ShutterTimerManagerImpl$D_SdG8Y5sbkxJ4pw343Ltg3gWRw;-><init>(Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->postToUiThread(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl;->mTimerHandler:Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl$TimerHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl$TimerHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getCameraContext()Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "camera.action.SHUTTER_TIMER_CANCELED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/provider/CameraLocalBroadcastManager;->send(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getRequestQueue()Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->START_SHUTTER_TIMER:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->removeRequest(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)Z

    :goto_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->cancelShutterTimerCapture()V

    return-void
.end method

.method public getTimerMode()Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager$TimerMode;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl;->mTimerMode:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager$TimerMode;

    return-object p0
.end method

.method public handleShutterTimer(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputType"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl;->isTimerRunning()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string p0, "ShutterTimerManager"

    const-string p1, "handleShutterTimer : Returned because shutter timer is already running."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl;->getTimerMode(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;)Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager$TimerMode;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl$TimerState;->REQUESTED:Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl$TimerState;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl;->mTimerState:Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl$TimerState;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getRequestQueue()Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->START_SHUTTER_TIMER:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->addRequest(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;Ljava/lang/Object;)V

    return v1
.end method

.method handleShutterTimer(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureType;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "inputType",
            "captureType"
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl;->isTimerSupported(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureType;)Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl;->handleShutterTimer(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;)Z

    move-result p1

    if-nez p1, :cond_1

    return v0

    :cond_1
    const-string p1, "ShutterTimerManager"

    const-string p2, "handleShutterTimer : Shutter timer is started."

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getCameraContext()Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    move-result-object p0

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$HapticPattern;->CAMERA_SHUTTER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$HapticPattern;

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->playHaptic(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$HapticPattern;)V

    const/4 p0, 0x1

    return p0
.end method

.method public isTimerRunning()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl;->mTimerState:Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl$TimerState;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl$TimerState;->REQUESTED:Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl$TimerState;

    if-eq v0, v1, :cond_1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl;->mTimerState:Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl$TimerState;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl$TimerState;->STARTED:Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl$TimerState;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public synthetic lambda$cancelShutterTimer$0$ShutterTimerManagerImpl()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl;->mShutterTimerEventListener:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager$ShutterTimerEventListener;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl;->mTimerMode:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager$TimerMode;

    invoke-interface {v0, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager$ShutterTimerEventListener;->onShutterTimerCanceled(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager$TimerMode;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$handleOneShotTimer$1$ShutterTimerManagerImpl()V
    .locals 1

    const/16 v0, 0x5dc

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl;->handleOneShotTimer(I)V

    return-void
.end method

.method public setShutterTimerCaptureTriggerListener(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager$ShutterTimerCaptureTriggerListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl;->mShutterTimerCaptureTriggerListener:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager$ShutterTimerCaptureTriggerListener;

    return-void
.end method

.method public setShutterTimerEventListener(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager$ShutterTimerEventListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl;->mShutterTimerEventListener:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager$ShutterTimerEventListener;

    return-void
.end method

.method public setTimerCountingEventListener(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager$TimerTickEventListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl;->mTimerCountingEventListener:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager$TimerTickEventListener;

    return-void
.end method

.method public startShutterTimerTick(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager$TimerMode;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timerMode"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startShutterTimerTick : timer mode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ShutterTimerManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl;->mTimerState:Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl$TimerState;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl$TimerState;->IDLE:Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl$TimerState;

    if-ne v0, v2, :cond_0

    const-string p0, "startShutterTimerTick : Returned because timer was already cancelled"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl;->mTimerMode:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager$TimerMode;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl$TimerState;->STARTED:Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl$TimerState;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl;->mTimerState:Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl$TimerState;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "camera.action.SHUTTER_TIMER_STARTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl;->mTimerMode:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager$TimerMode;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager$TimerMode;->getDuration()I

    move-result v1

    const-string v2, "countDownTime"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getCameraContext()Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/samsung/android/app/galaxyraw/provider/CameraLocalBroadcastManager;->send(Landroid/content/Context;Landroid/content/Intent;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl;->mTimerHandler:Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl$TimerHandler;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager$TimerMode;->ordinal()I

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, p1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl$TimerHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method stop()V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl;->isTimerRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl;->cancelShutterTimer()V

    :cond_0
    return-void
.end method
