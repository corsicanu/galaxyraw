.class abstract Lcom/samsung/android/app/galaxyraw/layer/keyscreen/AbstractKeyScreenView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "AbstractKeyScreenView.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;
.implements Lcom/samsung/android/app/galaxyraw/layer/keyscreen/listener/LastViewScrollChangeListener;


# instance fields
.field protected mAttachMode:Z

.field protected mPresenter:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$Presenter;

.field protected mSelfieToneMode:Z

.field protected mSplitViewMode:Z

.field protected final mViewArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/AbstractMap$SimpleEntry<",
            "Landroid/view/View;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/AbstractKeyScreenView;->mViewArray:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/AbstractKeyScreenView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic lambda$getViewVisibleRect$0(Ljava/util/AbstractMap$SimpleEntry;)Ljava/util/Optional;
    .locals 0

    invoke-virtual {p0}, Ljava/util/AbstractMap$SimpleEntry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$getViewVisibleRect$1(Landroid/view/View;)Z
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$getViewVisibleRect$2(Landroid/graphics/Rect;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p1, p0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    return-void
.end method


# virtual methods
.method public disableView(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bitMarker"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/AbstractKeyScreenView;->mViewArray:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/AbstractKeyScreenView;->mViewArray:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    and-int/2addr v2, p1

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/AbstractKeyScreenView;->mViewArray:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/AbstractKeyScreenView;->mViewArray:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/AbstractMap$SimpleEntry;

    invoke-virtual {v2}, Ljava/util/AbstractMap$SimpleEntry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/AbstractKeyScreenView;->mViewArray:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/AbstractMap$SimpleEntry;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/AbstractMap$SimpleEntry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public endShutterProgressWheel()V
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/AbstractKeyScreenView;->setCenterButtonEnabled(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/AbstractKeyScreenView;->getProgressCircleBackground()Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/AbstractKeyScreenView;->getShutterProgressWheel()Lcom/samsung/android/app/galaxyraw/widget/ShutterProgressWheel;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/widget/ShutterProgressWheel;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/AbstractKeyScreenView;->getShutterProgressWheel()Lcom/samsung/android/app/galaxyraw/widget/ShutterProgressWheel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/widget/ShutterProgressWheel;->isShutterProgressAnimationRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/AbstractKeyScreenView;->getShutterProgressWheel()Lcom/samsung/android/app/galaxyraw/widget/ShutterProgressWheel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/widget/ShutterProgressWheel;->cancelShutterProgressAnimation()V

    :cond_0
    return-void
.end method

.method protected abstract getCellDivisionAnimationView()Lcom/airbnb/lottie/LottieAnimationView;
.end method

.method final getCellDivisionAnimator(Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonState;Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonState;)Landroid/animation/ValueAnimator;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "state",
            "previousState"
        }
    .end annotation

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonState;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonState;->CAPTURING:Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonState;

    if-ne p2, v0, :cond_1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonState;->PAUSING:Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonState;

    if-ne p1, v0, :cond_1

    return-object v1

    :cond_1
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonState;->PAUSING:Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonState;

    if-ne p2, v0, :cond_2

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonState;->CAPTURING:Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonState;

    if-ne p1, p2, :cond_2

    return-object v1

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/AbstractKeyScreenView;->getCenterButton()Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->getButtonProperty()Landroid/util/Pair;

    move-result-object p2

    iget-object p2, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonCapturingResourceType;->PAUSE_STOP:Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonCapturingResourceType;

    if-ne p2, v0, :cond_5

    sget-object p2, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/AbstractKeyScreenView$3;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$KeyScreenLayerManager$CenterButtonState:[I

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonState;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 v0, 0x2

    if-eq p1, p2, :cond_4

    if-eq p1, v0, :cond_3

    return-object v1

    :cond_3
    new-array p1, v0, [F

    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    goto :goto_0

    :cond_4
    new-array p1, v0, [F

    fill-array-data p1, :array_1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    :goto_0
    new-instance p2, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/-$$Lambda$AbstractKeyScreenView$NpUhjYwMRD691AL37o4uhb4av4A;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/-$$Lambda$AbstractKeyScreenView$NpUhjYwMRD691AL37o4uhb4av4A;-><init>(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/AbstractKeyScreenView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance p2, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/AbstractKeyScreenView$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/AbstractKeyScreenView$2;-><init>(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/AbstractKeyScreenView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object p1

    :cond_5
    return-object v1

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method protected abstract getCenterButton()Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;
.end method

.method public getCenterButtonState()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonState;
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/AbstractKeyScreenView;->getCenterButton()Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->getCenterButtonState()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonState;

    move-result-object p0

    return-object p0
.end method

.method public abstract getIndicatorManager()Lcom/samsung/android/app/galaxyraw/interfaces/IndicatorManager;
.end method

.method protected abstract getKeyEventListener()Lcom/samsung/android/app/galaxyraw/layer/listener/LayerKeyEventListenerAdapter;
.end method

.method protected abstract getLeftButton()Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonView;
.end method

.method protected abstract getProcessingAnimationView()Lcom/airbnb/lottie/LottieAnimationView;
.end method

.method protected abstract getProgressCircle()Lcom/samsung/android/app/galaxyraw/widget/ProgressCircle;
.end method

.method protected abstract getProgressCircleBackground()Landroid/widget/ImageView;
.end method

.method protected abstract getQuickSettingView()Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;
.end method

.method public getQuickTakeButtonState()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$QuickTakeButtonState;
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/AbstractKeyScreenView;->getCenterButton()Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->getQuickTakeButtonState()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$QuickTakeButtonState;

    move-result-object p0

    return-object p0
.end method

.method protected abstract getRightButton()Lcom/samsung/android/app/galaxyraw/layer/keyscreen/rightbutton/RightButtonView;
.end method

.method protected abstract getShootingModeBackground()Landroid/widget/ImageView;
.end method

.method protected abstract getShootingModeListLayout()Landroid/widget/FrameLayout;
.end method

.method public abstract getShootingModeShortcut()Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeShortcut;
.end method

.method public getShutterProgress()F
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/AbstractKeyScreenView;->getShutterProgressWheel()Lcom/samsung/android/app/galaxyraw/widget/ShutterProgressWheel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/widget/ShutterProgressWheel;->getProgress()F

    move-result p0

    const v0, 0x40666666    # 3.6f

    div-float/2addr p0, v0

    return p0
.end method

.method protected abstract getShutterProgressWheel()Lcom/samsung/android/app/galaxyraw/widget/ShutterProgressWheel;
.end method

.method public getViewVisibleRect(I)Landroid/graphics/Rect;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bitMarker"
        }
    .end annotation

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/AbstractKeyScreenView;->mViewArray:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/AbstractMap$SimpleEntry;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    sget-object p1, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/-$$Lambda$AbstractKeyScreenView$naADDTSAHL5Q9DVO8z5mVO85td4;->INSTANCE:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/-$$Lambda$AbstractKeyScreenView$naADDTSAHL5Q9DVO8z5mVO85td4;

    invoke-virtual {p0, p1}, Ljava/util/Optional;->flatMap(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    sget-object p1, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/-$$Lambda$AbstractKeyScreenView$CdqGzSvsMn8X0F4YeApjQPQg2Xk;->INSTANCE:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/-$$Lambda$AbstractKeyScreenView$CdqGzSvsMn8X0F4YeApjQPQg2Xk;

    invoke-virtual {p0, p1}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/-$$Lambda$AbstractKeyScreenView$lqdghAk7Xyx2HjMvvbYoLD67L08;

    invoke-direct {p1, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/-$$Lambda$AbstractKeyScreenView$lqdghAk7Xyx2HjMvvbYoLD67L08;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-object v0
.end method

.method protected handleKeyUpEvent(ILandroid/view/KeyEvent;)Z
    .locals 2
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

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :pswitch_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/AbstractKeyScreenView;->getShootingModeListLayout()Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/AbstractKeyScreenView;->getShootingModeShortcut()Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeShortcut;

    move-result-object p0

    const/4 p1, 0x3

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeShortcut;->translateList(I)V

    :cond_0
    return v1

    :pswitch_1
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/AbstractKeyScreenView;->getShootingModeListLayout()Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/AbstractKeyScreenView;->getShootingModeShortcut()Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeShortcut;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeShortcut;->translateList(I)V

    :cond_1
    return v1

    :pswitch_2
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/AbstractKeyScreenView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$Presenter;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$Presenter;->onButtonR1KeyUp()V

    return v1

    :cond_2
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/AbstractKeyScreenView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$Presenter;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$Presenter;->onBackKeyUp()Z

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x67
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public hideProcessingAnimation()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/AbstractKeyScreenView;->setCenterButtonEnabled(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/AbstractKeyScreenView;->getProcessingAnimationView()Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/AbstractKeyScreenView;->getProcessingAnimationView()Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/AbstractKeyScreenView;->getProcessingAnimationView()Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object p0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setVisibility(I)V

    return-void
.end method

.method public hideProgressCircle()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/AbstractKeyScreenView;->setCenterButtonEnabled(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/AbstractKeyScreenView;->getProgressCircle()Lcom/samsung/android/app/galaxyraw/widget/ProgressCircle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/widget/ProgressCircle;->hide()V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/AbstractKeyScreenView;->getProgressCircleBackground()Landroid/widget/ImageView;

    move-result-object p0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
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

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/AbstractKeyScreenView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$Presenter;

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$Presenter;->onHideViewRequested(I)V

    return-void
.end method

.method protected abstract initView(Landroid/content/Context;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation
.end method

.method protected initializeMainButton()V
    .locals 5

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/AbstractKeyScreenView;->getCenterButton()Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/AbstractKeyScreenView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$Presenter;

    invoke-interface {v1, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$Presenter;->getCenterButtonPresenter(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonContract$View;)Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonContract$Presenter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->setPresenter(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonContract$Presenter;)V

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->initialize()V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/AbstractKeyScreenView;->mViewArray:Landroid/util/SparseArray;

    new-instance v2, Ljava/util/AbstractMap$SimpleEntry;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, v0, v4}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/AbstractKeyScreenView;->getRightButton()Lcom/samsung/android/app/galaxyraw/layer/keyscreen/rightbutton/RightButtonView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/AbstractKeyScreenView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$Presenter;

    invoke-interface {v1, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$Presenter;->getRightButtonPresenter(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/rightbutton/RightButtonContract$View;)Lcom/samsung/android/app/galaxyraw/layer/keyscreen/rightbutton/RightButtonContract$Presenter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/rightbutton/RightButtonView;->setPresenter(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/rightbutton/RightButtonContract$Presenter;)V

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/rightbutton/RightButtonView;->initialize()V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/AbstractKeyScreenView;->mViewArray:Landroid/util/SparseArray;

    new-instance v2, Ljava/util/AbstractMap$SimpleEntry;

    invoke-direct {v2, v0, v4}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x2

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/AbstractKeyScreenView;->getLeftButton()Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonView;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/AbstractKeyScreenView;->mAttachMode:Z

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonView;->setAttachMode(Z)V

    iget-boolean v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/AbstractKeyScreenView;->mAttachMode:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/AbstractKeyScreenView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$Presenter;

    invoke-interface {v1, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$Presenter;->getLeftButtonPresenter(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonContract$View;)Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonContract$Presenter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonView;->setPresenter(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonContract$Presenter;)V

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonView;->initialize()V

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/AbstractKeyScreenView;->mViewArray:Landroid/util/SparseArray;

    const/4 v1, 0x4

    new-instance v2, Ljava/util/AbstractMap$SimpleEntry;

    invoke-direct {v2, v0, v4}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public isCaptureAvailable()Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/AbstractKeyScreenView;->getZoomManager()Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager;->isExtend()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/AbstractKeyScreenView;->getCenterButton()Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->isEnabled()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isShutterProgressWheelVisible()Z
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/AbstractKeyScreenView;->getShutterProgressWheel()Lcom/samsung/android/app/galaxyraw/widget/ShutterProgressWheel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/widget/ShutterProgressWheel;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSwitchCameraAvailable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public synthetic lambda$getCellDivisionAnimator$3$AbstractKeyScreenView(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/AbstractKeyScreenView;->getCellDivisionAnimationView()Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object p0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    return-void
.end method

.method public onCenterBackgroundWidthChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "width"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/AbstractKeyScreenView;->getShootingModeBackground()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v0, p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/AbstractKeyScreenView;->getShootingModeBackground()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/AbstractKeyScreenView;->getShootingModeBackground()Landroid/widget/ImageView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public onLayerTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/AbstractKeyScreenView;->hideSubView()Z

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public performHideView(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bitMarker"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/AbstractKeyScreenView;->mViewArray:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/AbstractKeyScreenView;->mViewArray:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    and-int/2addr v1, p1

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/AbstractKeyScreenView;->mViewArray:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/AbstractKeyScreenView;->mViewArray:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/AbstractMap$SimpleEntry;

    invoke-virtual {v1}, Ljava/util/AbstractMap$SimpleEntry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/AbstractKeyScreenView;->mViewArray:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/AbstractMap$SimpleEntry;

    invoke-virtual {v1}, Ljava/util/AbstractMap$SimpleEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public performShowView(I)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bitMarker"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/AbstractKeyScreenView;->mViewArray:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/AbstractKeyScreenView;->mViewArray:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    and-int/2addr v2, p1

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/AbstractKeyScreenView;->mViewArray:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/AbstractKeyScreenView;->mViewArray:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/AbstractMap$SimpleEntry;

    invoke-virtual {v2}, Ljava/util/AbstractMap$SimpleEntry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/AbstractKeyScreenView;->mViewArray:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/AbstractMap$SimpleEntry;

    invoke-virtual {v2}, Ljava/util/AbstractMap$SimpleEntry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_0
    const v3, 0x3ee66666    # 0.45f

    :goto_1
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v3, 0xc8

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    goto :goto_2

    :cond_1
    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method protected abstract postInitialize()V
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

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/AbstractKeyScreenView;->getCenterButton()Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->refreshButton(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)V

    return-void
.end method

.method public requestCenterButtonAccessibilityFocus()V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/AbstractKeyScreenView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/util/VoiceAssistantManager;->isTtsEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/AbstractKeyScreenView;->getCenterButton()Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/AbstractKeyScreenView$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/AbstractKeyScreenView$1;-><init>(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/AbstractKeyScreenView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    return-void
.end method

.method public resetDisableView()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/AbstractKeyScreenView;->mViewArray:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/AbstractKeyScreenView;->mViewArray:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/AbstractMap$SimpleEntry;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/AbstractMap$SimpleEntry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
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

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/AbstractKeyScreenView;->mAttachMode:Z

    return-void
.end method

.method public setCenterButtonEnabled(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/AbstractKeyScreenView;->getCenterButton()Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/AbstractKeyScreenView;->getCenterButton()Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/AbstractKeyScreenView;->getCenterButton()Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->setAlpha(F)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/AbstractKeyScreenView;->getCenterButton()Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;

    move-result-object v0

    const v1, 0x3ee66666    # 0.45f

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->setAlpha(F)V

    :goto_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/AbstractKeyScreenView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$Presenter;

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$Presenter;->onCenterButtonEnabled(Z)V

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

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/AbstractKeyScreenView;->getCenterButton()Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->setButtonProperty(Landroid/util/Pair;)V

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

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/AbstractKeyScreenView;->setPresenter(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$Presenter;)V

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

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/AbstractKeyScreenView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$Presenter;

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

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/AbstractKeyScreenView;->getCenterButton()Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->setQuickTakeButtonState(Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$QuickTakeButtonState;)V

    return-void
.end method

.method public setRecordingMode(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isRecordingMode"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/AbstractKeyScreenView;->getCenterButton()Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->setRecordingMode(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/AbstractKeyScreenView;->getLeftButton()Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonView;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonView;->setRecordingMode(Z)V

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

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/AbstractKeyScreenView;->mSelfieToneMode:Z

    return-void
.end method

.method public setShutterProgress(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "progress"
        }
    .end annotation

    const v0, 0x40666666    # 3.6f

    mul-float/2addr p1, v0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/AbstractKeyScreenView;->getShutterProgressWheel()Lcom/samsung/android/app/galaxyraw/widget/ShutterProgressWheel;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/widget/ShutterProgressWheel;->setProgress(F)V

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

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/AbstractKeyScreenView;->getShutterProgressWheel()Lcom/samsung/android/app/galaxyraw/widget/ShutterProgressWheel;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/widget/ShutterProgressWheel;->setShutterProgressWheelAnimationEndListener(Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$ShutterProgressWheelAnimationEndListener;)V

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

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/AbstractKeyScreenView;->mSplitViewMode:Z

    return-void
.end method

.method public showProcessingAnimation()V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/AbstractKeyScreenView;->setCenterButtonEnabled(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/AbstractKeyScreenView;->getProcessingAnimationView()Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/AbstractKeyScreenView;->getProcessingAnimationView()Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    return-void
.end method

.method public showProgressCircle(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isBackgroundRequired"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/AbstractKeyScreenView;->setCenterButtonEnabled(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/AbstractKeyScreenView;->getProgressCircle()Lcom/samsung/android/app/galaxyraw/widget/ProgressCircle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/widget/ProgressCircle;->show()V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/AbstractKeyScreenView;->getProgressCircleBackground()Landroid/widget/ImageView;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
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

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/AbstractKeyScreenView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$Presenter;

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$Presenter;->onShowViewRequested(I)V

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

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/AbstractKeyScreenView;->getQuickSettingView()Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;->startQuickSettingItemIntroduceAnimation(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)V

    return-void
.end method

.method public startShutterProgressWheel()V
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/AbstractKeyScreenView;->setCenterButtonEnabled(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/AbstractKeyScreenView;->getProgressCircleBackground()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/AbstractKeyScreenView;->getShutterProgressWheel()Lcom/samsung/android/app/galaxyraw/widget/ShutterProgressWheel;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/AbstractKeyScreenView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b003d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/galaxyraw/widget/ShutterProgressWheel;->setAnimationDuration(I)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/AbstractKeyScreenView;->getShutterProgressWheel()Lcom/samsung/android/app/galaxyraw/widget/ShutterProgressWheel;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/galaxyraw/widget/ShutterProgressWheel;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/AbstractKeyScreenView;->getShutterProgressWheel()Lcom/samsung/android/app/galaxyraw/widget/ShutterProgressWheel;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/widget/ShutterProgressWheel;->setProgress(F)V

    return-void
.end method

.method public translateIndicator(IIIIII)V
    .locals 0
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

    return-void
.end method

.method public updateProgressCircle(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "progress"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/AbstractKeyScreenView;->getProgressCircle()Lcom/samsung/android/app/galaxyraw/widget/ProgressCircle;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/AbstractKeyScreenView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f0b00a0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    mul-int/2addr p1, p0

    div-int/lit8 p1, p1, 0x64

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/galaxyraw/widget/ProgressCircle;->updateProgress(I)V

    return-void
.end method

.method public updateQuickViewThumbnail()V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/AbstractKeyScreenView;->getLeftButton()Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonView;->updateQuickViewThumbnail()V

    return-void
.end method

.method public updateQuickViewThumbnail(Landroid/graphics/Bitmap;I)V
    .locals 1
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

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/AbstractKeyScreenView;->getLeftButton()Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonView;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonView;->updateQuickViewThumbnail(Landroid/graphics/Bitmap;IZ)V

    return-void
.end method

.method public updateRemainCounter()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/AbstractKeyScreenView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$Presenter;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$Presenter;->onUpdateRemainCounterRequested()V

    return-void
.end method
