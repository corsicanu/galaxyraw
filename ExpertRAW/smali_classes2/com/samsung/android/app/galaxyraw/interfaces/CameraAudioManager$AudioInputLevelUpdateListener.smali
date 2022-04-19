.class public interface abstract Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager$AudioInputLevelUpdateListener;
.super Ljava/lang/Object;
.source "CameraAudioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AudioInputLevelUpdateListener"
.end annotation


# virtual methods
.method public abstract onAudioInputLevelUpdated(FF)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "leftLevel",
            "rightLevel"
        }
    .end annotation
.end method
