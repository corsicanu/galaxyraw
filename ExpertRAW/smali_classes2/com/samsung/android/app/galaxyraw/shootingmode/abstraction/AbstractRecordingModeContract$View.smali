.class public interface abstract Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModeContract$View;
.super Ljava/lang/Object;
.source "AbstractRecordingModeContract.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModeContract$View;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModeContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "View"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P::",
        "Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModeContract$Presenter;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModeContract$View<",
        "TP;>;"
    }
.end annotation


# virtual methods
.method public abstract updatePauseRecordingLayout()V
.end method

.method public abstract updateRecordingTime(JI)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "recordingTime",
            "maxRecordingTime"
        }
    .end annotation
.end method

.method public abstract updateResumeRecordingLayout()V
.end method

.method public abstract updateStartRecordingLayout()V
.end method

.method public abstract updateStopRecordingLayout()V
.end method
