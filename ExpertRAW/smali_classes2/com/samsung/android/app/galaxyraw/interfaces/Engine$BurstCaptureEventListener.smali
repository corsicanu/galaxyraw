.class public interface abstract Lcom/samsung/android/app/galaxyraw/interfaces/Engine$BurstCaptureEventListener;
.super Ljava/lang/Object;
.source "Engine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/interfaces/Engine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "BurstCaptureEventListener"
.end annotation


# virtual methods
.method public abstract onBurstCaptureCompleted()V
.end method

.method public abstract onBurstCaptureProgress(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "progress"
        }
    .end annotation
.end method

.method public abstract onBurstCaptureStarted()V
.end method
