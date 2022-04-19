.class public Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensNameButton;
.super Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensButton;
.source "ZoomLensNameButton.java"


# instance fields
.field private mColorValueAnimator:Landroid/animation/ValueAnimator;

.field private mPrefixName:I

.field private mValue:I

.field private mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ZoomLensNameButtonBinding;


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

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensButton;-><init>(Landroid/content/Context;)V

    return-void
.end method

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

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private changeFontColor(II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "from",
            "to"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensNameButton;->mColorValueAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomLensNameButton$cKiE6iaDNlZRaIuvtIZz2Y1Tjg0;->INSTANCE:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomLensNameButton$cKiE6iaDNlZRaIuvtIZz2Y1Tjg0;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomLensNameButton$vjV4pI7QAP6km5qsfXBlMN70PV8;->INSTANCE:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomLensNameButton$vjV4pI7QAP6km5qsfXBlMN70PV8;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofArgb([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensNameButton;->mColorValueAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomLensNameButton$7GRHDVAKH9xkehjcIBrrfYFA0E8;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomLensNameButton$7GRHDVAKH9xkehjcIBrrfYFA0E8;-><init>(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensNameButton;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensNameButton;->mColorValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensNameButton;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0b001f

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    int-to-long v0, p2

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensNameButton;->mColorValueAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensNameButton;->mColorValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private changeNormalTextToSelectedText(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animation"
        }
    .end annotation

    const/4 v0, 0x0

    const v1, 0x7f06002f

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensNameButton;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ZoomLensNameButtonBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/ZoomLensNameButtonBinding;->zoomButtonText:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result p1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensNameButton;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensNameButton;->changeFontColor(II)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensNameButton;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ZoomLensNameButtonBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/ZoomLensNameButtonBinding;->zoomButtonText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensNameButton;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensNameButton;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ZoomLensNameButtonBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/ZoomLensNameButtonBinding;->zoomButtonText:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensNameButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0701fd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensNameButton;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ZoomLensNameButtonBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/ZoomLensNameButtonBinding;->zoomButtonText:Landroid/widget/TextView;

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/util/Util;->getRobotoBold()Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method private changeSelectedTextToNormalText(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animation"
        }
    .end annotation

    const/4 v0, 0x0

    const v1, 0x7f060254

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensNameButton;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ZoomLensNameButtonBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/ZoomLensNameButtonBinding;->zoomButtonText:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result p1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensNameButton;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensNameButton;->changeFontColor(II)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensNameButton;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ZoomLensNameButtonBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/ZoomLensNameButtonBinding;->zoomButtonText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensNameButton;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensNameButton;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ZoomLensNameButtonBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/ZoomLensNameButtonBinding;->zoomButtonText:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensNameButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0701fe

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensNameButton;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ZoomLensNameButtonBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/ZoomLensNameButtonBinding;->zoomButtonText:Landroid/widget/TextView;

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/util/Util;->getRobotoMedium()Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method private hideBackground()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensNameButton;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ZoomLensNameButtonBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/ZoomLensNameButtonBinding;->zoomBackground:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensNameButton;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ZoomLensNameButtonBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/ZoomLensNameButtonBinding;->zoomBackground:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getScaleX()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensNameButton;->setViewScale(Landroid/view/View;F)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensNameButton;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ZoomLensNameButtonBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/ZoomLensNameButtonBinding;->zoomBackground:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensNameButton;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b004d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensNameButton;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ZoomLensNameButtonBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/ZoomLensNameButtonBinding;->zoomBackground:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensNameButton;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b004e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v2, Lcom/samsung/android/app/galaxyraw/util/interpolator/CustomPath;

    const v3, 0x3e6147ae    # 0.22f

    const/high16 v4, 0x3e800000    # 0.25f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v4, v1, v5}, Lcom/samsung/android/app/galaxyraw/util/interpolator/CustomPath;-><init>(FFFF)V

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomLensNameButton$BmK9vuiw7UA0UjRTV7uzvxdVp0U;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomLensNameButton$BmK9vuiw7UA0UjRTV7uzvxdVp0U;-><init>(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensNameButton;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public static synthetic lambda$cKiE6iaDNlZRaIuvtIZz2Y1Tjg0(Landroid/animation/ValueAnimator;)Z
    .locals 0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$vjV4pI7QAP6km5qsfXBlMN70PV8(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    return-void
.end method

.method private setText(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "commandId"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensNameButton$1;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$CommandId:[I

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const p1, 0x7f1204ea

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensNameButton;->mPrefixName:I

    const-string p1, "W"

    goto :goto_0

    :cond_0
    const p1, 0x7f1203fa

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensNameButton;->mPrefixName:I

    const-string p1, "ST"

    goto :goto_0

    :cond_1
    const p1, 0x7f120469

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensNameButton;->mPrefixName:I

    const-string p1, "T"

    goto :goto_0

    :cond_2
    const p1, 0x7f1204c3

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensNameButton;->mPrefixName:I

    const-string p1, "UW"

    :goto_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensNameButton;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ZoomLensNameButtonBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/ZoomLensNameButtonBinding;->zoomButtonText:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setViewScale(Landroid/view/View;F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "scale"
        }
    .end annotation

    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method private showBackground()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensNameButton;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ZoomLensNameButtonBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/ZoomLensNameButtonBinding;->zoomBackground:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensNameButton;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ZoomLensNameButtonBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/ZoomLensNameButtonBinding;->zoomBackground:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensNameButton;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ZoomLensNameButtonBinding;

    iget-object v2, v2, Lcom/samsung/android/app/galaxyraw/databinding/ZoomLensNameButtonBinding;->zoomBackground:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getScaleX()F

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensNameButton;->setViewScale(Landroid/view/View;F)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensNameButton;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ZoomLensNameButtonBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/ZoomLensNameButtonBinding;->zoomBackground:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensNameButton;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ZoomLensNameButtonBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/ZoomLensNameButtonBinding;->zoomBackground:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensNameButton;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f0b0050

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    new-instance v0, Lcom/samsung/android/app/galaxyraw/util/interpolator/CustomPath;

    const v1, 0x3e4ccccd    # 0.2f

    const/4 v2, 0x0

    const v3, 0x3f99999a    # 1.2f

    invoke-direct {v0, v1, v1, v2, v3}, Lcom/samsung/android/app/galaxyraw/util/interpolator/CustomPath;-><init>(FFFF)V

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method


# virtual methods
.method getPrefixName()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensNameButton;->mPrefixName:I

    return p0
.end method

.method public getValue()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensNameButton;->mValue:I

    return p0
.end method

.method public initialize(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;ILcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;Lcom/samsung/android/app/galaxyraw/data/ZoomDefaultValue;Z)V
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
            "commandId",
            "value",
            "zoomCategory",
            "defaultValue",
            "isSelected"
        }
    .end annotation

    invoke-super/range {p0 .. p5}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensButton;->initialize(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;ILcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;Lcom/samsung/android/app/galaxyraw/data/ZoomDefaultValue;Z)V

    iput p2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensNameButton;->mValue:I

    const/4 p2, 0x0

    if-eqz p5, :cond_0

    iget-object p3, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensNameButton;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ZoomLensNameButtonBinding;

    iget-object p3, p3, Lcom/samsung/android/app/galaxyraw/databinding/ZoomLensNameButtonBinding;->zoomBackground:Landroid/widget/ImageView;

    invoke-virtual {p3, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p3, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensNameButton;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ZoomLensNameButtonBinding;

    iget-object p3, p3, Lcom/samsung/android/app/galaxyraw/databinding/ZoomLensNameButtonBinding;->zoomBackground:Landroid/widget/ImageView;

    const/high16 p4, 0x3f800000    # 1.0f

    invoke-direct {p0, p3, p4}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensNameButton;->setViewScale(Landroid/view/View;F)V

    invoke-direct {p0, p2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensNameButton;->changeNormalTextToSelectedText(Z)V

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensNameButton;->setSelected(Z)V

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensNameButton;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ZoomLensNameButtonBinding;

    iget-object p3, p3, Lcom/samsung/android/app/galaxyraw/databinding/ZoomLensNameButtonBinding;->zoomBackground:Landroid/widget/ImageView;

    const/4 p4, 0x4

    invoke-virtual {p3, p4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p3, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensNameButton;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ZoomLensNameButtonBinding;

    iget-object p3, p3, Lcom/samsung/android/app/galaxyraw/databinding/ZoomLensNameButtonBinding;->zoomBackground:Landroid/widget/ImageView;

    const/4 p4, 0x0

    invoke-direct {p0, p3, p4}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensNameButton;->setViewScale(Landroid/view/View;F)V

    invoke-direct {p0, p2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensNameButton;->changeSelectedTextToNormalText(Z)V

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensNameButton;->setSelected(Z)V

    :goto_0
    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensNameButton;->setText(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)V

    return-void
.end method

.method public synthetic lambda$changeFontColor$0$ZoomLensNameButton(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensNameButton;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ZoomLensNameButtonBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/ZoomLensNameButtonBinding;->zoomButtonText:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public synthetic lambda$hideBackground$1$ZoomLensNameButton()V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensNameButton;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ZoomLensNameButtonBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/ZoomLensNameButtonBinding;->zoomBackground:Landroid/widget/ImageView;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public setSelected(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "selected"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensNameButton;->isSelected()Z

    move-result v0

    xor-int/2addr v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensButton;->setSelected(Z)V

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensNameButton;->showBackground()V

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensNameButton;->changeNormalTextToSelectedText(Z)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensNameButton;->hideBackground()V

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensNameButton;->changeSelectedTextToNormalText(Z)V

    :goto_0
    return-void
.end method

.method public setViewBinding(Landroidx/databinding/ViewDataBinding;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "viewDataBinding"
        }
    .end annotation

    check-cast p1, Lcom/samsung/android/app/galaxyraw/databinding/ZoomLensNameButtonBinding;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensNameButton;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ZoomLensNameButtonBinding;

    return-void
.end method
