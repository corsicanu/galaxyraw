.class public interface abstract Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfContract$View;
.super Ljava/lang/Object;
.source "AeAfContract.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/interfaces/BaseContract$View;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "View"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/android/app/galaxyraw/interfaces/BaseContract$View<",
        "Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfContract$Presenter;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract hideAeAfGroup(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isTransparent"
        }
    .end annotation
.end method

.method public abstract hideDivideAeAfLock()V
.end method

.method public abstract hideDivideAeLock()V
.end method

.method public abstract hideDivideAfLock()V
.end method

.method public abstract hideFocusGuideView()V
.end method

.method public abstract hideObjectTrackingView()V
.end method

.method public abstract isFocusGuidVisible()Z
.end method

.method public abstract setSupportUiSet(Ljava/util/EnumSet;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "supportUiSet"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/PreviewOverlayLayerManager$AeAfSupportUi;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setTouchAeAfText(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "text"
        }
    .end annotation
.end method

.method public abstract showAeAfGroup(IZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "evStep",
            "isAeAfLocked"
        }
    .end annotation
.end method

.method public abstract showDivideAeAfAnimation()V
.end method

.method public abstract showDivideAeLock()V
.end method

.method public abstract showDivideAfLock()V
.end method

.method public abstract showEvSlider()V
.end method

.method public abstract showFocusGuideView(II)V
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

.method public abstract translateEvSliderPosition(Landroid/graphics/Rect;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "boundary"
        }
    .end annotation
.end method

.method public abstract updateAeAfPosition(II)V
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

.method public abstract updateDivideAeAfLockPosition(II)V
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

.method public abstract updateDivideAeLockPosition(II)V
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

.method public abstract updateDivideAfLockPosition(II)V
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

.method public abstract updateObjectTrackingRect(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "trackingRect",
            "cropRegion",
            "sensorRegion",
            "previewLayoutRect"
        }
    .end annotation
.end method
