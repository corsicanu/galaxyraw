.class public interface abstract Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProContract$View;
.super Ljava/lang/Object;
.source "ProContract.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModeContract$View;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "View"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModeContract$View<",
        "Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProContract$Presenter;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract hideActiveSlider(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$SliderAnimationType;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animationType"
        }
    .end annotation
.end method

.method public abstract hideCaptureHelpText()V
.end method

.method public abstract hideControlPanel()V
.end method

.method public abstract hideHistogram()V
.end method

.method public abstract hideProcessingShutter()V
.end method

.method public abstract isSliderVisible()Z
.end method

.method public abstract onResetButtonClick()V
.end method

.method public abstract refreshIsoSliderRange()V
.end method

.method public abstract refreshMultiAfButtonVisibility(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "visibility"
        }
    .end annotation
.end method

.method public abstract refreshShutterSpeedSliderRange()V
.end method

.method public abstract resetProView()V
.end method

.method public abstract setProButtonText(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "proItemId",
            "text"
        }
    .end annotation
.end method

.method public abstract showCaptureHelpText()V
.end method

.method public abstract showControlPanel(Z)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "needAnimation"
        }
    .end annotation
.end method

.method public abstract showHistogram()V
.end method

.method public abstract showLongExposureShotWaitToast()V
.end method

.method public abstract showProcessingShutter()V
.end method

.method public abstract startProcessingAnimation(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isMorphAnimationNeeded"
        }
    .end annotation
.end method

.method public abstract updateHistogram([II)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "histogram",
            "maxValue"
        }
    .end annotation
.end method

.method public abstract updateProgressShutterShrinkState(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isShrink"
        }
    .end annotation
.end method
