.class public Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;
.super Landroid/widget/RelativeLayout;
.source "ProSliderContainerView.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$View;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView$SliderScrollEventListener;,
        Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView$ProSliderValueChangedListener;,
        Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView$ProSliderButtonClickedListener;
    }
.end annotation


# static fields
.field private static final NO_ACTIVE_SLIDER:I = -0x1

.field private static final TAG:Ljava/lang/String; = "ProSliderContainerView"


# instance fields
.field private final EXPOSURE_VALUE_OFFSET:I

.field private final ISO_VALUE_OFFSET:I

.field private final KELVIN_LEVEL_NUM_OF_STEP:I

.field private final KELVIN_LEVEL_START_STEP:I

.field private final SHUTTER_SPEED_VALUE_OFFSET:I

.field private mActiveSlider:I

.field private mIsApertureSupported:Z

.field private mMultiAfButtonVisibility:Z

.field private mPresenter:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$Presenter;

.field private mProSliderButtonClickedListener:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView$ProSliderButtonClickedListener;

.field private mProSliderValueChangedListener:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView$ProSliderValueChangedListener;

.field private final mSliderTitleMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView$1;-><init>(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->mSliderTitleMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00a1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->EXPOSURE_VALUE_OFFSET:I

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00a4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->SHUTTER_SPEED_VALUE_OFFSET:I

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00a2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->ISO_VALUE_OFFSET:I

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00a3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->KELVIN_LEVEL_NUM_OF_STEP:I

    rsub-int/lit8 v0, v0, 0x64

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->KELVIN_LEVEL_START_STEP:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->mActiveSlider:I

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
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

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView$1;-><init>(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;)V

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->mSliderTitleMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0b00a1

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    iput p2, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->EXPOSURE_VALUE_OFFSET:I

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0b00a4

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    iput p2, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->SHUTTER_SPEED_VALUE_OFFSET:I

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0b00a2

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    iput p2, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->ISO_VALUE_OFFSET:I

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0b00a3

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    iput p2, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->KELVIN_LEVEL_NUM_OF_STEP:I

    rsub-int/lit8 p2, p2, 0x64

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->KELVIN_LEVEL_START_STEP:I

    const/4 p2, -0x1

    iput p2, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->mActiveSlider:I

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;)Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$Presenter;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->mPresenter:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$Presenter;

    return-object p0
.end method

.method private getActiveText(II)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "proItemId",
            "value"
        }
    .end annotation

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f030009

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, p2

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/util/ProUtil;->getFocusLengthString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f030003

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, p2

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f03000b

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, p2

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f030008

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, p2

    :goto_0
    return-object p0
.end method

.method private getApertureDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "aperture"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0806c8

    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Landroid/content/res/Resources$NotFoundException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not found aperture resource = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0806c7

    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method private getOffset(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "proItemId"
        }
    .end annotation

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->KELVIN_LEVEL_START_STEP:I

    return p0

    :cond_1
    iget p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->EXPOSURE_VALUE_OFFSET:I

    return p0

    :cond_2
    iget p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->SHUTTER_SPEED_VALUE_OFFSET:I

    return p0

    :cond_3
    iget p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->ISO_VALUE_OFFSET:I

    return p0
.end method

