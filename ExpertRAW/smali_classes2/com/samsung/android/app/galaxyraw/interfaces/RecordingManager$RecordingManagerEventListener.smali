.class public interface abstract Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingManagerEventListener;
.super Ljava/lang/Object;
.source "RecordingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RecordingManagerEventListener"
.end annotation


# virtual methods
.method public abstract onCancelRecordingRequested()V
.end method

.method public abstract onRecordingEvent(Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingEvent;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation
.end method

.method public abstract onRecordingMaxDurationReached()V
.end method

.method public abstract onRecordingMaxFileSizeReached()V
.end method

.method public abstract onRecordingRestricted(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isRestricted"
        }
    .end annotation
.end method

.method public abstract onRecordingTick(JJ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "elapsedTime",
            "fileSize"
        }
    .end annotation
.end method

.method public abstract onStopRecordingRequested()V
.end method

.method public abstract onVideoDBUpdatePreparedEvent(Landroid/content/ContentValues;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "values"
        }
    .end annotation
.end method

.method public abstract onVideoSaved()V
.end method
