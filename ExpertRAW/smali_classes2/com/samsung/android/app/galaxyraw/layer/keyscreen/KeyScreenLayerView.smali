.class public Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "KeyScreenLayerView.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;


# instance fields
.field private mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;


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
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerView;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerView;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;

    return-void
.end method

.method public createView()Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;
    .locals 3

    new-instance v0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    check-cast v0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerView;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;

    return-object v0
.end method

.method public disableView(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bitMarker"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerView;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;->disableView(I)V

    return-void
.end method

.method public endShutterProgressWheel()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerView;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;->endShutterProgressWheel()V

    return-void
.end method

.method public getCenterButtonState()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonState;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerView;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;->getCenterButtonState()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonState;

    move-result-object p0

    return-object p0
.end method

.method public getIndicatorManager()Lcom/samsung/android/app/galaxyraw/interfaces/IndicatorManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerView;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;->getIndicatorManager()Lcom/samsung/android/app/galaxyraw/interfaces/IndicatorManager;

    move-result-object p0

    return-object p0
.end method

.method public getKeyEventListener()Lcom/samsung/android/app/galaxyraw/layer/listener/LayerKeyEventListenerAdapter;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerView;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;

    check-cast p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;->getKeyEventListener()Lcom/samsung/android/app/galaxyraw/layer/listener/LayerKeyEventListenerAdapter;

    move-result-object p0

    return-object p0
.end method

.method public getQuickSettingItemVisibleRect(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Landroid/graphics/Rect;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "commandId"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerView;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;->getQuickSettingItemVisibleRect(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public getQuickTakeButtonState()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$QuickTakeButtonState;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerView;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;->getQuickTakeButtonState()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$QuickTakeButtonState;

    move-result-object p0

    return-object p0
.end method

.method public getShootingModeShortcut()Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeShortcut;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerView;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;->getShootingModeShortcut()Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeShortcut;

    move-result-object p0

    return-object p0
.end method

.method public getShutterProgress()F
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerView;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;->getShutterProgress()F

    move-result p0

    return p0
.end method

.method public getViewVisibleRect(I)Landroid/graphics/Rect;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bitMarker"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerView;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;->getViewVisibleRect(I)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public getZoomManager()Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerView;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;->getZoomManager()Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager;

    move-result-object p0

    return-object p0
.end method

.method public hideBurstShotCounter()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerView;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;->hideBurstShotCounter()V

    return-void
.end method

.method public hideProcessingAnimation()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerView;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;->hideProcessingAnimation()V

    return-void
.end method

.method public hideProgressCircle()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerView;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;->hideProgressCircle()V

    return-void
.end method

.method public hideShootingModeList()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerView;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;->hideShootingModeList()V

    return-void
.end method

.method public hideSubView()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerView;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;->hideSubView()Z

    move-result p0

    return p0
.end method

.method public hideView(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bitMarker"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerView;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;->hideView(I)V

    return-void
.end method

.method public initialize()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerView;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;->initialize()V

    return-void
.end method

.method public isCaptureAvailable()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerView;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;->isCaptureAvailable()Z

    move-result p0

    return p0
.end method

.method public isShutterProgressWheelVisible()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerView;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;->isShutterProgressWheelVisible()Z

    move-result p0

    return p0
.end method

.method public isSwitchCameraAvailable()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerView;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;->isSwitchCameraAvailable()Z

    move-result p0

    return p0
.end method

.method public onCenterBackgroundWidthChanged(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "width"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerView;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;->onCenterBackgroundWidthChanged(I)V

    return-void
.end method

.method public onLayerTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerView;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;->onLayerTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

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

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerView;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;->onOrientationChanged(I)V

    return-void
.end method

.method public performHideView(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bitMarker"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerView;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;->performHideView(I)V

    return-void
.end method

.method public performShowView(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bitMarker"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerView;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;->performShowView(I)V

    return-void
.end method

.method public postInitialize()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerView;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;

    check-cast p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/AbstractKeyScreenView;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/AbstractKeyScreenView;->postInitialize()V

    return-void
.end method

.method public refreshCenterButton(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "commandId"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerView;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;->refreshCenterButton(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)V

    return-void
.end method

.method public refreshQuickSetting(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "commandIdList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerView;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;->refreshQuickSetting(Ljava/util/List;)V

    return-void
.end method

.method public refreshView(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "commandId",
            "facing"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerView;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;->refreshView(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;I)V

    return-void
.end method

.method public requestCenterButtonAccessibilityFocus()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerView;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;->requestCenterButtonAccessibilityFocus()V

    return-void
.end method

.method public resetCenterButtonAction()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerView;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;->resetCenterButtonAction()V

    return-void
.end method

.method public resetDisableView()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerView;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;->resetDisableView()V

    return-void
.end method

.method public setAttachMode(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "attachMode"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerView;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;->setAttachMode(Z)V

    return-void
.end method

.method public setCapturingCount(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "captureCount"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerView;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;->setCapturingCount(I)V

    return-void
.end method

.method public setCenterButtonAction(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "centerButtonAction"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonAction;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerView;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;->setCenterButtonAction(Ljava/util/List;)V

    return-void
.end method

.method public setCenterButtonEnabled(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerView;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;->setCenterButtonEnabled(Z)V

    return-void
.end method

.method public setCenterButtonProperty(Landroid/util/Pair;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buttonProperty"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonCapturingResourceType;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerView;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;->setCenterButtonProperty(Landroid/util/Pair;)V

    return-void
.end method

.method public setCenterButtonState(Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonState;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerView;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;->setCenterButtonState(Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonState;)V

    return-void
.end method

.method public setEditButtonClickListener(Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$ShootingModeEditButtonClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerView;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;->setEditButtonClickListener(Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$ShootingModeEditButtonClickListener;)V

    return-void
.end method

.method public bridge synthetic setPresenter(Lcom/samsung/android/app/galaxyraw/interfaces/BaseContract$Presenter;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "presenter"
        }
    .end annotation

    check-cast p1, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$Presenter;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerView;->setPresenter(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$Presenter;)V

    return-void
.end method

.method public setPresenter(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$Presenter;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "presenter"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerView;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;->setPresenter(Lcom/samsung/android/app/galaxyraw/interfaces/BaseContract$Presenter;)V

    return-void
.end method

.method public setQuickTakeButtonState(Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$QuickTakeButtonState;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerView;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;->setQuickTakeButtonState(Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$QuickTakeButtonState;)V

    return-void
.end method

.method public setRecordingMode(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isRecordingMode"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerView;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;->setRecordingMode(Z)V

    return-void
.end method

.method public setRemainCountIndicator(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "remainCount"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerView;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;->setRemainCountIndicator(I)V

    return-void
.end method

.method public setSelfieToneMode(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "selfieToneMode"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerView;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;->setSelfieToneMode(Z)V

    return-void
.end method

.method public setShutterProgress(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "progress"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerView;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;->setShutterProgress(F)V

    return-void
.end method

.method public setShutterProgressWheelAnimationEndListener(Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$ShutterProgressWheelAnimationEndListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerView;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;->setShutterProgressWheelAnimationEndListener(Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$ShutterProgressWheelAnimationEndListener;)V

    return-void
.end method

.method public setSplitViewMode(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "splitViewMode"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerView;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;->setSplitViewMode(Z)V

    return-void
.end method

.method public setVisibility(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "visibility"
        }
    .end annotation

    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerView;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;

    check-cast p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/AbstractKeyScreenView;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/AbstractKeyScreenView;->getCenterButton()Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;

    move-result-object p0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->refreshFloatingShutterButton(Z)V

    return-void
.end method

.method public showBurstShotCounter(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isAnimation"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerView;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;->showBurstShotCounter(Z)V

    return-void
.end method

.method public showProcessingAnimation()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerView;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;->showProcessingAnimation()V

    return-void
.end method

.method public showProgressCircle(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isBackgroundRequired"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerView;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;->showProgressCircle(Z)V

    return-void
.end method

.method public showView(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bitMarker"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerView;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;->showView(I)V

    return-void
.end method

.method public startQuickSettingItemIntroduceAnimation(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "commandId"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerView;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;->startQuickSettingItemIntroduceAnimation(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)V

    return-void
.end method

.method public startShutterProgressWheel()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerView;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;->startShutterProgressWheel()V

    return-void
.end method

.method public translateIndicator(IIIIII)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "portraitX",
            "portraitY",
            "landscapeX",
            "landscapeY",
            "reverseLandscapeX",
            "reverseLandscapeY"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerView;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;->translateIndicator(IIIIII)V

    return-void
.end method

.method public translateShootingModeList(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "direction"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerView;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;->translateShootingModeList(I)V

    return-void
.end method

.method public updateCenterButtonShrinkState(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$CenterButtonShrinkState;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerView;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;->updateCenterButtonShrinkState(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$CenterButtonShrinkState;)V

    return-void
.end method

.method public updateProgressCircle(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "progress"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerView;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;->updateProgressCircle(I)V

    return-void
.end method

.method public updateQuickViewThumbnail()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerView;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;->updateQuickViewThumbnail()V

    return-void
.end method

.method public updateQuickViewThumbnail(Landroid/graphics/Bitmap;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "orientation"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerView;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;->updateQuickViewThumbnail(Landroid/graphics/Bitmap;I)V

    return-void
.end method

.method public updateRemainCounter()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerView;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;->updateRemainCounter()V

    return-void
.end method
