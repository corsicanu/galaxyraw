.class public Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsView;
.super Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupView;
.source "IntelligentTipsView.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsContract$View;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupView<",
        "Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsContract$Presenter;",
        ">;",
        "Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsContract$View;"
    }
.end annotation


# static fields
.field private static final INTELLIGENT_TIPS_TIMEOUT:I = 0x1388

.field private static final TAG:Ljava/lang/String; = "IntelligentTipsView"


# instance fields
.field private mDescriptionString:Ljava/lang/String;

.field private final mIntelligentTipsHideRunnable:Ljava/lang/Runnable;

.field private mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PopupIntelligentTipsBinding;

.field private mWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "popupId"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupView;-><init>(Landroid/content/Context;Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;)V

    new-instance p1, Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/-$$Lambda$IntelligentTipsView$X_x1urqfI8F6ZroW3cgf2XCk3Zw;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/-$$Lambda$IntelligentTipsView$X_x1urqfI8F6ZroW3cgf2XCk3Zw;-><init>(Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsView;)V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsView;->mIntelligentTipsHideRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsView;->initView()V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsView;)Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupContract$Presenter;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupContract$Presenter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsView;)Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupContract$Presenter;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupContract$Presenter;

    return-object p0
.end method

.method private applyPickerPadding()V
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0704a2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0704a0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsView;->mOrientation:I

    const/16 v3, -0x5a

    if-eq v2, v3, :cond_1

    const/16 v3, 0x5a

    if-eq v2, v3, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PopupIntelligentTipsBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/PopupIntelligentTipsBinding;->description:Landroid/widget/TextView;

    add-int/2addr v0, v1

    invoke-virtual {p0, v1, v1, v1, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PopupIntelligentTipsBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/PopupIntelligentTipsBinding;->description:Landroid/widget/TextView;

    add-int/2addr v0, v1

    invoke-virtual {p0, v1, v1, v0, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PopupIntelligentTipsBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/PopupIntelligentTipsBinding;->description:Landroid/widget/TextView;

    add-int/2addr v0, v1

    invoke-virtual {p0, v0, v1, v0, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    :goto_0
    return-void
.end method

.method private hideIntelligentTipsPopup()V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b001f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsView$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsView$1;-><init>(Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method private initView()V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lcom/samsung/android/app/galaxyraw/databinding/PopupIntelligentTipsBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/samsung/android/app/galaxyraw/databinding/PopupIntelligentTipsBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PopupIntelligentTipsBinding;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsView;->setVisibility(I)V

    invoke-virtual {p0, p0}, Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PopupIntelligentTipsBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/PopupIntelligentTipsBinding;->textButton:Landroid/widget/Button;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/-$$Lambda$IntelligentTipsView$uMNJXZzAltlHyXm6F3F4U3CxKeo;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/-$$Lambda$IntelligentTipsView$uMNJXZzAltlHyXm6F3F4U3CxKeo;-><init>(Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static synthetic lambda$URBGuYEJeLNZPVb3XkZKZGjJ6_g(Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsView;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsView;->updateIntelligentTipsLayout()V

    return-void
.end method

.method public static synthetic lambda$X_x1urqfI8F6ZroW3cgf2XCk3Zw(Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsView;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsView;->hideIntelligentTipsPopup()V

    return-void
.end method

.method private loadStyleFromResource()V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsView;->mStyleResourceId:I

    sget-object v2, Lcom/samsung/android/app/galaxyraw/R$styleable;->Popup:[I

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsView;->mStyledAttributes:Landroid/content/res/TypedArray;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsView;->getAttributeValue(I)Landroid/util/TypedValue;

    move-result-object v1

    const/16 v2, 0x14

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsView;->getAttributeValue(I)Landroid/util/TypedValue;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v2

    iput v2, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsView;->mWidth:F

    const/16 v2, 0xc

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsView;->getAttributeValue(I)Landroid/util/TypedValue;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v2

    iput v2, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsView;->mPortraitStartMargin:F

    const/16 v2, 0x9

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsView;->getAttributeValue(I)Landroid/util/TypedValue;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsView;->mPortraitBottomMargin:F

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsView;->getAttributeDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsView;->mPortraitBackground:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsView;->getAttributeDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsView;->mLandscapeBackground:Landroid/graphics/drawable/Drawable;

    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsView;->getAttributeDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsView;->mReverseLandscapeBackground:Landroid/graphics/drawable/Drawable;

    iget v0, v1, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v1, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsView;->mDescriptionString:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    :cond_0
    iget-object v0, v1, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsView;->mDescriptionString:Ljava/lang/String;

    :goto_0
    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsView;->getAttributeValue(I)Landroid/util/TypedValue;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsView;->mPortraitVerticalBias:F

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsView;->getAttributeValue(I)Landroid/util/TypedValue;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsView;->mPortraitHorizontalBias:F

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsView;->mStyledAttributes:Landroid/content/res/TypedArray;

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private startHideIntelligentTipsTimer()V
    .locals 3

    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsView;->mIsRefreshByOrientation:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsView;->mIntelligentTipsHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsView;->mIntelligentTipsHideRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1388

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private updateIntelligentTipsLayout()V
    .locals 5

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0704a0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PopupIntelligentTipsBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/PopupIntelligentTipsBinding;->description:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsView;->mDescriptionString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PopupIntelligentTipsBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/PopupIntelligentTipsBinding;->intelligentTipsViewGroup:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsView;->getBackgroundImage()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PopupIntelligentTipsBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/PopupIntelligentTipsBinding;->description:Landroid/widget/TextView;

    iget v2, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsView;->mWidth:F

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxWidth(I)V

    sget-object v1, Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsView$2;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$PopupLayerManager$SubPopupId:[I

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsView;->mSubPopupId:Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 v2, 0x4

    const/4 v4, 0x0

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PopupIntelligentTipsBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/PopupIntelligentTipsBinding;->description:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {p0, v4, v4, v4, v4}, Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsView;->setMargin(FFFF)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PopupIntelligentTipsBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/PopupIntelligentTipsBinding;->description:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v0, v0, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PopupIntelligentTipsBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/PopupIntelligentTipsBinding;->textButton:Landroid/widget/Button;

    invoke-virtual {v1, v3, v3, v0, v0}, Landroid/widget/Button;->setPadding(IIII)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PopupIntelligentTipsBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/PopupIntelligentTipsBinding;->textButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    invoke-virtual {p0, v4, v4, v4, v4}, Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsView;->setMargin(FFFF)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsView;->applyPickerPadding()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupContract$Presenter;

    check-cast v0, Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsContract$Presenter;

    iget v1, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsView;->mOrientation:I

    iget v2, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsView;->mWidth:F

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsContract$Presenter;->onUpdateLayout(IF)V

    :goto_0
    invoke-virtual {p0, v3}, Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public applyBias()V
    .locals 2

    sget-object v0, Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsView$2;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$PopupLayerManager$SubPopupId:[I

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsView;->mSubPopupId:Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    invoke-super {p0}, Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupView;->applyBias()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsView;->applyRelativeBiasByOrientation()V

    :goto_0
    return-void
.end method

.method public clear()V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsView;->mIntelligentTipsHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsView;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public initialize()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsView;->loadStyleFromResource()V

    return-void
.end method

.method public synthetic lambda$initView$1$IntelligentTipsView(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupContract$Presenter;

    check-cast p1, Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsContract$Presenter;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsContract$Presenter;->onHdrAutoButtonClicked()V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsView;->hideIntelligentTipsPopup()V

    return-void
.end method

.method public synthetic lambda$showIntelligentTipsPopup$0$IntelligentTipsView()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsView;->startHideIntelligentTipsTimer()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupContract$Presenter;

    check-cast v0, Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsContract$Presenter;

    iget-boolean p0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsView;->mIsRefreshByOrientation:Z

    invoke-interface {v0, p0}, Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsContract$Presenter;->onPopupShown(Z)V

    return-void
.end method

.method public onPreviewTouch(Landroid/view/MotionEvent;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsView;->mIntelligentTipsHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsView;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-super {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupView;->onPreviewTouch(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0
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

    const/4 p0, 0x0

    return p0
.end method

.method public refreshStyle()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsView;->loadStyleFromResource()V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsView;->mIntelligentTipsHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsView;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setMargin(FFFF)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "marginTop",
            "marginBottom",
            "marginLeft",
            "marginRight"
        }
    .end annotation

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsView;->mOrientation:I

    const/16 v1, -0x5a

    if-eq v0, v1, :cond_1

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, p3, p4}, Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsView;->getHorizontalOffset(FF)F

    move-result p3

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsView;->getVerticalOffset(FF)F

    move-result p1

    goto :goto_1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsView;->getVerticalOffset(FF)F

    move-result p1

    invoke-virtual {p0, p3, p4}, Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsView;->getHorizontalOffset(FF)F

    move-result p2

    neg-float p2, p2

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsView;->getVerticalOffset(FF)F

    move-result p1

    neg-float p1, p1

    invoke-virtual {p0, p3, p4}, Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsView;->getHorizontalOffset(FF)F

    move-result p2

    :goto_0
    move p3, p1

    move p1, p2

    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "setMargin : "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p4, ", "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p4, "IntelligentTipsView"

    invoke-static {p4, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p3}, Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsView;->setTranslationX(F)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsView;->setTranslationY(F)V

    return-void
.end method

.method public showIntelligentTipsPopup()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsView;->mIntelligentTipsHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsView;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsView;->removeAllViews()V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsView;->initView()V

    new-instance v0, Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/-$$Lambda$IntelligentTipsView$URBGuYEJeLNZPVb3XkZKZGjJ6_g;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/-$$Lambda$IntelligentTipsView$URBGuYEJeLNZPVb3XkZKZGjJ6_g;-><init>(Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsView;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsView;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsView;->setAlpha(F)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b001f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/-$$Lambda$IntelligentTipsView$2ABe9hlEQQ_ShnKO6yFXt30tCQQ;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/-$$Lambda$IntelligentTipsView$2ABe9hlEQQ_ShnKO6yFXt30tCQQ;-><init>(Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method
