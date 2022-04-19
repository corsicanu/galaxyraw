.class public Lcom/samsung/android/app/galaxyraw/layer/popup/smarttips/SmartTipsView;
.super Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupView;
.source "SmartTipsView.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/layer/popup/smarttips/SmartTipsContract$View;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupView<",
        "Lcom/samsung/android/app/galaxyraw/layer/popup/smarttips/SmartTipsContract$Presenter;",
        ">;",
        "Lcom/samsung/android/app/galaxyraw/layer/popup/smarttips/SmartTipsContract$View;"
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mDescriptionString:Ljava/lang/String;

.field private mImage:Landroid/graphics/drawable/Drawable;

.field private mIsNeedCloseButton:Z

.field private mIsNeedTextButton:Z

.field private mLinkString:Ljava/lang/String;

.field private mTitleString:Ljava/lang/String;

.field private mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PopupSmartTipsBinding;

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

    const-string p1, "SmartTipsView"

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/smarttips/SmartTipsView;->TAG:Ljava/lang/String;

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/popup/smarttips/SmartTipsView;->initView()V

    return-void
.end method

.method private initView()V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/popup/smarttips/SmartTipsView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lcom/samsung/android/app/galaxyraw/databinding/PopupSmartTipsBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/samsung/android/app/galaxyraw/databinding/PopupSmartTipsBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/smarttips/SmartTipsView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PopupSmartTipsBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/PopupSmartTipsBinding;->smartTipsViewGroup:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/layer/popup/smarttips/-$$Lambda$SmartTipsView$Exqixz5KjznSlb0SC_TvRN-XNmU;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/layer/popup/smarttips/-$$Lambda$SmartTipsView$Exqixz5KjznSlb0SC_TvRN-XNmU;-><init>(Lcom/samsung/android/app/galaxyraw/layer/popup/smarttips/SmartTipsView;)V

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/smarttips/SmartTipsView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PopupSmartTipsBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/PopupSmartTipsBinding;->closeButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/layer/popup/smarttips/-$$Lambda$SmartTipsView$ZLAN-AcVQgcoufbUjT0y0BkXWuU;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/layer/popup/smarttips/-$$Lambda$SmartTipsView$ZLAN-AcVQgcoufbUjT0y0BkXWuU;-><init>(Lcom/samsung/android/app/galaxyraw/layer/popup/smarttips/SmartTipsView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/smarttips/SmartTipsView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PopupSmartTipsBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/PopupSmartTipsBinding;->textButton:Landroid/widget/TextView;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/layer/popup/smarttips/-$$Lambda$SmartTipsView$pV-kSo1fkW5AO3H28kS-DEtjOYs;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/layer/popup/smarttips/-$$Lambda$SmartTipsView$pV-kSo1fkW5AO3H28kS-DEtjOYs;-><init>(Lcom/samsung/android/app/galaxyraw/layer/popup/smarttips/SmartTipsView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, p0}, Lcom/samsung/android/app/galaxyraw/layer/popup/smarttips/SmartTipsView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private loadStyleFromResource()V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/popup/smarttips/SmartTipsView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/smarttips/SmartTipsView;->mStyleResourceId:I

    sget-object v2, Lcom/samsung/android/app/galaxyraw/R$styleable;->Popup:[I

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/smarttips/SmartTipsView;->mStyledAttributes:Landroid/content/res/TypedArray;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/popup/smarttips/SmartTipsView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/16 v1, 0x14

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/galaxyraw/layer/popup/smarttips/SmartTipsView;->getAttributeValue(I)Landroid/util/TypedValue;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v1

    iput v1, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/smarttips/SmartTipsView;->mWidth:F

    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/galaxyraw/layer/popup/smarttips/SmartTipsView;->getAttributeValue(I)Landroid/util/TypedValue;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v1

    iput v1, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/smarttips/SmartTipsView;->mPortraitEndMargin:F

    const/16 v1, 0xd

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/galaxyraw/layer/popup/smarttips/SmartTipsView;->getAttributeValue(I)Landroid/util/TypedValue;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v1

    iput v1, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/smarttips/SmartTipsView;->mPortraitTopMargin:F

    const/16 v1, 0x9

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/galaxyraw/layer/popup/smarttips/SmartTipsView;->getAttributeValue(I)Landroid/util/TypedValue;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/smarttips/SmartTipsView;->mPortraitBottomMargin:F

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/popup/smarttips/SmartTipsView;->getAttributeValue(I)Landroid/util/TypedValue;

    move-result-object v0

    iget-object v0, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/smarttips/SmartTipsView;->mDescriptionString:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/smarttips/SmartTipsView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PopupSmartTipsBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/PopupSmartTipsBinding;->description:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/smarttips/SmartTipsView;->mDescriptionString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/popup/smarttips/SmartTipsView;->getAttributeValue(I)Landroid/util/TypedValue;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/smarttips/SmartTipsView;->mIsNeedCloseButton:Z

    const/16 v0, 0x13

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/popup/smarttips/SmartTipsView;->getAttributeValue(I)Landroid/util/TypedValue;

    move-result-object v0

    iget-object v0, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/smarttips/SmartTipsView;->mTitleString:Ljava/lang/String;

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/popup/smarttips/SmartTipsView;->getAttributeValue(I)Landroid/util/TypedValue;

    move-result-object v0

    iget-object v0, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/smarttips/SmartTipsView;->mLinkString:Ljava/lang/String;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/popup/smarttips/SmartTipsView;->getAttributeValue(I)Landroid/util/TypedValue;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/smarttips/SmartTipsView;->mIsNeedTextButton:Z

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/popup/smarttips/SmartTipsView;->getAttributeDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/smarttips/SmartTipsView;->mImage:Landroid/graphics/drawable/Drawable;

    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/popup/smarttips/SmartTipsView;->getAttributeValue(I)Landroid/util/TypedValue;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/smarttips/SmartTipsView;->mPortraitVerticalBias:F

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/popup/smarttips/SmartTipsView;->getAttributeValue(I)Landroid/util/TypedValue;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/smarttips/SmartTipsView;->mPortraitHorizontalBias:F

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/smarttips/SmartTipsView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PopupSmartTipsBinding;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/databinding/PopupSmartTipsBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/galaxyraw/layer/popup/smarttips/SmartTipsView;->getAttributeDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/smarttips/SmartTipsView;->mStyledAttributes:Landroid/content/res/TypedArray;

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private onCloseButtonClick()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/smarttips/SmartTipsView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupContract$Presenter;

    check-cast p0, Lcom/samsung/android/app/galaxyraw/layer/popup/smarttips/SmartTipsContract$Presenter;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/layer/popup/smarttips/SmartTipsContract$Presenter;->onPopupHideRequested()V

    return-void
.end method

.method private onPopupClick()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/smarttips/SmartTipsView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PopupSmartTipsBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/PopupSmartTipsBinding;->textButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/smarttips/SmartTipsView;->mLinkString:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/smarttips/SmartTipsView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupContract$Presenter;

    check-cast p0, Lcom/samsung/android/app/galaxyraw/layer/popup/smarttips/SmartTipsContract$Presenter;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/layer/popup/smarttips/SmartTipsContract$Presenter;->onLinkClick()V

    :cond_0
    return-void
.end method

.method private onTextButtonClick()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/smarttips/SmartTipsView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupContract$Presenter;

    check-cast p0, Lcom/samsung/android/app/galaxyraw/layer/popup/smarttips/SmartTipsContract$Presenter;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/layer/popup/smarttips/SmartTipsContract$Presenter;->onLinkClick()V

    return-void
.end method

.method private setContentDescriptionForTts()V
    .locals 0

    return-void
.end method

.method private updateConstraintChain()V
    .locals 0

    return-void
.end method

.method private updateLayout()V
    .locals 4

    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/smarttips/SmartTipsView;->mIsNeedCloseButton:Z

    const/16 v1, 0x8

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/smarttips/SmartTipsView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PopupSmartTipsBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/PopupSmartTipsBinding;->closeButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/smarttips/SmartTipsView;->mTitleString:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/smarttips/SmartTipsView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PopupSmartTipsBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/PopupSmartTipsBinding;->title:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/smarttips/SmartTipsView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PopupSmartTipsBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/PopupSmartTipsBinding;->title:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/smarttips/SmartTipsView;->mTitleString:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/smarttips/SmartTipsView;->mImage:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/smarttips/SmartTipsView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PopupSmartTipsBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/PopupSmartTipsBinding;->smartTipsImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/smarttips/SmartTipsView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PopupSmartTipsBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/PopupSmartTipsBinding;->smartTipsImage:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/smarttips/SmartTipsView;->mImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/smarttips/SmartTipsView;->mIsNeedTextButton:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/smarttips/SmartTipsView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PopupSmartTipsBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/PopupSmartTipsBinding;->textButton:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/smarttips/SmartTipsView;->mLinkString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/smarttips/SmartTipsView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PopupSmartTipsBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/PopupSmartTipsBinding;->textButton:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/popup/smarttips/SmartTipsView;->setTranslation(Z)V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/popup/smarttips/SmartTipsView;->updateConstraintChain()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/smarttips/SmartTipsView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PopupSmartTipsBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/PopupSmartTipsBinding;->smartTipsViewGroup:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iget v2, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/smarttips/SmartTipsView;->mWidth:F

    float-to-int v2, v2

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/popup/smarttips/SmartTipsView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/smarttips/SmartTipsView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupContract$Presenter;

    check-cast v0, Lcom/samsung/android/app/galaxyraw/layer/popup/smarttips/SmartTipsContract$Presenter;

    iget-boolean p0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/smarttips/SmartTipsView;->mIsRefreshByOrientation:Z

    invoke-interface {v0, p0}, Lcom/samsung/android/app/galaxyraw/layer/popup/smarttips/SmartTipsContract$Presenter;->onPopupShown(Z)V

    return-void
.end method


# virtual methods
.method public applyBias()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupView;->applyBias()V

    return-void
.end method

.method public clear()V
    .locals 0

    return-void
.end method

.method public initialize()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/popup/smarttips/SmartTipsView;->loadStyleFromResource()V

    return-void
.end method

.method public synthetic lambda$initView$0$SmartTipsView(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/popup/smarttips/SmartTipsView;->onPopupClick()V

    return-void
.end method

.method public synthetic lambda$initView$1$SmartTipsView(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/popup/smarttips/SmartTipsView;->onCloseButtonClick()V

    return-void
.end method

.method public synthetic lambda$initView$2$SmartTipsView(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/popup/smarttips/SmartTipsView;->onTextButtonClick()V

    return-void
.end method

.method public onPreviewTouch(Landroid/view/MotionEvent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    iget-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/smarttips/SmartTipsView;->mIsNeedCloseButton:Z

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/smarttips/SmartTipsView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupContract$Presenter;

    check-cast p0, Lcom/samsung/android/app/galaxyraw/layer/popup/smarttips/SmartTipsContract$Presenter;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/layer/popup/smarttips/SmartTipsContract$Presenter;->onPopupHideRequested()V

    :cond_0
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

.method public showSmartTipsPopup()V
    .locals 2

    const-string v0, "SmartTipsView"

    const-string v1, "showSmartTipsPopup"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/popup/smarttips/SmartTipsView;->updateLayout()V

    return-void
.end method
