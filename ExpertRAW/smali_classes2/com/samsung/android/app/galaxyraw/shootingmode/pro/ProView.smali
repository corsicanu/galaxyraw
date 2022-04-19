.class public Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;
.super Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModeView;
.source "ProView.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProContract$View;
.implements Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView$ControlPanelEventListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView$ProSliderButtonClickedListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModeView<",
        "Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProContract$Presenter;",
        ">;",
        "Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProContract$View;",
        "Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView$ControlPanelEventListener;",
        "Landroid/view/View$OnTouchListener;",
        "Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView$ProSliderButtonClickedListener;"
    }
.end annotation


# static fields
.field private static final NO_ACTIVE_SLIDER_ID:I = -0x1

.field private static final TAG:Ljava/lang/String; = "ProView"


# instance fields
.field private mActiveSliderId:I

.field protected mBaseContractViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/BaseContract$View;",
            ">;"
        }
    .end annotation
.end field

.field private mIsProShutterShrink:Z

.field private mProItemIdsPositionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mToast:Landroid/widget/Toast;

.field private mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;

.field private previousViewHolder:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;


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

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModeView;-><init>(Landroid/content/Context;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->mBaseContractViews:Ljava/util/List;

    const/4 p1, -0x1

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->mActiveSliderId:I

    new-instance p1, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView$1;-><init>(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;)V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->mProItemIdsPositionList:Ljava/util/ArrayList;

    return-void
.end method

.method private cancelLongExposureShotWaitToast()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->mToast:Landroid/widget/Toast;

    return-void
.end method

.method private collapseControlPanel()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;->proControlPanel:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;->proControlPanel:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$ControlPanelState;->COLLAPSE:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$ControlPanelState;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->updateControlPanelState(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$ControlPanelState;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;->selectLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;->resetButton:Landroid/widget/ImageButton;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    return-void
.end method

.method private initView()V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;->topGuideline:Landroidx/constraintlayout/widget/Guideline;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/FloatTag;->TOP_GUIDE_LINE:Lcom/samsung/android/app/galaxyraw/feature/FloatTag;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/FloatTag;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/Guideline;->setGuidelinePercent(F)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;->bottomGuideline:Landroidx/constraintlayout/widget/Guideline;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/FloatTag;->BOTTOM_GUIDE_LINE:Lcom/samsung/android/app/galaxyraw/feature/FloatTag;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/FloatTag;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/Guideline;->setGuidelinePercent(F)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;->setProView(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProContract$View;)V

    invoke-virtual {p0, p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public static synthetic lambda$ZgAMvvz1jnt2kFd2xBF9KlLa2Ss(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->onSliderValueChanged(II)V

    return-void
.end method

.method private onSliderValueChanged(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "proItemId",
            "step"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->mPresenter:Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModeContract$Presenter;

    check-cast v0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProContract$Presenter;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProContract$Presenter;->onSliderValueChanged(II)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;->proControlPanel:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->setItemData(II)V

    return-void
.end method

.method private setItemSelected(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->previousViewHolder:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;->setSelected(Z)V

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;->setSelected(Z)V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->previousViewHolder:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;

    return-void
.end method

.method private startProShrinkAnimation(F)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scale"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;->proShutter:Lcom/samsung/android/app/galaxyraw/widget/ProShutter;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;->shutterArea:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/widget/ProShutter;->setPivotY(F)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;->proShutter:Lcom/samsung/android/app/galaxyraw/widget/ProShutter;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/widget/ProShutter;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    new-instance v0, Lcom/samsung/android/app/galaxyraw/util/interpolator/SineInOut60;

    invoke-direct {v0}, Lcom/samsung/android/app/galaxyraw/util/interpolator/SineInOut60;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v0, 0xc8

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method private updateCaptureTextOrientation(I)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "orientation"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;->captureHelpText:Landroid/widget/RelativeLayout;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setRotation(F)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;->captureHelpText:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    const/16 v1, -0x5a

    const v2, 0x7f080855

    const/high16 v3, 0x40000000    # 2.0f

    const v4, 0x7f070257

    const/4 v5, 0x0

    if-eq p1, v1, :cond_2

    if-eqz p1, :cond_1

    const/16 v1, 0x5a

    if-eq p1, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;->captureHelpText:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;->shootingModeProMain:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v6, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;

    iget-object v6, v6, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;->captureHelpText:Landroid/widget/RelativeLayout;

    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v6

    iget-object v7, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;

    iget-object v7, v7, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;->captureHelpText:Landroid/widget/RelativeLayout;

    invoke-virtual {v7}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    div-float/2addr v6, v3

    sub-float/2addr v1, v6

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;

    iget-object v3, v3, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;->captureHelpText:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v1, v3

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    sub-float/2addr v1, v3

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setX(F)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;->captureHelpText:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2, v5}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;->topGuideline:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {p1}, Landroidx/constraintlayout/widget/Guideline;->getId()I

    move-result p1

    iput p1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;->bottomGuideline:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/Guideline;->getId()I

    move-result p0

    iput p0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;->captureHelpText:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setTranslationX(F)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;->captureHelpText:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v5}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;->bottomGuideline:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/Guideline;->getId()I

    move-result p0

    iput p0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    const/4 p0, -0x1

    iput p0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;->captureHelpText:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;

    iget-object v4, v4, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;->captureHelpText:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v4

    iget-object v6, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;

    iget-object v6, v6, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;->captureHelpText:Landroid/widget/RelativeLayout;

    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v6

    sub-int/2addr v4, v6

    int-to-float v4, v4

    div-float/2addr v4, v3

    sub-float/2addr v1, v4

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setX(F)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;->captureHelpText:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2, v5}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;->topGuideline:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {p1}, Landroidx/constraintlayout/widget/Guideline;->getId()I

    move-result p1

    iput p1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;->bottomGuideline:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/Guideline;->getId()I

    move-result p0

    iput p0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    :goto_0
    return-void
.end method

.method private updateHistogramOrientation(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "orientation"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;->histogramLayout:Landroid/widget/FrameLayout;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setRotation(F)V

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;->histogramLayout:Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;->histogramLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;->histogramLayout:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;->shootingModeProMain:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;->histogramLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;

    iget-object v2, v2, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;->histogramLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;->histogramLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f070257

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setX(F)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;->histogramLayout:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;->topGuideline:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {v0}, Landroidx/constraintlayout/widget/Guideline;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;->histogramLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;

    iget-object v3, v3, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;->histogramLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v3

    sub-int/2addr v1, v3

    int-to-float v1, v1

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f070259

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    add-float/2addr v0, p0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setY(F)V

    :goto_0
    return-void
.end method


# virtual methods
.method public hideActiveSlider(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$SliderAnimationType;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animationType"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;->proSliderContainer:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;

    iget v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->mActiveSliderId:I

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->hide(ILcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$SliderAnimationType;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->mActiveSliderId:I

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->previousViewHolder:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->previousViewHolder:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;->setSelected(Z)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->previousViewHolder:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->collapseControlPanel()V

    return-void
.end method

.method public hideCaptureHelpText()V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;->captureHelpText:Landroid/widget/RelativeLayout;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method public hideControlPanel()V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;->controlPanelLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    return-void
.end method

.method public hideHistogram()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;->histogram:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/Histogram;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/Histogram;->hide()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;->histogramLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f0b001f

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public hideProcessingShutter()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;->proShutter:Lcom/samsung/android/app/galaxyraw/widget/ProShutter;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/widget/ProShutter;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/-$$Lambda$ProView$IQ53yVIEAVDBP2xr4wZUAczGuVk;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/-$$Lambda$ProView$IQ53yVIEAVDBP2xr4wZUAczGuVk;-><init>(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public inflateView()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->initView()V

    return-void
.end method

.method public initialize()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->mPresenter:Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModeContract$Presenter;

    check-cast v0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProContract$Presenter;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;->proControlPanel:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProContract$Presenter;->createProControlPanelPresenter(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$View;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->mBaseContractViews:Ljava/util/List;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;->proControlPanel:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->mPresenter:Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModeContract$Presenter;

    check-cast v0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProContract$Presenter;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;->proSliderContainer:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProContract$Presenter;->createProSliderContainerPresenter(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$View;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->mBaseContractViews:Ljava/util/List;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;->proSliderContainer:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->mBaseContractViews:Ljava/util/List;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/-$$Lambda$Wbum4LP6toN2bcCQ-UeuOgufEcY;->INSTANCE:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/-$$Lambda$Wbum4LP6toN2bcCQ-UeuOgufEcY;

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;->proSliderContainer:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/-$$Lambda$ProView$ZgAMvvz1jnt2kFd2xBF9KlLa2Ss;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/-$$Lambda$ProView$ZgAMvvz1jnt2kFd2xBF9KlLa2Ss;-><init>(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->setProSliderValueChangedListener(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView$ProSliderValueChangedListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;->proSliderContainer:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->setProSliderButtonClickedListener(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView$ProSliderButtonClickedListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;->proControlPanel:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->setControlPanelEventListener(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView$ControlPanelEventListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;->proControlPanel:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->mProItemIdsPositionList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->setProItemIdsPositionList(Ljava/util/List;)V

    invoke-super {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModeView;->initialize()V

    return-void
.end method

.method public isSliderVisible()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;->proSliderContainer:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->mActiveSliderId:I

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->isSliderVisible(I)Z

    move-result p0

    return p0
.end method

.method public synthetic lambda$hideProcessingShutter$0$ProView()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->mPresenter:Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModeContract$Presenter;

    check-cast v0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProContract$Presenter;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProContract$Presenter;->onProcessingAnimationCompleted()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;->proShutter:Lcom/samsung/android/app/galaxyraw/widget/ProShutter;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/widget/ProShutter;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;->proShutter:Lcom/samsung/android/app/galaxyraw/widget/ProShutter;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/widget/ProShutter;->setAlpha(F)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;->proShutter:Lcom/samsung/android/app/galaxyraw/widget/ProShutter;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/widget/ProShutter;->cancelShutterAnimation()V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;->proShutter:Lcom/samsung/android/app/galaxyraw/widget/ProShutter;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/widget/ProShutter;->resetShutterAttribute()V

    return-void
.end method

.method public synthetic lambda$showControlPanel$1$ProView()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;->proControlPanel:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f0b0024

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->scrollToHideResetButton(I)V

    return-void
.end method

.method public synthetic lambda$updateOrientation$2$ProView()V
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->mOrientation:I

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->updateCaptureTextOrientation(I)V

    return-void
.end method

.method public onApertureButtonClicked()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->mPresenter:Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModeContract$Presenter;

    check-cast p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProContract$Presenter;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProContract$Presenter;->onApertureButtonClicked()V

    return-void
.end method

.method public onControlPanelItemSelected(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "position"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->mProItemIdsPositionList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/util/ProUtil;->sendSALogProItem(I)V

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->mActiveSliderId:I

    if-ne v0, p2, :cond_0

    sget-object p1, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$SliderAnimationType;->ALPHA_MOVE:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$SliderAnimationType;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->hideActiveSlider(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$SliderAnimationType;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-nez v0, :cond_2

    iput v2, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->mActiveSliderId:I

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->previousViewHolder:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->previousViewHolder:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;

    invoke-virtual {p1, v1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;->setSelected(Z)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->previousViewHolder:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x4

    if-eqz p2, :cond_3

    const/4 v3, 0x1

    if-eq p2, v3, :cond_3

    const/4 v3, 0x2

    if-eq p2, v3, :cond_3

    const/4 v3, 0x3

    if-eq p2, v3, :cond_3

    if-eq p2, v0, :cond_3

    iput v2, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->mActiveSliderId:I

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;

    iget-object v2, v2, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;->proSliderContainer:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;

    invoke-virtual {v2, p2}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->onProControlPanelItemClicked(I)V

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->setItemSelected(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;)V

    iput p2, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->mActiveSliderId:I

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;->resetButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;->selectLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public onResetButtonClick()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;->resetButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, -0x3c4c0000    # -360.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->rotationBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0027

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v3, v1

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;->proControlPanel:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0b0026

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->scrollToHideResetButton(I)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->mPresenter:Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModeContract$Presenter;

    check-cast p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProContract$Presenter;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProContract$Presenter;->resetProSetting()V

    const-string p0, "0001"

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    return-void
.end method

.method public onResetButtonEnabled(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;->resetButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;->resetButton:Landroid/widget/ImageButton;

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const p1, 0x3ee66666    # 0.45f

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->setAlpha(F)V

    return-void
.end method

.method public onSliderAutoButtonClicked(IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "sliderId",
            "isAutoMode"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->mPresenter:Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModeContract$Presenter;

    check-cast p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProContract$Presenter;

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProContract$Presenter;->onSliderAutoButtonClicked(IZ)V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "v",
            "event"
        }
    .end annotation

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    if-eq p1, p2, :cond_1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;->proSliderContainer:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->mActiveSliderId:I

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->isSliderVisible(I)Z

    move-result p1

    if-eqz p1, :cond_1

    return p2

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;->proSliderContainer:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->mActiveSliderId:I

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->isSliderVisible(I)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$SliderAnimationType;->ALPHA_MOVE:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$SliderAnimationType;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->hideActiveSlider(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$SliderAnimationType;)V

    return p2

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public refreshIsoSliderRange()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;->proSliderContainer:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->refreshIsoSliderRange()V

    return-void
.end method

.method public refreshMultiAfButtonVisibility(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "visibility"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;->proSliderContainer:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->refreshMultiAfButtonVisibility(Z)V

    return-void
.end method

.method public refreshShutterSpeedSliderRange()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;->proSliderContainer:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->refreshShutterSpeedSliderRange()V

    return-void
.end method

.method public resetProView()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->cancelLongExposureShotWaitToast()V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->hideControlPanel()V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$SliderAnimationType;->NONE:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$SliderAnimationType;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->hideActiveSlider(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$SliderAnimationType;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;->proShutter:Lcom/samsung/android/app/galaxyraw/widget/ProShutter;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/widget/ProShutter;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;->proShutter:Lcom/samsung/android/app/galaxyraw/widget/ProShutter;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/widget/ProShutter;->cancelShutterAnimation()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;->proShutter:Lcom/samsung/android/app/galaxyraw/widget/ProShutter;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/widget/ProShutter;->resetShutterAttribute()V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;->proShutter:Lcom/samsung/android/app/galaxyraw/widget/ProShutter;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/widget/ProShutter;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public setProButtonText(ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "proItemId",
            "text"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;->proControlPanel:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->setButtonText(ILjava/lang/String;)V

    return-void
.end method

.method public showCaptureHelpText()V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;->captureHelpText:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method public showControlPanel(Z)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "needAnimation"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showControlPanel - needAnimation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;->controlPanelLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setAlpha(F)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;->controlPanelLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0022

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/app/galaxyraw/util/interpolator/SineInOut60;

    invoke-direct {v0}, Lcom/samsung/android/app/galaxyraw/util/interpolator/SineInOut60;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/-$$Lambda$ProView$X3ODBmiBma8mP94mgNLa9WzbU7g;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/-$$Lambda$ProView$X3ODBmiBma8mP94mgNLa9WzbU7g;-><init>(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;->controlPanelLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;->controlPanelLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getTop()I

    move-result p0

    return p0
.end method

.method public showHistogram()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;->histogram:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/Histogram;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/Histogram;->show()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;->histogramLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f0b001f

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public showLongExposureShotWaitToast()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f12030b

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method public showProcessingShutter()V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;->proShutter:Lcom/samsung/android/app/galaxyraw/widget/ProShutter;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/widget/ProShutter;->setVisibility(I)V

    return-void
.end method

.method public startProcessingAnimation(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isMorphAnimationNeeded"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;->proShutter:Lcom/samsung/android/app/galaxyraw/widget/ProShutter;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/widget/ProShutter;->startShutterAnimation(Z)V

    return-void
.end method

.method public updateHistogram([II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "histogram",
            "maxValue"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;->histogram:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/Histogram;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/Histogram;->updateHistogram([II)V

    return-void
.end method

.method protected updateOrientation()V
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07026e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070260

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07026c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iget v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->mOrientation:I

    const/16 v2, -0x5a

    if-ne v1, v2, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    mul-int/2addr v0, v1

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;->proSliderContainer:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;

    iget v3, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->mOrientation:I

    invoke-virtual {v1, v3}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->onOrientationChanged(I)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;->proControlPanel:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;

    iget v3, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->mOrientation:I

    invoke-virtual {v1, v3}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->onOrientationChanged(I)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;->resetButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v3, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->mOrientation:I

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProBinding;->selectLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v3, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->mOrientation:I

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v3, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->mOrientation:I

    if-eq v3, v2, :cond_2

    iget v2, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->mOrientation:I

    const/16 v3, 0x5a

    if-ne v2, v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_1
    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_HISTOGRAM:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->mOrientation:I

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->updateHistogramOrientation(I)V

    :cond_3
    new-instance v0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/-$$Lambda$ProView$bfAmqUFe1OlXF0031G3HTlEMc0o;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/-$$Lambda$ProView$bfAmqUFe1OlXF0031G3HTlEMc0o;-><init>(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public updateProgressShutterShrinkState(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isShrink"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->mIsProShutterShrink:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->mIsProShutterShrink:Z

    if-eqz p1, :cond_1

    const/high16 p1, 0x3f400000    # 0.75f

    goto :goto_0

    :cond_1
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_0
    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->startProShrinkAnimation(F)V

    return-void
.end method
