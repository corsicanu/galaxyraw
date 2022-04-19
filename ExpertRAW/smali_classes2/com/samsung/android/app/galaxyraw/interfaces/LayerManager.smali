.class public interface abstract Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;
.super Ljava/lang/Object;
.source "LayerManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager$ViewOrientationEventListener;
    }
.end annotation


# virtual methods
.method public abstract getKeyScreenLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;
.end method

.method public abstract getMenuLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/MenuLayerManager;
.end method

.method public abstract getOrientation()I
.end method

.method public abstract getOverlayLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/OverlayLayerManager;
.end method

.method public abstract getPopupLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager;
.end method

.method public abstract getPreviewAnimationLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/PreviewAnimationLayerManager;
.end method

.method public abstract getPreviewOverlayLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/PreviewOverlayLayerManager;
.end method

.method public abstract getScaleGestureDetector()Landroid/view/ScaleGestureDetector;
.end method

.method public abstract getScaleUpDownGestureDetector()Landroid/view/ScaleGestureDetector;
.end method

.method public abstract getShootingModeLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeLayerManager;
.end method

.method public abstract getViewVisibilityEventManager()Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager;
.end method

.method public abstract hidePopupLayerBackground()V
.end method

.method public abstract hideShootingModeLayerBackground()V
.end method

.method public abstract onKeyDown(ILandroid/view/KeyEvent;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyCode",
            "event"
        }
    .end annotation
.end method

.method public abstract onKeyUp(ILandroid/view/KeyEvent;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyCode",
            "event"
        }
    .end annotation
.end method

.method public abstract onLowMemory(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lowMemoryWarning"
        }
    .end annotation
.end method

.method public abstract onOrientationChanged(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "orientation"
        }
    .end annotation
.end method

.method public abstract setKeyScreenLayerVisibility(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isVisible"
        }
    .end annotation
.end method

.method public abstract setLayerScaleEventListener(Lcom/samsung/android/app/galaxyraw/layer/listener/LayerScaleEventListener;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation
.end method

.method public abstract setPreviewOverlayLayerVisibility(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isVisible"
        }
    .end annotation
.end method

.method public abstract setShootingModeLayerVisibility(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isVisible"
        }
    .end annotation
.end method

.method public abstract showPopupLayerBackground(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "backgroundColor"
        }
    .end annotation
.end method

.method public abstract showShootingModeLayerBackground(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "backgroundColor"
        }
    .end annotation
.end method
