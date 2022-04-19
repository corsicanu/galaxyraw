.class public interface abstract Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager$ShutterTimerEventListener;
.super Ljava/lang/Object;
.source "Engine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ShutterTimerEventListener"
.end annotation


# virtual methods
.method public abstract onShutterTimerCanceled(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager$TimerMode;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timerMode"
        }
    .end annotation
.end method

.method public abstract onShutterTimerFinished(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager$TimerMode;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timerMode"
        }
    .end annotation
.end method

.method public abstract onShutterTimerStarted(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager$TimerMode;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timerMode"
        }
    .end annotation
.end method