.method private hideContainer(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$SliderAnimationType;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animationType"
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->hideSliderContainer()V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$SliderAnimationType;->ALPHA_MOVE:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$SliderAnimationType;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->mPresenter:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$Presenter;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$Presenter;->onSliderHide()V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/app/galaxyraw/util/interpolator/SineInOut60;

    invoke-direct {v0}, Lcom/samsung/android/app/galaxyraw/util/interpolator/SineInOut60;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0028

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070274

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    neg-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/-$$Lambda$ProSliderContainerView$hI8OIHfydbgAeJzHC0VcV3BHzgA;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/-$$Lambda$ProSliderContainerView$hI8OIHfydbgAeJzHC0VcV3BHzgA;-><init>(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$SliderAnimationType;->SWITCH:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$SliderAnimationType;

    if-ne p1, v0, :cond_1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->mPresenter:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$Presenter;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$Presenter;->onSliderHide()V

    :cond_1
    :goto_0
    return-void
.end method

.method private hideSliderContainer()V
    .locals 2

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->setActiveLabelsVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;->manualAutoButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;->apertureButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->setVisibility(I)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, p0, v0}, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;

    return-void
.end method

.method public static synthetic lambda$06kQMAnhJQVii5mcxsiO9M7AWJQ(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->onMultiButtonClicked(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$6ceNL35nEYd043kjHXbdop3Tbpw(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->onAutoButtonClicked(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$ZkF1IUJGYVO9gqrsmPawfKS9G5Q(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->onApertureButtonClicked(Landroid/view/View;)V

    return-void
.end method

.method private onApertureButtonClicked(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    iget p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->mActiveSlider:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->mPresenter:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$Presenter;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$Presenter;->onApertureButtonClicked()V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->mProSliderButtonClickedListener:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView$ProSliderButtonClickedListener;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView$ProSliderButtonClickedListener;->onApertureButtonClicked()V

    :goto_0
    return-void
.end method

.method private onAutoButtonClicked(Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->mActiveSlider:I

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    if-eq v0, v1, :cond_0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->mPresenter:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$Presenter;

    iget v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->mActiveSlider:I

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$Presenter;->onAutoButtonClicked(IZ)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->mProSliderButtonClickedListener:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView$ProSliderButtonClickedListener;

    iget v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->mActiveSlider:I

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView$ProSliderButtonClickedListener;->onSliderAutoButtonClicked(IZ)V

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    const-string v0, " "

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->mSliderTitleMap:Ljava/util/HashMap;

    iget v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->mActiveSlider:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120006

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->mSliderTitleMap:Ljava/util/HashMap;

    iget v2, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->mActiveSlider:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1204b5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private onMultiButtonClicked(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->mPresenter:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$Presenter;

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$Presenter;->onMultiButtonClicked(Z)V

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

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->mProSliderValueChangedListener:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView$ProSliderValueChangedListener;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView$ProSliderValueChangedListener;->onSliderValueChanged(II)V

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->getActiveText(II)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->setActiveTextViewText(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method private rotateButtons(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "orientation"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07024b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070248

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;->manualAutoButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    int-to-float p1, p1

    invoke-virtual {v1, p1}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0xfa

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;->multiAfButton:Landroid/widget/Button;

    invoke-virtual {p0}, Landroid/widget/Button;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method private setActiveLabelsVisibility(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "visibility"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;->activeTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;->activeTickMark:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private setActiveTextViewText(ILjava/lang/String;)V
    .locals 2
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

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;->activeTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;->activeTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->setSliderContentDescription(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method private setManualFocusGroupVisibility(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "visible"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;->manualFocusSlider:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->setVisibility(I)V

    return-void
.end method

.method private setSliderContentDescription(ILjava/lang/String;)V
    .locals 3
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

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ", "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->mSliderTitleMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1204b6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;->wbSlider:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;->exposureSlider:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;->shutterSpeedSlider:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;->isoSlider:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private setupAutoMode(ILcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "proItemId",
            "slider"
        }
    .end annotation

    const-string v0, "ProSliderContainerView"

    const-string v1, "setupAutoMode"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;->activeTickMark:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;->wbIconImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;->manualAutoButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;->manualAutoButton:Landroid/widget/Button;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;->manualAutoButton:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setSelected(Z)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;->manualAutoButton:Landroid/widget/Button;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f120001

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->mSliderTitleMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p2, v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->setVisibility(I)V

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->showAutoModeLayout()V

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->mActiveSlider:I

    return-void
.end method

.method private setupManualMode(ILcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;I)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "proItemId",
            "slider",
            "value"
        }
    .end annotation

    const-string v0, "ProSliderContainerView"

    const-string v1, "setupManualMode"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;->activeTickMark:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;->manualAutoButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;->manualAutoButton:Landroid/widget/Button;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;->manualAutoButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setSelected(Z)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;->manualAutoButton:Landroid/widget/Button;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f120006

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->mSliderTitleMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;->multiAfButton:Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    invoke-virtual {p2, v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->setVisibility(I)V

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->getOffset(I)I

    move-result v0

    sub-int/2addr p3, v0

    invoke-virtual {p2, p3}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->showManualModeLayout(I)V

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->mActiveSlider:I

    return-void
.end method

.method private showContainer(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$SliderAnimationType;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "showAnimationType"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$SliderAnimationType;->ALPHA_MOVE:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$SliderAnimationType;

    const v1, 0x7f0b0029

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-ne p1, v0, :cond_0

    invoke-virtual {p0, v4}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->setAlpha(F)V

    invoke-virtual {p0, v3}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070274

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    neg-float p1, p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->setTranslationY(F)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/app/galaxyraw/util/interpolator/SineInOut60;

    invoke-direct {v0}, Lcom/samsung/android/app/galaxyraw/util/interpolator/SineInOut60;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    int-to-long v0, p0

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v4}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->setAlpha(F)V

    invoke-virtual {p0, v3}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/app/galaxyraw/util/interpolator/SineInOut80;

    invoke-direct {v0}, Lcom/samsung/android/app/galaxyraw/util/interpolator/SineInOut80;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    int-to-long v0, p0

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    :goto_0
    return-void
.end method


# virtual methods
.method public cancelAnimation()V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    return-void
.end method

.method public changeWhiteBalanceIconImage(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "kelvinValue"
        }
    .end annotation

    const/16 v0, 0x1c

    const/4 v1, 0x0

    if-eq p1, v0, :cond_3

    const/16 v0, 0x28

    if-eq p1, v0, :cond_2

    const/16 v0, 0x37

    if-eq p1, v0, :cond_1

    const/16 v0, 0x41

    if-eq p1, v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;->wbIconImage:Landroid/widget/ImageView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;->wbIconImage:Landroid/widget/ImageView;

    const v0, 0x7f0806ea

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;->wbIconImage:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;->wbIconImage:Landroid/widget/ImageView;

    const v0, 0x7f0806eb

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;->wbIconImage:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;->wbIconImage:Landroid/widget/ImageView;

    const v0, 0x7f0806ec

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;->wbIconImage:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;->wbIconImage:Landroid/widget/ImageView;

    const v0, 0x7f0806ed

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;->wbIconImage:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;->isoSlider:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->clear()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;->wbSlider:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->clear()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;->shutterSpeedSlider:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->clear()V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;->exposureSlider:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->clear()V

    return-void
.end method

.method public hide(ILcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$SliderAnimationType;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "proItemId",
            "animationType"
        }
    .end annotation

    const/16 v0, 0x8

    if-eqz p1, :cond_4

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p2}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->hideContainer(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$SliderAnimationType;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;->wbSlider:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;->wbIconImage:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p2}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->hideContainer(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$SliderAnimationType;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->setManualFocusGroupVisibility(I)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p2}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->hideContainer(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$SliderAnimationType;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;->exposureSlider:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->setVisibility(I)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, p2}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->hideContainer(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$SliderAnimationType;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;->shutterSpeedSlider:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->setVisibility(I)V

    goto :goto_0

    :cond_4
    invoke-direct {p0, p2}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->hideContainer(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$SliderAnimationType;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;->isoSlider:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->setVisibility(I)V

    :goto_0
    const/4 p1, -0x1

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->mActiveSlider:I

    return-void
.end method

.method public initApertureValue(ZI)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "isApertureSupported",
            "aperture"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->mIsApertureSupported:Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;->apertureButton:Landroid/widget/Button;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;->apertureButton:Landroid/widget/Button;

    invoke-direct {p0, p2}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->getApertureDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public initialize()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;->isoSlider:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/-$$Lambda$ProSliderContainerView$K9i0Xw2JCEUgq0OGIhLGwlKgY80;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/-$$Lambda$ProSliderContainerView$K9i0Xw2JCEUgq0OGIhLGwlKgY80;-><init>(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->setProScrollerChangeListener(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView$ScrollChangedListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;->shutterSpeedSlider:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/-$$Lambda$ProSliderContainerView$HuXUMRm08yslZOqpm8wsu7KUbOU;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/-$$Lambda$ProSliderContainerView$HuXUMRm08yslZOqpm8wsu7KUbOU;-><init>(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->setProScrollerChangeListener(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView$ScrollChangedListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;->manualFocusSlider:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/-$$Lambda$ProSliderContainerView$IQLDg6d8eZ7B-y85NWlwFAWLosg;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/-$$Lambda$ProSliderContainerView$IQLDg6d8eZ7B-y85NWlwFAWLosg;-><init>(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->setProScrollerChangeListener(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView$ScrollChangedListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;->wbSlider:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/-$$Lambda$ProSliderContainerView$GVsrBkGZk0k7w-MG1wLpuVt8nU0;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/-$$Lambda$ProSliderContainerView$GVsrBkGZk0k7w-MG1wLpuVt8nU0;-><init>(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->setProScrollerChangeListener(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView$ScrollChangedListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;->exposureSlider:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/-$$Lambda$ProSliderContainerView$IbtJoDlAQuCjc11XuOl0R6tXJYI;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/-$$Lambda$ProSliderContainerView$IbtJoDlAQuCjc11XuOl0R6tXJYI;-><init>(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->setProScrollerChangeListener(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView$ScrollChangedListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;->isoSlider:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView$SliderScrollEventListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView$SliderScrollEventListener;-><init>(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->setScrollEventListener(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView$ScrollEventListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;->shutterSpeedSlider:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView$SliderScrollEventListener;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView$SliderScrollEventListener;-><init>(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->setScrollEventListener(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView$ScrollEventListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;->wbSlider:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView$SliderScrollEventListener;

    const/4 v2, 0x4

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView$SliderScrollEventListener;-><init>(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->setScrollEventListener(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView$ScrollEventListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;->exposureSlider:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView$SliderScrollEventListener;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView$SliderScrollEventListener;-><init>(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->setScrollEventListener(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView$ScrollEventListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;->manualFocusSlider:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView$SliderScrollEventListener;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView$SliderScrollEventListener;-><init>(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->setScrollEventListener(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView$ScrollEventListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;->apertureButton:Landroid/widget/Button;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/-$$Lambda$ProSliderContainerView$ZkF1IUJGYVO9gqrsmPawfKS9G5Q;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/-$$Lambda$ProSliderContainerView$ZkF1IUJGYVO9gqrsmPawfKS9G5Q;-><init>(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;->manualAutoButton:Landroid/widget/Button;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/-$$Lambda$ProSliderContainerView$6ceNL35nEYd043kjHXbdop3Tbpw;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/-$$Lambda$ProSliderContainerView$6ceNL35nEYd043kjHXbdop3Tbpw;-><init>(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;->multiAfButton:Landroid/widget/Button;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/-$$Lambda$ProSliderContainerView$06kQMAnhJQVii5mcxsiO9M7AWJQ;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/-$$Lambda$ProSliderContainerView$06kQMAnhJQVii5mcxsiO9M7AWJQ;-><init>(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;->manualAutoButton:Landroid/widget/Button;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView$2;-><init>(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    return-void
.end method

.method public isAutoMode(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "proItemId"
        }
    .end annotation

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;->wbSlider:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->isAutoMode()Z

    move-result p0

    return p0

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;->manualFocusSlider:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->isAutoMode()Z

    move-result p0

    return p0

    :cond_2
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;->shutterSpeedSlider:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->isAutoMode()Z

    move-result p0

    return p0

    :cond_3
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;->isoSlider:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->isAutoMode()Z

    move-result p0

    return p0
.end method

.method public isSliderVisible(I)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sliderId"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_8

    if-eq p1, v1, :cond_6

    const/4 v2, 0x2

    if-eq p1, v2, :cond_4

    const/4 v2, 0x3

    if-eq p1, v2, :cond_2

    const/4 v2, 0x4

    if-eq p1, v2, :cond_0

    return v0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;->wbSlider:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->getVisibility()I

    move-result p0

    if-nez p0, :cond_1

    move v0, v1

    :cond_1
    return v0

    :cond_2
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;->manualFocusSlider:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->getVisibility()I

    move-result p0

    if-nez p0, :cond_3

    move v0, v1

    :cond_3
    return v0

    :cond_4
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;->exposureSlider:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->getVisibility()I

    move-result p0

    if-nez p0, :cond_5

    move v0, v1

    :cond_5
    return v0

    :cond_6
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;->shutterSpeedSlider:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->getVisibility()I

    move-result p0

    if-nez p0, :cond_7

    move v0, v1

    :cond_7
    return v0

    :cond_8
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;->isoSlider:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->getVisibility()I

    move-result p0

    if-nez p0, :cond_9

    move v0, v1

    :cond_9
    return v0
.end method

.method public synthetic lambda$hideContainer$5$ProSliderContainerView()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->setTranslationY(F)V

    return-void
.end method

.method public synthetic lambda$initialize$0$ProSliderContainerView(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->onSliderValueChanged(II)V

    return-void
.end method

.method public synthetic lambda$initialize$1$ProSliderContainerView(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->onSliderValueChanged(II)V

    return-void
.end method

.method public synthetic lambda$initialize$2$ProSliderContainerView(I)V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->onSliderValueChanged(II)V

    return-void
.end method

.method public synthetic lambda$initialize$3$ProSliderContainerView(I)V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->onSliderValueChanged(II)V

    return-void
.end method

.method public synthetic lambda$initialize$4$ProSliderContainerView(I)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->onSliderValueChanged(II)V

    return-void
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

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->rotateButtons(I)V

    return-void
.end method

.method public onProControlPanelItemClicked(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->mPresenter:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$Presenter;

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$Presenter;->onProControlPanelItemClicked(I)V

    return-void
.end method

.method public refreshIsoSliderRange()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->mPresenter:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$Presenter;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$Presenter;->onRefreshIsoSliderRange()V

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

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->mMultiAfButtonVisibility:Z

    return-void
.end method

.method public refreshShutterSpeedSliderRange()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->mPresenter:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$Presenter;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$Presenter;->onRefreshShutterSpeedSliderRange()V

    return-void
.end method

.method public setApertureValue(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "aperture"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;->apertureButton:Landroid/widget/Button;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->getApertureDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setAutoButtonEnabled(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;->manualAutoButton:Landroid/widget/Button;

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method public setIsoSliderRange(Landroid/util/Range;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "range"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;->isoSlider:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->updateLabelViews(Landroid/util/Range;)V

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

    check-cast p1, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$Presenter;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->setPresenter(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$Presenter;)V

    return-void
.end method

.method public setPresenter(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$Presenter;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "presenter"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->mPresenter:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$Presenter;

    return-void
.end method

.method public setProSliderButtonClickedListener(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView$ProSliderButtonClickedListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->mProSliderButtonClickedListener:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView$ProSliderButtonClickedListener;

    return-void
.end method

.method public setProSliderValueChangedListener(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView$ProSliderValueChangedListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->mProSliderValueChangedListener:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView$ProSliderValueChangedListener;

    return-void
.end method

.method public setShutterSpeedSliderRange(Landroid/util/Range;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "range"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;->shutterSpeedSlider:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->updateLabelViews(Landroid/util/Range;)V

    return-void
.end method

.method public setSliderText(ILjava/lang/String;)V
    .locals 1
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

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->mActiveSlider:I

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->setActiveTextViewText(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public showAutoMode(I)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "proItemId"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$SliderAnimationType;->ALPHA_MOVE:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$SliderAnimationType;

    iget v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->mActiveSlider:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$SliderAnimationType;->NONE:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$SliderAnimationType;

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->hide(ILcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$SliderAnimationType;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$SliderAnimationType;->ALPHA:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$SliderAnimationType;

    :cond_0
    const/16 v1, 0x8

    if-eqz p1, :cond_7

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x4

    if-eq p1, v2, :cond_5

    const/4 v2, 0x3

    if-eq p1, v2, :cond_2

    if-eq p1, v4, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->showContainer(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$SliderAnimationType;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;->wbIconImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;->wbSlider:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->setupAutoMode(ILcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;->multiAfButton:Landroid/widget/Button;

    invoke-virtual {p0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_2

    :cond_2
    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->showContainer(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$SliderAnimationType;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;->manualFocusSlider:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->setupAutoMode(ILcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;)V

    invoke-direct {p0, v1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->setActiveLabelsVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;->manualFocusSlider:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f120008

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f1204b6

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->mProSliderValueChangedListener:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView$ProSliderValueChangedListener;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;

    iget-object v2, v2, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;->multiAfButton:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, -0x3

    goto :goto_0

    :cond_3
    const/4 v2, -0x2

    :goto_0
    invoke-interface {v0, p1, v2}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView$ProSliderValueChangedListener;->onSliderValueChanged(II)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;->multiAfButton:Landroid/widget/Button;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_MULTI_AF:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->mMultiAfButtonVisibility:Z

    if-eqz p0, :cond_4

    move v1, v3

    :cond_4
    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2

    :cond_5
    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->showContainer(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$SliderAnimationType;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;->shutterSpeedSlider:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->setupAutoMode(ILcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;->apertureButton:Landroid/widget/Button;

    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->mIsApertureSupported:Z

    if-eqz v0, :cond_6

    goto :goto_1

    :cond_6
    move v3, v4

    :goto_1
    invoke-virtual {p1, v3}, Landroid/widget/Button;->setVisibility(I)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;->multiAfButton:Landroid/widget/Button;

    invoke-virtual {p0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2

    :cond_7
    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->showContainer(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$SliderAnimationType;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;->isoSlider:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->setupAutoMode(ILcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;->multiAfButton:Landroid/widget/Button;

    invoke-virtual {p0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :goto_2
    return-void
.end method

.method public showManualMode(II)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "proItemId",
            "value"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$SliderAnimationType;->ALPHA_MOVE:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$SliderAnimationType;

    iget v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->mActiveSlider:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$SliderAnimationType;->NONE:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$SliderAnimationType;

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->hide(ILcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$SliderAnimationType;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$SliderAnimationType;->ALPHA:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$SliderAnimationType;

    :cond_0
    if-eqz p1, :cond_6

    const/4 v1, 0x1

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-eq p1, v1, :cond_4

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    if-eq p1, v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->showContainer(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$SliderAnimationType;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;->wbSlider:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;

    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->setupManualMode(ILcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;I)V

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->changeWhiteBalanceIconImage(I)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->showContainer(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$SliderAnimationType;)V

    invoke-virtual {p0, v3}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;->manualFocusSlider:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;

    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->setupManualMode(ILcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;I)V

    invoke-direct {p0, v3}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->setManualFocusGroupVisibility(I)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->showContainer(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$SliderAnimationType;)V

    invoke-virtual {p0, v3}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->setVisibility(I)V

    invoke-direct {p0, v3}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->setActiveLabelsVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;->manualAutoButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;->multiAfButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;->exposureSlider:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;

    invoke-virtual {v0, v3}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;->exposureSlider:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->getOffset(I)I

    move-result v1

    sub-int/2addr p2, v1

    invoke-virtual {v0, p2}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->showManualModeLayout(I)V

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->mActiveSlider:I

    goto :goto_0

    :cond_4
    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->showContainer(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$SliderAnimationType;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;->shutterSpeedSlider:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;

    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->setupManualMode(ILcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;I)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;->apertureButton:Landroid/widget/Button;

    iget-boolean p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->mIsApertureSupported:Z

    if-eqz p0, :cond_5

    move v2, v3

    :cond_5
    invoke-virtual {p1, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    :cond_6
    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->showContainer(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$SliderAnimationType;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;->isoSlider:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;

    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->setupManualMode(ILcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;I)V

    :goto_0
    return-void
.end method

.method public updateMultiAfButtonSelection(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "selected"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;->multiAfButton:Landroid/widget/Button;

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setSelected(Z)V

    return-void
.end method
