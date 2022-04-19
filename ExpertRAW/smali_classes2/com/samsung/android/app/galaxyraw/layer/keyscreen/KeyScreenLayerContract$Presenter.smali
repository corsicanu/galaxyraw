.class public interface abstract Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$Presenter;
.super Ljava/lang/Object;
.source "KeyScreenLayerContract.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/interfaces/BaseContract$Presenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Presenter"
.end annotation


# virtual methods
.method public abstract getCenterButtonPresenter(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonContract$View;)Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonContract$Presenter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation
.end method

.method public abstract getIndicatorPresenter(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/indicator/IndicatorContract$View;)Lcom/samsung/android/app/galaxyraw/layer/keyscreen/indicator/IndicatorContract$Presenter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation
.end method

.method public abstract getLeftButtonPresenter(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonContract$View;)Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonContract$Presenter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation
.end method

.method public abstract getQuickSettingPresenter(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingContract$View;)Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingContract$Presenter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation
.end method

.method public abstract getRightButtonPresenter(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/rightbutton/RightButtonContract$View;)Lcom/samsung/android/app/galaxyraw/layer/keyscreen/rightbutton/RightButtonContract$Presenter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation
.end method

.method public abstract getShootingModeListPresenter(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListContract$View;)Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListContract$Presenter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation
.end method

.method public abstract getZoomPresenter(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;)Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$Presenter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation
.end method

.method public abstract onBackKeyUp()Z
.end method

.method public abstract onButtonR1KeyUp()V
.end method

.method public abstract onCenterButtonEnabled(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract onHideViewRequested(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bitMarker"
        }
    .end annotation
.end method

.method public abstract onShowViewRequested(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bitMarker"
        }
    .end annotation
.end method

.method public abstract onUpdateRemainCounterRequested()V
.end method
