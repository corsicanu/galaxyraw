.class public interface abstract Lcom/samsung/android/app/galaxyraw/layer/LayerManagerContract$Presenter;
.super Ljava/lang/Object;
.source "LayerManagerContract.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/interfaces/BaseContract$Presenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/layer/LayerManagerContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Presenter"
.end annotation


# virtual methods
.method public abstract getBackgroundLayerPresenter(Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerContract$View;)Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerContract$Presenter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation
.end method

.method public abstract getKeyScreenLayerPresenter(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;)Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$Presenter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation
.end method

.method public abstract getLayerGestureManager()Lcom/samsung/android/app/galaxyraw/layer/LayerPreviewTouchEventManager;
.end method

.method public abstract getLayerKeyEventManager()Lcom/samsung/android/app/galaxyraw/layer/LayerKeyEventManager;
.end method

.method public abstract getMenuLayerPresenter(Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerContract$View;)Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerContract$Presenter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation
.end method

.method public abstract getPopupLayerPresenter(Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerContract$View;)Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerContract$Presenter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation
.end method

.method public abstract getPreviewOverlayLayerPresenter(Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerContract$View;)Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerContract$Presenter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation
.end method

.method public abstract getShootingModeLayerPresenter(Lcom/samsung/android/app/galaxyraw/layer/shootingmode/ShootingModeLayerContract$View;)Lcom/samsung/android/app/galaxyraw/layer/shootingmode/ShootingModeLayerContract$Presenter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation
.end method

.method public abstract getShootingModeOverlayLayerPresenter(Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerContract$View;)Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerContract$Presenter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "shootingModeOverlayLayerView"
        }
    .end annotation
.end method
