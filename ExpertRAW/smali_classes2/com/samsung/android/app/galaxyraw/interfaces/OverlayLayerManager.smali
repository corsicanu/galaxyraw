.class public interface abstract Lcom/samsung/android/app/galaxyraw/interfaces/OverlayLayerManager;
.super Ljava/lang/Object;
.source "OverlayLayerManager.java"


# virtual methods
.method public abstract hideBackButton()V
.end method

.method public abstract hideFloatingShutterButton(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isFloatingButtonEnable"
        }
    .end annotation
.end method

.method public abstract hideScreenFlashAnimation()V
.end method

.method public abstract hideTimer()V
.end method

.method public abstract hideVoiceRecognitionNotice()V
.end method

.method public abstract isScreenFlashAnimationRunning()Z
.end method

.method public abstract setFloatingShutterButtonEnabled(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation
.end method

.method public abstract showBackButton()V
.end method

.method public abstract showFloatingShutterButton()V
.end method

.method public abstract showTimer()V
.end method

.method public abstract showVoiceRecognitionNotice()V
.end method

.method public abstract startDisplayCutoutAnimation()V
.end method

.method public abstract startScreenFlashAnimation()V
.end method

.method public abstract updateFloatingButtonPosition(II)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "posX",
            "posY"
        }
    .end annotation
.end method
