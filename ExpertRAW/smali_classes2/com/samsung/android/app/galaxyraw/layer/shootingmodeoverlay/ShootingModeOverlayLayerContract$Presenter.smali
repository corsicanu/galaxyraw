.class public interface abstract Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerContract$Presenter;
.super Ljava/lang/Object;
.source "ShootingModeOverlayLayerContract.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/interfaces/BaseContract$Presenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Presenter"
.end annotation


# virtual methods
.method public abstract createDisplayCutoutPresenter(Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/displaycutout/DisplayCutoutContract$View;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation
.end method

.method public abstract createFloatShutterButtonPresenter(Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/floatingshutterbutton/FloatingShutterButtonContract$View;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation
.end method

.method public abstract createTimerPresenter(Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerContract$View;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation
.end method

.method public abstract onBackButtonClick()V
.end method

.method public abstract onFloatingShutterButtonClick()Z
.end method

.method public abstract onHideScreenFlashRequested()V
.end method

.method public abstract onStartDisplayCutoutAnimationRequested()V
.end method

.method public abstract onStartScreenFlashRequested()V
.end method

.method public abstract onTimerHideRequested()V
.end method

.method public abstract onTimerShowRequested()V
.end method
