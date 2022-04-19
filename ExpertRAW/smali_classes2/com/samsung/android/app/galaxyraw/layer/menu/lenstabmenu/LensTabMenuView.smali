.class public Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuView;
.super Lcom/samsung/android/app/galaxyraw/layer/menu/abstraction/AbstractMenuView;
.source "LensTabMenuView.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuContract$View;
.implements Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/galaxyraw/layer/menu/abstraction/AbstractMenuView<",
        "Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuContract$Presenter;",
        ">;",
        "Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuContract$View;",
        "Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;"
    }
.end annotation


# instance fields
.field private mBgTranslationX:F

.field private mCurrentTab:I

.field private mTabWidth:I

.field private mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/MenuLensTabMenuBinding;


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

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/menu/abstraction/AbstractMenuView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuView;->mTabWidth:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuView;->mBgTranslationX:F

    const/4 p1, -0x1

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuView;->mCurrentTab:I

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuView;->initView()V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuView;->startTabAnimation(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuView;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuView;->updateViewByAnimator(F)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuView;)Lcom/samsung/android/app/galaxyraw/layer/menu/abstraction/AbstractMenuContract$Presenter;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/menu/abstraction/AbstractMenuContract$Presenter;

    return-object p0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuView;)Lcom/samsung/android/app/galaxyraw/databinding/MenuLensTabMenuBinding;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/MenuLensTabMenuBinding;

    return-object p0
.end method

.method static synthetic access$400(Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuView;)Lcom/samsung/android/app/galaxyraw/layer/menu/abstraction/AbstractMenuContract$Presenter;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/menu/abstraction/AbstractMenuContract$Presenter;

    return-object p0
.end method

.method private getNewTab(III)Lcom/google/android/material/tabs/TabLayout$Tab;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tabSettingValue",
            "drawableId",
            "contentDescription"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/MenuLensTabMenuBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/MenuLensTabMenuBinding;->tabs:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->newTab()Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v0

    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout$Tab;->setCustomView(Landroid/view/View;)Lcom/google/android/material/tabs/TabLayout$Tab;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->setTag(Ljava/lang/Object;)Lcom/google/android/material/tabs/TabLayout$Tab;

    invoke-direct {p0, v0, p3}, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuView;->setTabContentDescription(Lcom/google/android/material/tabs/TabLayout$Tab;I)V

    return-object v0
.end method

.method private getTabPosition(I)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tabSettingValue"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/MenuLensTabMenuBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/MenuLensTabMenuBinding;->tabs:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v1}, Lcom/google/android/material/tabs/TabLayout;->getTabCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/MenuLensTabMenuBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/MenuLensTabMenuBinding;->tabs:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v1, v0}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private initView()V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lcom/samsung/android/app/galaxyraw/databinding/MenuLensTabMenuBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/samsung/android/app/galaxyraw/databinding/MenuLensTabMenuBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/MenuLensTabMenuBinding;

    return-void
.end method

