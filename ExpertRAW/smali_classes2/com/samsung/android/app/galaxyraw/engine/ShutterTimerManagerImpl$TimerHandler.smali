.class Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl$TimerHandler;
.super Landroid/os/Handler;
.source "ShutterTimerManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TimerHandler"
.end annotation


# instance fields
.field private final mShutterTimerManager:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "shutterTimerManager"
        }
    .end annotation

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl$TimerHandler;->mShutterTimerManager:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl;Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl$TimerHandler;-><init>(Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl$TimerHandler;->mShutterTimerManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl;->access$100(Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl;)Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getCameraContext()Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "ShutterTimerManager"

    const-string v0, "handleMessage return - Camera is not running"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl;->cancelShutterTimer()V

    return-void

    :cond_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->what:I

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager$TimerMode;->TIMER_ONESHOT:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager$TimerMode;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager$TimerMode;->ordinal()I

    move-result v1

    if-ne p1, v1, :cond_1

    invoke-static {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl;->access$200(Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl;I)V

    goto :goto_0

    :cond_1
    invoke-static {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl;->access$300(Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl;I)V

    :goto_0
    return-void
.end method
