.class public Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/EmptyZoomView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "EmptyZoomView.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyleAttr"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    return-void
.end method

.method public disableZoomLevelChangeAnimation(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "disable"
        }
    .end annotation

    return-void
.end method

.method public extendArea()V
    .locals 0

    return-void
.end method

.method public getButtonAreaVisibleRect()Landroid/graphics/Rect;
    .locals 0

    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    return-object p0
.end method

.method public getLensButtonVisibleRect(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Landroid/graphics/Rect;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lensCommandId"
        }
    .end annotation

    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    return-object p0
.end method

.method public handleGestureEvent(ILcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;)Z
    .locals 0
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

    const/4 p0, 0x0

    return p0
.end method

.method public handleKeyDownEvent(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyCode"
        }
    .end annotation

    return-void
.end method

.method public handleKeyUpEvent(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyCode"
        }
    .end annotation

    return-void
.end method

.method public hideZoomInMic()V
    .locals 0

    return-void
.end method

.method public hideZoomText(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "duration"
        }
    .end annotation

    return-void
.end method

.method public isAnimationFinished()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isExtend()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isScaleZoomSupported()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSliderScrolling()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isZoomAvailable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isZoomSupported()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onOrientationChanged(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "orientation"
        }
    .end annotation

    return-void
.end method

.method public reduceArea()V
    .locals 0

    return-void
.end method

.method public refreshProperty(Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;Ljava/util/EnumSet;Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomPositionType;Ljava/util/List;Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomAvailabilityChecker;)V
    .locals 0
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

    return-void
.end method

.method public resetZoomPositionType()V
    .locals 0

    return-void
.end method

.method public setButtonSelectionStatus(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    return-void
.end method

.method public setZoomPositionType(Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomPositionType;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "zoomPositionType"
        }
    .end annotation

    return-void
.end method

.method public showZoomInMic()V
    .locals 0

    return-void
.end method

.method public showZoomNotSupportedToast(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resId"
        }
    .end annotation

    return-void
.end method

.method public startZoomLevelChangeAnimation(Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;II)V
    .locals 0
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

    return-void
.end method

.method public updateZoomInMicProgress(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "progress"
        }
    .end annotation

    return-void
.end method
