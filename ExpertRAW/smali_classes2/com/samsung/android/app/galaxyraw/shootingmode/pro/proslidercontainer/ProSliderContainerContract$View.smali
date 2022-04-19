.class public interface abstract Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$View;
.super Ljava/lang/Object;
.source "ProSliderContainerContract.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/interfaces/BaseContract$View;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "View"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/android/app/galaxyraw/interfaces/BaseContract$View<",
        "Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$Presenter;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract cancelAnimation()V
.end method

.method public abstract changeWhiteBalanceIconImage(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "kelvinValue"
        }
    .end annotation
.end method

.method public abstract hide(ILcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$SliderAnimationType;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "proItemId",
            "animationType"
        }
    .end annotation
.end method

.method public abstract initApertureValue(ZI)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "isApertureSupported",
            "aperture"
        }
    .end annotation
.end method

.method public abstract isAutoMode(I)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "proItemId"
        }
    .end annotation
.end method

.method public abstract isSliderVisible(I)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sliderId"
        }
    .end annotation
.end method

.method public abstract onProControlPanelItemClicked(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation
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

.method public abstract setApertureValue(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "aperture"
        }
    .end annotation
.end method

.method public abstract setAutoButtonEnabled(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setIsoSliderRange(Landroid/util/Range;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "range"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setShutterSpeedSliderRange(Landroid/util/Range;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "range"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setSliderText(ILjava/lang/String;)V
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

.method public abstract showAutoMode(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "proItemId"
        }
    .end annotation
.end method

.method public abstract showManualMode(II)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "proItemId",
            "sliderValue"
        }
    .end annotation
.end method

.method public abstract updateMultiAfButtonSelection(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "selected"
        }
    .end annotation
.end method
