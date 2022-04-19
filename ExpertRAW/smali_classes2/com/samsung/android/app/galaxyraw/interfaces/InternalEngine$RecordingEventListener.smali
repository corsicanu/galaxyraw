.class public interface abstract Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$RecordingEventListener;
.super Ljava/lang/Object;
.source "InternalEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RecordingEventListener"
.end annotation


# virtual methods
.method public abstract onBackgroundRecordingStopped()V
.end method

.method public abstract onMediaRecorderPrepared()V
.end method

.method public abstract onMediaRecorderReleased()V
.end method

.method public abstract onRecordingCancelled()V
.end method

.method public abstract onRecordingFailed(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "error"
        }
    .end annotation
.end method

.method public abstract onRecordingPaused()V
.end method

.method public abstract onRecordingResumed()V
.end method

.method public abstract onRecordingStarted()V
.end method

.method public abstract onRecordingStopped()V
.end method

.method public abstract onStartVideoPreviewRequested()V
.end method
