.class public interface abstract Lcom/samsung/android/app/galaxyraw/interfaces/PreviewOverlayLayerManager;
.super Ljava/lang/Object;
.source "PreviewOverlayLayerManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/interfaces/PreviewOverlayLayerManager$AeAfSupportUi;
    }
.end annotation


# virtual methods
.method public abstract enableBottomBackground(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract enableFaceRectView(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract enableInclinometerView(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract enableLevelMeterView(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract enableMultiAfView(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract getFaceCount()I
.end method

.method public abstract hideAeAfView()V
.end method

.method public abstract hideFaceRectView()V
.end method

.method public abstract hideMultiAfView()V
.end method

.method public abstract hidePalmRect()V
.end method

.method public abstract hideQrRectView()V
.end method

.method public abstract hideRecordingAfLockedIndicator()V
.end method

.method public abstract refreshAeAfProperty(Ljava/util/EnumSet;)V
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

.method public abstract requestAeAfTouch(Landroid/view/MotionEvent;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation
.end method

.method public abstract resetBottomBackground(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animation"
        }
    .end annotation
.end method

.method public abstract resetFaceRectView()V
.end method

.method public abstract setBottomBackgroundPosition(II)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "top",
            "animationDuration"
        }
    .end annotation
.end method

.method public abstract setFaceRectAutoHideEnabled(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setFaceRectColor(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation
.end method

.method public abstract setFaceRectThickness(F)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "thickness"
        }
    .end annotation
.end method

.method public abstract showAeAfLockedIndicator()V
.end method

.method public abstract showMultiAfView()V
.end method

.method public abstract updateFaceRect([Landroid/graphics/Rect;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "faces"
        }
    .end annotation
.end method

.method public abstract updateGuideLineSize(Landroid/graphics/Rect;Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "previewRect",
            "isVisible"
        }
    .end annotation
.end method

.method public abstract updatePalmRect(Landroid/graphics/Rect;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "palm"
        }
    .end annotation
.end method

.method public abstract updateQrRectView(Landroid/graphics/RectF;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newRect"
        }
    .end annotation
.end method
