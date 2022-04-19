.class public interface abstract Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager;
.super Ljava/lang/Object;
.source "ZoomManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomAvailabilityChecker;,
        Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;,
        Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomPositionType;,
        Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;
    }
.end annotation


# virtual methods
.method public abstract clear()V
.end method

.method public abstract disableZoomLevelChangeAnimation(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "disable"
        }
    .end annotation
.end method

.method public abstract extendArea()V
.end method

.method public abstract getButtonAreaVisibleRect()Landroid/graphics/Rect;
.end method

.method public abstract getLensButtonVisibleRect(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lensCommandId"
        }
    .end annotation
.end method

.method public abstract handleGestureEvent(ILcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "direction",
            "inputType"
        }
    .end annotation
.end method

.method public abstract handleKeyDownEvent(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyCode"
        }
    .end annotation
.end method

.method public abstract handleKeyUpEvent(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyCode"
        }
    .end annotation
.end method

.method public abstract hideZoomInMic()V
.end method

.method public abstract hideZoomText(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "duration"
        }
    .end annotation
.end method

.method public abstract isAnimationFinished()Z
.end method

.method public abstract isExtend()Z
.end method

.method public abstract isScaleZoomSupported()Z
.end method

.method public abstract isSliderScrolling()Z
.end method

.method public abstract isZoomAvailable()Z
.end method

.method public abstract isZoomSupported()Z
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

.method public abstract reduceArea()V
.end method

.method public abstract refreshProperty(Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;Ljava/util/EnumSet;Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomPositionType;Ljava/util/List;Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomAvailabilityChecker;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "zoomCategory",
            "supportUiSet",
            "zoomPositionType",
            "buttonList",
            "zoomAvailabilityChecker"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;",
            "Ljava/util/EnumSet<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;",
            ">;",
            "Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomPositionType;",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;",
            "Ljava/lang/Integer;",
            ">;>;",
            "Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomAvailabilityChecker;",
            ")V"
        }
    .end annotation
.end method

.method public abstract resetZoomPositionType()V
.end method

.method public abstract setButtonSelectionStatus(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation
.end method

.method public abstract setZoomPositionType(Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomPositionType;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "zoomPositionType"
        }
    .end annotation
.end method

.method public abstract showZoomInMic()V
.end method

.method public abstract showZoomNotSupportedToast(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resId"
        }
    .end annotation
.end method

.method public abstract startZoomLevelChangeAnimation(Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;II)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "zoomCategory",
            "startZoomValue",
            "endZoomValue"
        }
    .end annotation
.end method

.method public abstract updateZoomInMicProgress(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "progress"
        }
    .end annotation
.end method
