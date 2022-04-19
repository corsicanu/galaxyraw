.class public interface abstract Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$Presenter;
.super Ljava/lang/Object;
.source "ZoomContract.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/interfaces/BaseContract$Presenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Presenter"
.end annotation


# virtual methods
.method public abstract onAnimationValueChanged(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animatedValue"
        }
    .end annotation
.end method

.method public abstract onBottomGuideLineChanged()V
.end method

.method public abstract onFlingScrollEnd()V
.end method

.method public abstract onGestureEventRequested(ILcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;)Z
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

.method public abstract onLensButtonClick(ILcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "buttonValue",
            "commandId"
        }
    .end annotation
.end method

.method public abstract onLensButtonToSliderChangeRequested()V
.end method

.method public abstract onLevelButtonClick(ILcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomPositionType;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ZoomLevel",
            "zoomPositionType"
        }
    .end annotation
.end method

.method public abstract onReachZoomBar(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$HapticPattern;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pattern"
        }
    .end annotation
.end method

.method public abstract onRefreshBackgroundRequested(Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomPositionType;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "zoomPositionType",
            "top"
        }
    .end annotation
.end method

.method public abstract onRefreshPropertyRequested(Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;Ljava/util/EnumSet;Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomPositionType;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "zoomCategory",
            "supportUiSet",
            "zoomPositionType",
            "buttonList"
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
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract onSALogControlZoomRequested(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputType"
        }
    .end annotation
.end method

.method public abstract onSALogLensTypeRequested(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "zoomLevel"
        }
    .end annotation
.end method

.method public abstract onSALogRequested(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "commandId"
        }
    .end annotation
.end method

.method public abstract onSALogShortCutRequested(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "zoomLevel"
        }
    .end annotation
.end method

.method public abstract onSALogStartToZoomRequested(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputType"
        }
    .end annotation
.end method

.method public abstract onScrollBackwardRequested()V
.end method

.method public abstract onScrollChanged(II)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "scrollX",
            "zoomLevel"
        }
    .end annotation
.end method

.method public abstract onScrollEnd()V
.end method

.method public abstract onScrollForwardRequested()V
.end method

.method public abstract onScrollStart()V
.end method

.method public abstract onShortcutShowRequested()V
.end method

.method public abstract onTouchEventRequested()Z
.end method

.method public abstract onZoomAreaExtendRequested(Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomPositionType;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "zoomPositionType"
        }
    .end annotation
.end method

.method public abstract onZoomKeyDownRequested(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyCode"
        }
    .end annotation
.end method

.method public abstract onZoomKeyUpRequested(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyCode"
        }
    .end annotation
.end method

.method public abstract onZoomLevelAnimationCanceled()V
.end method

.method public abstract onZoomLevelChangeAnimationEnd()V
.end method

.method public abstract onZoomLevelChangeAnimationStart()V
.end method

.method public abstract onZoomShortcutDataPrepared(Landroid/util/SparseIntArray;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "centerPosArray"
        }
    .end annotation
.end method

.method public abstract onZoomShortcutHide()V
.end method

.method public abstract onZoomSliderHide(Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomPositionType;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "mCurrentZoomCategory",
            "zoomPositionType"
        }
    .end annotation
.end method
