.class public Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;
.super Lcom/samsung/android/app/galaxyraw/layer/keyscreen/AbstractKeyScreenView;
.source "NormalKeyScreenView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NormalKeyScreenView"


# instance fields
.field private mCenterButtonShrinkState:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$CenterButtonShrinkState;

.field private mIndicatorOrientationData:Lcom/samsung/android/app/galaxyraw/data/IndicatorOrientationData;

.field private mNormalViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBinding;

.field private mOrientation:I

.field private mShootingModeEditButtonClickListener:Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$ShootingModeEditButtonClickListener;

.field private mShootingModeEditButtonShowing:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/AbstractKeyScreenView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;->mShootingModeEditButtonShowing:Z

    sget-object p1, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$CenterButtonShrinkState;->IDLE:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$CenterButtonShrinkState;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;->mCenterButtonShrinkState:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$CenterButtonShrinkState;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;)Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBinding;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;->mNormalViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBinding;

    return-object p0
.end method

.method private hideEditButton()V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;->mShootingModeEditButtonShowing:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;->mShootingModeEditButtonShowing:Z

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;->mNormalViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBinding;->shootingModeEditButton:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeEditButton;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeEditButton;->setVisibility(I)V

    return-void
.end method

.method private initializeIndicator()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;->mNormalViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBinding;->indicator:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/indicator/IndicatorView;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$Presenter;

    invoke-interface {v1, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$Presenter;->getIndicatorPresenter(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/indicator/IndicatorContract$View;)Lcom/samsung/android/app/galaxyraw/layer/keyscreen/indicator/IndicatorContract$Presenter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/indicator/IndicatorView;->setPresenter(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/indicator/IndicatorContract$Presenter;)V

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/indicator/IndicatorView;->initialize()V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;->mViewArray:Landroid/util/SparseArray;

    new-instance v1, Ljava/util/AbstractMap$SimpleEntry;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v0, 0x10

    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method private initializeQuickSetting()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;->mNormalViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBinding;->quickSettingStub:Landroidx/databinding/ViewStubProxy;

    invoke-virtual {v0}, Landroidx/databinding/ViewStubProxy;->getViewStub()Landroid/view/ViewStub;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;->mNormalViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBinding;->quickSettingStub:Landroidx/databinding/ViewStubProxy;

    invoke-virtual {v1}, Landroidx/databinding/ViewStubProxy;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;->setViewBinding(Landroidx/databinding/ViewDataBinding;)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$Presenter;

    invoke-interface {v1, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$Presenter;->getQuickSettingPresenter(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingContract$View;)Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingContract$Presenter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;->setPresenter(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingContract$Presenter;)V

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;->initialize()V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;->mViewArray:Landroid/util/SparseArray;

    new-instance v1, Ljava/util/AbstractMap$SimpleEntry;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v0, 0x8

    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method private initializeShootingModeEditButton()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;->mNormalViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBinding;->shootingModeEditButton:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeEditButton;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/-$$Lambda$NormalKeyScreenView$y7qTo3Fyyz1yeaH6XtTIx8Xq620;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/-$$Lambda$NormalKeyScreenView$y7qTo3Fyyz1yeaH6XtTIx8Xq620;-><init>(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeEditButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initializeShootingModeList()V
    .locals 4

    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;->mAttachMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;->mNormalViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBinding;->shootingModeList:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView;->setVisibility(I)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;->mNormalViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBinding;->shootingModeListArea:Landroid/widget/FrameLayout;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;->mNormalViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBinding;->shootingModeList:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$Presenter;

    invoke-interface {v1, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$Presenter;->getShootingModeListPresenter(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListContract$View;)Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListContract$Presenter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView;->setPresenter(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListContract$Presenter;)V

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView;->initialize()V

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView;->setLastViewScrollChangeListener(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/listener/LastViewScrollChangeListener;)V

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView;->setCenterBackgroundWidthChangeListener(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/listener/CenterBackgroundWidthChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;->mViewArray:Landroid/util/SparseArray;

    const/16 v1, 0x20

    new-instance v2, Ljava/util/AbstractMap$SimpleEntry;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;->mNormalViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBinding;->shootingModeListArea:Landroid/widget/FrameLayout;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method private initializeZoom()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;->mNormalViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBinding;->zoomStub:Landroidx/databinding/ViewStubProxy;

    invoke-virtual {v0}, Landroidx/databinding/ViewStubProxy;->getViewStub()Landroid/view/ViewStub;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;->mNormalViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBinding;->zoomStub:Landroidx/databinding/ViewStubProxy;

    invoke-virtual {v1}, Landroidx/databinding/ViewStubProxy;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->setViewBinding(Landroidx/databinding/ViewDataBinding;)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$Presenter;

    invoke-interface {v1, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$Presenter;->getZoomPresenter(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;)Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$Presenter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->setPresenter(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$Presenter;)V

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->initialize()V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;->mViewArray:Landroid/util/SparseArray;

    new-instance v1, Ljava/util/AbstractMap$SimpleEntry;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v0, 0x40

    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method private setCenterButtonMargin(Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonState;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;->mNormalViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBinding;->centerButton:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView$3;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$KeyScreenLayerManager$CenterButtonState:[I

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonState;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f070035

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;->mNormalViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBinding;->centerButton:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f070034

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;->mNormalViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBinding;->centerButton:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void
.end method

.method private showEditButton()V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;->mShootingModeEditButtonShowing:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;->mShootingModeEditButtonShowing:Z

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;->mNormalViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBinding;->shootingModeEditButton:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeEditButton;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeEditButton;->show()V

    return-void
.end method

.method private startCenterButtonShrinkAnimation(FJLandroid/animation/TimeInterpolator;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "scale",
            "scaleDuration",
            "interpolator"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;->mNormalViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBinding;->cellDivisionAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setScaleX(F)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;->mNormalViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBinding;->cellDivisionAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setScaleY(F)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;->mNormalViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBinding;->centerButton:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;->mNormalViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBinding;->centerButton:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->setPivotY(F)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;->mNormalViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBinding;->centerButton:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p4

    invoke-virtual {p4, p1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p4

    invoke-virtual {p4, p1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p4

    new-instance v0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView$2;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView$2;-><init>(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;F)V

    invoke-virtual {p4, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p4

    float-to-double v0, p1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double p1, v0, v2

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f070033

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    :goto_0
    invoke-virtual {p4, p0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method private updateIndicatorOrientationPosition()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;->mIndicatorOrientationData:Lcom/samsung/android/app/galaxyraw/data/IndicatorOrientationData;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/-$$Lambda$NormalKeyScreenView$GuWK6EgpeWVdm6uGdLI9dRfBWbM;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/-$$Lambda$NormalKeyScreenView$GuWK6EgpeWVdm6uGdLI9dRfBWbM;-><init>(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;->mNormalViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBinding;->centerButton:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->clear()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;->mNormalViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBinding;->rightButton:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/rightbutton/RightButtonView;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/rightbutton/RightButtonView;->clear()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;->mNormalViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBinding;->leftButton:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonView;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonView;->clear()V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;->getQuickSettingView()Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;->clear()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;->mNormalViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBinding;->indicator:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/indicator/IndicatorView;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/indicator/IndicatorView;->clear()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;->mNormalViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBinding;->shootingModeList:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView;->clear()V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;->getZoomManager()Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;->mNormalViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBinding;

    return-void
.end method

.method public createView()Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic disableView(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "bitMarker"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/AbstractKeyScreenView;->disableView(I)V

    return-void
.end method

.method public bridge synthetic endShutterProgressWheel()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/AbstractKeyScreenView;->endShutterProgressWheel()V

    return-void
.end method

.method protected getCellDivisionAnimationView()Lcom/airbnb/lottie/LottieAnimationView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;->mNormalViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBinding;->cellDivisionAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    return-object p0
.end method

.method protected getCenterButton()Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;->mNormalViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBinding;->centerButton:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;

    return-object p0
.end method

.method public bridge synthetic getCenterButtonState()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonState;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/AbstractKeyScreenView;->getCenterButtonState()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonState;

    move-result-object p0

    return-object p0
.end method

.method public getIndicatorManager()Lcom/samsung/android/app/galaxyraw/interfaces/IndicatorManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;->mNormalViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBinding;->indicator:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/indicator/IndicatorView;

    return-object p0
.end method

.method protected getKeyEventListener()Lcom/samsung/android/app/galaxyraw/layer/listener/LayerKeyEventListenerAdapter;
    .locals 1

    new-instance v0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView$1;-><init>(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;)V

    return-object v0
.end method

.method protected getLeftButton()Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;->mNormalViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBinding;->leftButton:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonView;

    return-object p0
.end method

.method protected getProcessingAnimationView()Lcom/airbnb/lottie/LottieAnimationView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;->mNormalViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBinding;->processingAnimation:Lcom/airbnb/lottie/LottieAnimationView;

    return-object p0
.end method

.method protected getProgressCircle()Lcom/samsung/android/app/galaxyraw/widget/ProgressCircle;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;->mNormalViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBinding;->progressCircle:Lcom/samsung/android/app/galaxyraw/widget/ProgressCircle;

    return-object p0
.end method

.method protected getProgressCircleBackground()Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;->mNormalViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBinding;->progressCircleBackground:Landroid/widget/ImageView;

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

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;->getQuickSettingView()Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;->getQuickSettingItemVisibleRect(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method protected getQuickSettingView()Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;->mNormalViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBinding;->quickSettingStub:Landroidx/databinding/ViewStubProxy;

    invoke-virtual {v0}, Landroidx/databinding/ViewStubProxy;->isInflated()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;->initializeQuickSetting()V

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;->mViewArray:Landroid/util/SparseArray;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/AbstractMap$SimpleEntry;

    invoke-virtual {p0}, Ljava/util/AbstractMap$SimpleEntry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;

    return-object p0
.end method

.method public bridge synthetic getQuickTakeButtonState()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$QuickTakeButtonState;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/AbstractKeyScreenView;->getQuickTakeButtonState()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$QuickTakeButtonState;

    move-result-object p0

    return-object p0
.end method

.method protected getRightButton()Lcom/samsung/android/app/galaxyraw/layer/keyscreen/rightbutton/RightButtonView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;->mNormalViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBinding;->rightButton:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/rightbutton/RightButtonView;

    return-object p0
.end method

.method protected getShootingModeBackground()Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;->mNormalViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBinding;->shootingModeBackground:Landroid/widget/ImageView;

    return-object p0
.end method

.method protected getShootingModeListLayout()Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;->mNormalViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBinding;->shootingModeListArea:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method public getShootingModeShortcut()Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeShortcut;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;->mNormalViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBinding;->shootingModeList:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView;

    return-object p0
.end method

.method public bridge synthetic getShutterProgress()F
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/AbstractKeyScreenView;->getShutterProgress()F

    move-result p0

    return p0
.end method

.method protected getShutterProgressWheel()Lcom/samsung/android/app/galaxyraw/widget/ShutterProgressWheel;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;->mNormalViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBinding;->shutterProgressWheel:Lcom/samsung/android/app/galaxyraw/widget/ShutterProgressWheel;

    return-object p0
.end method

.method public bridge synthetic getViewVisibleRect(I)Landroid/graphics/Rect;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "bitMarker"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/AbstractKeyScreenView;->getViewVisibleRect(I)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public getZoomManager()Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;->mNormalViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBinding;->zoomStub:Landroidx/databinding/ViewStubProxy;

    invoke-virtual {v0}, Landroidx/databinding/ViewStubProxy;->isInflated()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;->initializeZoom()V

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;->mViewArray:Landroid/util/SparseArray;

    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/AbstractMap$SimpleEntry;

    invoke-virtual {p0}, Ljava/util/AbstractMap$SimpleEntry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager;

    return-object p0
.end method

.method public hideBurstShotCounter()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;->mNormalViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBinding;->centerButton:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->hideBurstShotCountNumber()V

    return-void
.end method

.method public bridge synthetic hideProcessingAnimation()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/AbstractKeyScreenView;->hideProcessingAnimation()V

    return-void
.end method

.method public bridge synthetic hideProgressCircle()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/AbstractKeyScreenView;->hideProgressCircle()V

    return-void
.end method

.method public hideShootingModeList()V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;->mNormalViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBinding;->shootingModeList:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView;->setVisibility(I)V

    return-void
.end method

.method public hideSubView()Z
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;->getZoomManager()Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager;->isExtend()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;->getZoomManager()Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager;->reduceArea()V

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;->getQuickSettingView()Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;->isSubQuickSettingActive()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;->getQuickSettingView()Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;->hideSubQuickSetting()V

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    return v1
.end method

.method public bridge synthetic hideView(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "bitMarker"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/AbstractKeyScreenView;->hideView(I)V

    return-void
.end method

.method protected initView(Landroid/content/Context;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "inflate : Start["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "NormalKeyScreenView"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, p0, v0}, Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;->mNormalViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBinding;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "inflate : End["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;->getCenterButtonState()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonState;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;->setCenterButtonMargin(Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonState;)V

    return-void
.end method

.method public initialize()V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;->mSelfieToneMode:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;->setVisibility(I)V

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;->initializeShootingModeList()V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;->initializeShootingModeEditButton()V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;->initializeMainButton()V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;->initializeIndicator()V

    return-void
.end method

.method public bridge synthetic isCaptureAvailable()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/AbstractKeyScreenView;->isCaptureAvailable()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isShutterProgressWheelVisible()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/AbstractKeyScreenView;->isShutterProgressWheelVisible()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isSwitchCameraAvailable()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/AbstractKeyScreenView;->isSwitchCameraAvailable()Z

    move-result p0

    return p0
.end method

.method public synthetic lambda$initializeShootingModeEditButton$0$NormalKeyScreenView(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;->mShootingModeEditButtonClickListener:Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$ShootingModeEditButtonClickListener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$ShootingModeEditButtonClickListener;->onShootingModeEditButtonClick()V

    :cond_0
    return-void
.end method

.method public synthetic lambda$updateIndicatorOrientationPosition$1$NormalKeyScreenView(Lcom/samsung/android/app/galaxyraw/data/IndicatorOrientationData;)V
    .locals 3

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;->mNormalViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBinding;->indicator:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/indicator/IndicatorView;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/indicator/IndicatorView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;->mIndicatorOrientationData:Lcom/samsung/android/app/galaxyraw/data/IndicatorOrientationData;

    iget v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/data/IndicatorOrientationData;->getTranslationPair(I)Landroid/util/Pair;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070257

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p1, v1}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->setMarginEnd(I)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070259

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topMargin:I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;->mNormalViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBinding;->indicator:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/indicator/IndicatorView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/indicator/IndicatorView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;->mNormalViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBinding;->indicator:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/indicator/IndicatorView;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/indicator/IndicatorView;->requestLayout()V

    return-void
.end method

.method public bridge synthetic onCenterBackgroundWidthChanged(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "width"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/AbstractKeyScreenView;->onCenterBackgroundWidthChanged(I)V

    return-void
.end method

.method public onFirstTimeLastViewCentered()V
    .locals 0

    return-void
.end method

.method public onLastViewScrollChanged(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lastView"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;->getWidth()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;->getWidth()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    return-void
.end method

.method public bridge synthetic onLayerTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "event"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/AbstractKeyScreenView;->onLayerTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onOrientationChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "orientation"
        }
    .end annotation

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;->mOrientation:I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;->mNormalViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBinding;->rightButton:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/rightbutton/RightButtonView;

    int-to-float v1, p1

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/util/AnimationUtil;->rotationAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;->mNormalViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBinding;->leftButton:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonView;

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/util/AnimationUtil;->rotationAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;->mNormalViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBinding;->shutterProgressWheel:Lcom/samsung/android/app/galaxyraw/widget/ShutterProgressWheel;

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/util/AnimationUtil;->rotationAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;->getZoomManager()Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager;->onOrientationChanged(I)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;->getQuickSettingView()Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;->onOrientationChanged(I)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;->mNormalViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBinding;->centerButton:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->onOrientationChanged(I)V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;->updateIndicatorOrientationPosition()V

    return-void
.end method

.method public bridge synthetic performHideView(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "bitMarker"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/AbstractKeyScreenView;->performHideView(I)V

    return-void
.end method

.method public bridge synthetic performShowView(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "bitMarker"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/AbstractKeyScreenView;->performShowView(I)V

    return-void
.end method

.method protected postInitialize()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;->mNormalViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBinding;->quickSettingStub:Landroidx/databinding/ViewStubProxy;

    invoke-virtual {v0}, Landroidx/databinding/ViewStubProxy;->isInflated()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;->initializeQuickSetting()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;->mNormalViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBinding;->zoomStub:Landroidx/databinding/ViewStubProxy;

    invoke-virtual {v0}, Landroidx/databinding/ViewStubProxy;->isInflated()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;->initializeZoom()V

    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;->mAttachMode:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;->getLeftButton()Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonView;->registerAssistantMenu()V

    :cond_2
    return-void
.end method

.method public bridge synthetic refreshCenterButton(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "commandId"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/AbstractKeyScreenView;->refreshCenterButton(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)V

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

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;->getQuickSettingView()Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;->refreshQuickSetting(Ljava/util/List;)V

    return-void
.end method

.method public refreshView(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;I)V
    .locals 3
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

    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;->mAttachMode:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;->mSelfieToneMode:Z

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->isMoreMode(Landroid/content/Context;Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-eqz v0, :cond_1

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;->mNormalViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBinding;

    iget-object p2, p2, Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBinding;->shootingModeBackground:Landroid/widget/ImageView;

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;->mNormalViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBinding;

    iget-object p2, p2, Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBinding;->shootingModeList:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView;

    invoke-virtual {p2, v2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView;->setVisibility(I)V

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;->mNormalViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBinding;

    iget-object p2, p2, Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBinding;->moreModeTitle:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;->getTitleId()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;->mNormalViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBinding;->moreModeTitle:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;->mNormalViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBinding;->shootingModeEditButton:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeEditButton;

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeEditButton;->setVisibility(I)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;->mNormalViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBinding;->shootingModeBackground:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;->mNormalViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBinding;->shootingModeList:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;->mNormalViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBinding;->shootingModeList:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;->mNormalViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBinding;->shootingModeList:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView;->translateList(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)V

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;->mNormalViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBinding;->moreModeTitle:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;->mNormalViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBinding;->rightButton:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/rightbutton/RightButtonView;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x1

    if-ne p2, v0, :cond_3

    const p2, 0x7f120459

    goto :goto_0

    :cond_3
    const p2, 0x7f12045b

    :goto_0
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/rightbutton/RightButtonView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public bridge synthetic requestCenterButtonAccessibilityFocus()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/AbstractKeyScreenView;->requestCenterButtonAccessibilityFocus()V

    return-void
.end method

.method public resetCenterButtonAction()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;->mNormalViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBinding;->centerButton:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->resetCenterButtonAction()V

    return-void
.end method

.method public bridge synthetic resetDisableView()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/AbstractKeyScreenView;->resetDisableView()V

    return-void
.end method

.method public bridge synthetic setAttachMode(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "attachMode"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/AbstractKeyScreenView;->setAttachMode(Z)V

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

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;->mNormalViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBinding;->centerButton:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->setCapturingProgress(I)V

    return-void
.end method

.method public setCenterButtonAction(Ljava/util/List;)V
    .locals 1
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

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonAction;->SWIPE_UP:Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonAction;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;->mNormalViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBinding;->centerButton:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->enableSwipeUpAction()V

    :cond_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonAction;->SWIPE_DOWN:Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonAction;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;->mNormalViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBinding;->centerButton:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->enableSwipeDownAction()V

    :cond_1
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonAction;->LONG_PRESS:Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonAction;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;->mNormalViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBinding;->centerButton:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->enableLongPressAction()V

    :cond_2
    return-void
.end method

.method public setCenterButtonEnabled(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/AbstractKeyScreenView;->setCenterButtonEnabled(Z)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;->mCenterButtonShrinkState:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$CenterButtonShrinkState;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$CenterButtonShrinkState;->SHRINK:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$CenterButtonShrinkState;

    if-eq p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;->getCenterButton()Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->setScaleX(F)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;->getCenterButton()Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->setScaleY(F)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;->getCenterButton()Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->setTranslationY(F)V

    :cond_0
    return-void
.end method

.method public bridge synthetic setCenterButtonProperty(Landroid/util/Pair;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "buttonProperty"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/AbstractKeyScreenView;->setCenterButtonProperty(Landroid/util/Pair;)V

    return-void
.end method

.method public setCenterButtonState(Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonState;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;->mNormalViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBinding;->centerButton:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->getCenterButtonState()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonState;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;->getCellDivisionAnimator(Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonState;Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonState;)Landroid/animation/ValueAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;->mNormalViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBinding;->centerButton:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;

    invoke-virtual {v1, p1, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->updateButton(Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonState;Landroid/animation/ValueAnimator;)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;->mNormalViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBinding;->leftButton:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonView;

    invoke-virtual {v1, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonView;->updateButton(Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonState;)V

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;->setCenterButtonMargin(Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonState;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;->mNormalViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBinding;->cellDivisionAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setVisibility(I)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
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

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;->mShootingModeEditButtonClickListener:Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$ShootingModeEditButtonClickListener;

    return-void
.end method

.method public bridge synthetic setPresenter(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$Presenter;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "presenter"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/AbstractKeyScreenView;->setPresenter(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$Presenter;)V

    return-void
.end method

.method public bridge synthetic setQuickTakeButtonState(Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$QuickTakeButtonState;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "state"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/AbstractKeyScreenView;->setQuickTakeButtonState(Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$QuickTakeButtonState;)V

    return-void
.end method

.method public bridge synthetic setRecordingMode(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "isRecordingMode"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/AbstractKeyScreenView;->setRecordingMode(Z)V

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

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;->mNormalViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBinding;->indicator:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/indicator/IndicatorView;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/indicator/IndicatorView;->setRemainCountIndicator(I)V

    return-void
.end method

.method public bridge synthetic setSelfieToneMode(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "selfieToneMode"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/AbstractKeyScreenView;->setSelfieToneMode(Z)V

    return-void
.end method

.method public bridge synthetic setShutterProgress(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "progress"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/AbstractKeyScreenView;->setShutterProgress(F)V

    return-void
.end method

.method public bridge synthetic setShutterProgressWheelAnimationEndListener(Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$ShutterProgressWheelAnimationEndListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "listener"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/AbstractKeyScreenView;->setShutterProgressWheelAnimationEndListener(Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$ShutterProgressWheelAnimationEndListener;)V

    return-void
.end method

.method public bridge synthetic setSplitViewMode(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "splitViewMode"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/AbstractKeyScreenView;->setSplitViewMode(Z)V

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

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;->mNormalViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBinding;->centerButton:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->showBurstShotCountNumber(Z)V

    return-void
.end method

.method public bridge synthetic showProcessingAnimation()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/AbstractKeyScreenView;->showProcessingAnimation()V

    return-void
.end method

.method public bridge synthetic showProgressCircle(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "isBackgroundRequired"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/AbstractKeyScreenView;->showProgressCircle(Z)V

    return-void
.end method

.method public bridge synthetic showView(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "bitMarker"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/AbstractKeyScreenView;->showView(I)V

    return-void
.end method

.method public bridge synthetic startQuickSettingItemIntroduceAnimation(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "commandId"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/AbstractKeyScreenView;->startQuickSettingItemIntroduceAnimation(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)V

    return-void
.end method

.method public bridge synthetic startShutterProgressWheel()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/AbstractKeyScreenView;->startShutterProgressWheel()V

    return-void
.end method

.method public translateIndicator(IIIIII)V
    .locals 8
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

    new-instance v7, Lcom/samsung/android/app/galaxyraw/data/IndicatorOrientationData;

    move-object v0, v7

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/app/galaxyraw/data/IndicatorOrientationData;-><init>(IIIIII)V

    iput-object v7, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;->mIndicatorOrientationData:Lcom/samsung/android/app/galaxyraw/data/IndicatorOrientationData;

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;->updateIndicatorOrientationPosition()V

    return-void
.end method

.method public translateShootingModeList(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "direction"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;->getShootingModeListLayout()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;->mNormalViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBinding;->shootingModeList:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView;->translateList(I)V

    :cond_0
    return-void
.end method

.method public updateCenterButtonShrinkState(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$CenterButtonShrinkState;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;->mCenterButtonShrinkState:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$CenterButtonShrinkState;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;->mCenterButtonShrinkState:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$CenterButtonShrinkState;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    :goto_0
    sget-object v2, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$CenterButtonShrinkState;->SHRINK:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$CenterButtonShrinkState;

    if-ne p1, v2, :cond_2

    const/high16 p1, 0x3f400000    # 0.75f

    new-instance v2, Lcom/samsung/android/view/animation/SineInOut60;

    invoke-direct {v2}, Lcom/samsung/android/view/animation/SineInOut60;-><init>()V

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;->startCenterButtonShrinkAnimation(FJLandroid/animation/TimeInterpolator;)V

    goto :goto_1

    :cond_2
    const/high16 p1, 0x3f800000    # 1.0f

    new-instance v2, Lcom/samsung/android/view/animation/SineInOut60;

    invoke-direct {v2}, Lcom/samsung/android/view/animation/SineInOut60;-><init>()V

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;->startCenterButtonShrinkAnimation(FJLandroid/animation/TimeInterpolator;)V

    :goto_1
    return-void
.end method

.method public bridge synthetic updateProgressCircle(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "progress"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/AbstractKeyScreenView;->updateProgressCircle(I)V

    return-void
.end method

.method public bridge synthetic updateQuickViewThumbnail()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/AbstractKeyScreenView;->updateQuickViewThumbnail()V

    return-void
.end method

.method public bridge synthetic updateQuickViewThumbnail(Landroid/graphics/Bitmap;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "data",
            "orientation"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/AbstractKeyScreenView;->updateQuickViewThumbnail(Landroid/graphics/Bitmap;I)V

    return-void
.end method

.method public bridge synthetic updateRemainCounter()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/AbstractKeyScreenView;->updateRemainCounter()V

    return-void
.end method