.method public static synthetic lambda$oyPDvAQABzw48Kg2_09cN0HR7W8(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private refreshTabLayout()V
    .locals 7

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07003f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07024d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/MenuLensTabMenuBinding;

    iget-object v2, v2, Lcom/samsung/android/app/galaxyraw/databinding/MenuLensTabMenuBinding;->tabs:Lcom/google/android/material/tabs/TabLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3}, Lcom/google/android/material/tabs/TabLayout;->measure(II)V

    move v2, v3

    :goto_0
    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/MenuLensTabMenuBinding;

    iget-object v4, v4, Lcom/samsung/android/app/galaxyraw/databinding/MenuLensTabMenuBinding;->tabs:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v4}, Lcom/google/android/material/tabs/TabLayout;->getTabCount()I

    move-result v4

    if-ge v2, v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/MenuLensTabMenuBinding;

    iget-object v4, v4, Lcom/samsung/android/app/galaxyraw/databinding/MenuLensTabMenuBinding;->tabs:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v4, v3}, Lcom/google/android/material/tabs/TabLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    iget v5, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuView;->mTabWidth:I

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    if-ge v5, v6, :cond_0

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    iput v4, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuView;->mTabWidth:I

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget v2, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuView;->mTabWidth:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v2, v0

    iput v2, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuView;->mTabWidth:I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/MenuLensTabMenuBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/MenuLensTabMenuBinding;->tabs:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->getTabCount()I

    move-result v0

    iget v2, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuView;->mTabWidth:I

    mul-int/2addr v0, v2

    int-to-float v0, v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/MenuLensTabMenuBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/MenuLensTabMenuBinding;->tabs:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->getTabCount()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuView;->mTabWidth:I

    :cond_2
    move v0, v3

    :goto_1
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/MenuLensTabMenuBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/MenuLensTabMenuBinding;->tabs:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v1}, Lcom/google/android/material/tabs/TabLayout;->getTabCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/MenuLensTabMenuBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/MenuLensTabMenuBinding;->tabs:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v1, v3}, Lcom/google/android/material/tabs/TabLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v4, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuView;->mTabWidth:I

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/MenuLensTabMenuBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/MenuLensTabMenuBinding;->tabs:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/MenuLensTabMenuBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/MenuLensTabMenuBinding;->tabs:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v1}, Lcom/google/android/material/tabs/TabLayout;->getTabCount()I

    move-result v1

    iget v2, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuView;->mTabWidth:I

    mul-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/MenuLensTabMenuBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/MenuLensTabMenuBinding;->tabs:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v1, v0}, Lcom/google/android/material/tabs/TabLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/MenuLensTabMenuBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/MenuLensTabMenuBinding;->lensTabSelectBg:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuView;->mTabWidth:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/MenuLensTabMenuBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/MenuLensTabMenuBinding;->lensTabSelectBg:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setTabContentDescription(Lcom/google/android/material/tabs/TabLayout$Tab;I)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tab",
            "text"
        }
    .end annotation

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const/16 v0, 0x2c

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p2

    const/16 v0, 0x20

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f12044b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getPosition()I

    move-result v3

    const/4 v4, 0x1

    add-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/MenuLensTabMenuBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/MenuLensTabMenuBinding;->tabs:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->getTabCount()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/android/material/tabs/TabLayout$Tab;->setContentDescription(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$Tab;

    :cond_0
    return-void
.end method

.method private startTabAnimation(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isExpand"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [F

    if-eqz p1, :cond_0

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    goto :goto_0

    :cond_0
    fill-array-data v0, :array_1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0017

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/samsung/android/view/animation/SineOut90;

    invoke-direct {v1}, Lcom/samsung/android/view/animation/SineOut90;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/-$$Lambda$LensTabMenuView$t_-fMwDRYtdsCzeaHR8lntpl0Pc;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/-$$Lambda$LensTabMenuView$t_-fMwDRYtdsCzeaHR8lntpl0Pc;-><init>(Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuView$2;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuView$2;-><init>(Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuView;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/-$$Lambda$LensTabMenuView$oyPDvAQABzw48Kg2_09cN0HR7W8;

    invoke-direct {p1, v0}, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/-$$Lambda$LensTabMenuView$oyPDvAQABzw48Kg2_09cN0HR7W8;-><init>(Landroid/animation/ValueAnimator;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuView;->post(Ljava/lang/Runnable;)Z

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private updateViewByAnimator(F)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animatedValue"
        }
    .end annotation

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuView;->mTabWidth:I

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/MenuLensTabMenuBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/MenuLensTabMenuBinding;->tabs:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v1}, Lcom/google/android/material/tabs/TabLayout;->getTabCount()I

    move-result v1

    mul-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0702a4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/MenuLensTabMenuBinding;

    iget-object v2, v2, Lcom/samsung/android/app/galaxyraw/databinding/MenuLensTabMenuBinding;->tabs:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v2, p1}, Lcom/google/android/material/tabs/TabLayout;->setAlpha(F)V

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/MenuLensTabMenuBinding;

    iget-object v2, v2, Lcom/samsung/android/app/galaxyraw/databinding/MenuLensTabMenuBinding;->lensTab:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    mul-float v3, v0, p1

    float-to-int v3, v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/MenuLensTabMenuBinding;

    iget-object v2, v2, Lcom/samsung/android/app/galaxyraw/databinding/MenuLensTabMenuBinding;->lensTab:Landroid/widget/RelativeLayout;

    int-to-float v1, v1

    sub-float v1, v0, v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    div-float/2addr v0, v3

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, p1

    mul-float/2addr v0, v3

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->setTranslationX(F)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/MenuLensTabMenuBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/MenuLensTabMenuBinding;->lensTabSelectBg:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/MenuLensTabMenuBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/MenuLensTabMenuBinding;->lensTabSelectBg:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuView;->mTabWidth:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/MenuLensTabMenuBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/MenuLensTabMenuBinding;->lensTabSelectBg:Landroid/view/View;

    iget v1, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuView;->mBgTranslationX:F

    mul-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/MenuLensTabMenuBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/MenuLensTabMenuBinding;->lensTab:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    return-void
.end method

.method public getSelectedTabSettingValue()I
    .locals 2

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuView;->mCurrentTab:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/MenuLensTabMenuBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/MenuLensTabMenuBinding;->tabs:Lcom/google/android/material/tabs/TabLayout;

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuView;->mCurrentTab:I

    invoke-virtual {v0, p0}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$Tab;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    return v1
.end method

.method public hideLensTab()V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/MenuLensTabMenuBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/MenuLensTabMenuBinding;->lensTab:Landroid/widget/RelativeLayout;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method public initialize()V
    .locals 2

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_PRO_LENS_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->getSubCommandIdList(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/-$$Lambda$LensTabMenuView$tcM0XWIWrVS2tCmzUzn36qS9ywo;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/-$$Lambda$LensTabMenuView$tcM0XWIWrVS2tCmzUzn36qS9ywo;-><init>(Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuView;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/menu/abstraction/AbstractMenuContract$Presenter;

    check-cast p0, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuContract$Presenter;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuContract$Presenter;->onInitialize()V

    return-void
.end method

.method public synthetic lambda$initialize$0$LensTabMenuView(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/MenuLensTabMenuBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/MenuLensTabMenuBinding;->tabs:Lcom/google/android/material/tabs/TabLayout;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->getSettingValue(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)I

    move-result v1

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;->getImageResourceId()I

    move-result v2

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;->getContentDescriptionId()I

    move-result p1

    invoke-direct {p0, v1, v2, p1}, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuView;->getNewTab(III)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/material/tabs/TabLayout;->addTab(Lcom/google/android/material/tabs/TabLayout$Tab;)V

    return-void
.end method

.method public synthetic lambda$refreshTab$1$LensTabMenuView(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/MenuLensTabMenuBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/MenuLensTabMenuBinding;->lensTabSelectBg:Landroid/view/View;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationX(F)V

    return-void
.end method

.method public synthetic lambda$startTabAnimation$2$LensTabMenuView(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuView;->updateViewByAnimator(F)V

    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "orientation"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/MenuLensTabMenuBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/MenuLensTabMenuBinding;->tabs:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v1}, Lcom/google/android/material/tabs/TabLayout;->getTabCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/MenuLensTabMenuBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/MenuLensTabMenuBinding;->tabs:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v1, v0}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v1

    int-to-float v2, p1

    invoke-virtual {v1, v2}, Landroid/view/View;->setRotation(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onTabReselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tab"
        }
    .end annotation

    return-void
.end method

.method public onTabSelected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tab"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/menu/abstraction/AbstractMenuContract$Presenter;

    check-cast p0, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuContract$Presenter;

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuContract$Presenter;->onTabSelected(I)V

    return-void
.end method

.method public onTabUnselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tab"
        }
    .end annotation

    return-void
.end method

.method public refreshLayout()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuView;->refreshTabLayout()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/MenuLensTabMenuBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/MenuLensTabMenuBinding;->tabs:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0, p0}, Lcom/google/android/material/tabs/TabLayout;->addOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;)V

    return-void
.end method

.method public refreshTab(IZ)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tabSettingValue",
            "needForceRefreshTabViews"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuView;->getTabPosition(I)I

    move-result p1

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuView;->mTabWidth:I

    mul-int/2addr v0, p1

    int-to-float v0, v0

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuView;->mBgTranslationX:F

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070048

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    return-void

    :cond_0
    iget v2, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuView;->mCurrentTab:I

    if-eq v2, v1, :cond_2

    if-eq v2, p1, :cond_2

    iget v1, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuView;->mBgTranslationX:F

    if-le v2, p1, :cond_1

    goto :goto_0

    :cond_1
    neg-int v0, v0

    :goto_0
    int-to-float v0, v0

    add-float/2addr v1, v0

    iput v1, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuView;->mBgTranslationX:F

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v3, 0x0

    iget v4, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuView;->mTabWidth:I

    mul-int/2addr v2, v4

    int-to-float v2, v2

    aput v2, v0, v3

    const/4 v2, 0x1

    aput v1, v0, v2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0018

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/-$$Lambda$LensTabMenuView$I1SBbHA-xfOH2e80ny0l4Bw73F4;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/-$$Lambda$LensTabMenuView$I1SBbHA-xfOH2e80ny0l4Bw73F4;-><init>(Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuView$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuView$1;-><init>(Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_2

    :cond_2
    iget v1, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuView;->mBgTranslationX:F

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    neg-int v0, v0

    :goto_1
    int-to-float v0, v0

    add-float/2addr v1, v0

    iput v1, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuView;->mBgTranslationX:F

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/MenuLensTabMenuBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/MenuLensTabMenuBinding;->lensTabSelectBg:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/MenuLensTabMenuBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/MenuLensTabMenuBinding;->lensTabSelectBg:Landroid/view/View;

    iget v1, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuView;->mBgTranslationX:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    :goto_2
    iput p1, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuView;->mCurrentTab:I

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/MenuLensTabMenuBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/MenuLensTabMenuBinding;->tabs:Lcom/google/android/material/tabs/TabLayout;

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuView;->mCurrentTab:I

    invoke-virtual {p1, v0}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    if-eqz p2, :cond_4

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/MenuLensTabMenuBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/MenuLensTabMenuBinding;->tabs:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {p1, p0}, Lcom/google/android/material/tabs/TabLayout;->removeOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/MenuLensTabMenuBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/MenuLensTabMenuBinding;->tabs:Lcom/google/android/material/tabs/TabLayout;

    iget p2, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuView;->mCurrentTab:I

    invoke-virtual {p1, p2}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->select()V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/MenuLensTabMenuBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/MenuLensTabMenuBinding;->tabs:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {p1, p0}, Lcom/google/android/material/tabs/TabLayout;->addOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;)V

    :cond_4
    return-void
.end method

.method public setTabInitPosition(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuView;->getTabPosition(I)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/MenuLensTabMenuBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/MenuLensTabMenuBinding;->tabs:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0, p1}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout$Tab;->isSelected()Z

    move-result v0

    if-nez v0, :cond_1

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuView;->mCurrentTab:I

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/MenuLensTabMenuBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/MenuLensTabMenuBinding;->tabs:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {p0, p1}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$Tab;->select()V

    :cond_1
    return-void
.end method

.method public startMenuLaunchAnimation()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuView;->updateViewByAnimator(F)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuView;->startTabAnimation(Z)V

    return-void
.end method
