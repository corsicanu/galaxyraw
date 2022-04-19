.class public Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensTextButton;
.super Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensButton;
.source "ZoomLensTextButton.java"


# instance fields
.field private mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ZoomLensTextButtonBinding;

.field private mZoomCategory:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;


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

.method private changeFontSize(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "textView",
            "ratioStr"
        }
    .end annotation

    const-string v0, "."

    const-string v1, ""

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensTextButton;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f070203

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    invoke-virtual {p1, v1, p0}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensTextButton;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f070205

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    invoke-virtual {p1, v1, p0}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensTextButton;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f070204

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    invoke-virtual {p1, v1, p0}, Landroid/widget/TextView;->setTextSize(IF)V

    :goto_0
    return-void
.end method

.method private hideBackground()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensTextButton;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ZoomLensTextButtonBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/ZoomLensTextButtonBinding;->zoomBackground:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensTextButton;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ZoomLensTextButtonBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/ZoomLensTextButtonBinding;->zoomBackground:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensTextButton;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ZoomLensTextButtonBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/ZoomLensTextButtonBinding;->zoomBackground:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getScaleX()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensTextButton;->setViewScale(Landroid/view/View;F)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensTextButton;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ZoomLensTextButtonBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/ZoomLensTextButtonBinding;->zoomBackground:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensTextButton;->getResources()Landroid/content/res/Resources;

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

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensTextButton;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ZoomLensTextButtonBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/ZoomLensTextButtonBinding;->zoomBackground:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensTextButton;->getResources()Landroid/content/res/Resources;

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

    new-instance v1, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomLensTextButton$x38KPEttj9GYr0Ryw_rcP6duIbk;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomLensTextButton$x38KPEttj9GYr0Ryw_rcP6duIbk;-><init>(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensTextButton;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method private initializeBackground(Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "zoomCategory"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;->HYPER_LAPSE:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;->LENS:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;

    if-ne p1, v0, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensTextButton;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ZoomLensTextButtonBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/ZoomLensTextButtonBinding;->zoomButton:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensTextButton;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensTextButton;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f080994

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensTextButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method private initializeChildView(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isSelected"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensTextButton;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ZoomLensTextButtonBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/ZoomLensTextButtonBinding;->zoomBackground:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensTextButton;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ZoomLensTextButtonBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/ZoomLensTextButtonBinding;->zoomBackground:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensTextButton;->setViewScale(Landroid/view/View;F)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensTextButton;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ZoomLensTextButtonBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/ZoomLensTextButtonBinding;->zoomBackground:Landroid/widget/ImageView;

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-eqz p1, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    move v3, v2

    :goto_2
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensTextButton;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ZoomLensTextButtonBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/ZoomLensTextButtonBinding;->zoomFocusText:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_3

    move v3, v1

    goto :goto_3

    :cond_3
    move v3, v2

    :goto_3
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensTextButton;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ZoomLensTextButtonBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/ZoomLensTextButtonBinding;->zoomNormalText:Landroid/widget/TextView;

    if-eqz p1, :cond_4

    move v1, v2

    :cond_4
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

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

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensTextButton;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ZoomLensTextButtonBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/ZoomLensTextButtonBinding;->zoomBackground:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensTextButton;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ZoomLensTextButtonBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/ZoomLensTextButtonBinding;->zoomBackground:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensTextButton;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ZoomLensTextButtonBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/ZoomLensTextButtonBinding;->zoomBackground:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensTextButton;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ZoomLensTextButtonBinding;

    iget-object v2, v2, Lcom/samsung/android/app/galaxyraw/databinding/ZoomLensTextButtonBinding;->zoomBackground:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getScaleX()F

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensTextButton;->setViewScale(Landroid/view/View;F)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensTextButton;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ZoomLensTextButtonBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/ZoomLensTextButtonBinding;->zoomBackground:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensTextButton;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ZoomLensTextButtonBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/ZoomLensTextButtonBinding;->zoomBackground:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensTextButton;->getResources()Landroid/content/res/Resources;

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

.method private showFocusText()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensTextButton;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ZoomLensTextButtonBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/ZoomLensTextButtonBinding;->zoomFocusText:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensTextButton;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ZoomLensTextButtonBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/ZoomLensTextButtonBinding;->zoomFocusText:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensTextButton;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ZoomLensTextButtonBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/ZoomLensTextButtonBinding;->zoomFocusText:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensTextButton;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f0b0051

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method private showNormalText()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensTextButton;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ZoomLensTextButtonBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/ZoomLensTextButtonBinding;->zoomNormalText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensTextButton;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ZoomLensTextButtonBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/ZoomLensTextButtonBinding;->zoomNormalText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensTextButton;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ZoomLensTextButtonBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/ZoomLensTextButtonBinding;->zoomNormalText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensTextButton;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f0b0051

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    return-void
.end method


# virtual methods
.method public initialize(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;ILcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;Lcom/samsung/android/app/galaxyraw/data/ZoomDefaultValue;Z)V
    .locals 1
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

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensTextButton;->mZoomCategory:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;

    invoke-super/range {p0 .. p5}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensButton;->initialize(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;ILcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;Lcom/samsung/android/app/galaxyraw/data/ZoomDefaultValue;Z)V

    invoke-super {p0, p5}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensButton;->setSelected(Z)V

    if-eqz p5, :cond_1

    invoke-virtual {p4}, Lcom/samsung/android/app/galaxyraw/data/ZoomDefaultValue;->getLevelValue()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p4}, Lcom/samsung/android/app/galaxyraw/data/ZoomDefaultValue;->getLevelValue()I

    move-result p2

    :goto_0
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensTextButton;->setText(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensTextButton;->setText(I)V

    :goto_1
    invoke-direct {p0, p5}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensTextButton;->initializeChildView(Z)V

    invoke-direct {p0, p3}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensTextButton;->initializeBackground(Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;)V

    return-void
.end method

.method public synthetic lambda$hideBackground$0$ZoomLensTextButton()V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensTextButton;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ZoomLensTextButtonBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/ZoomLensTextButtonBinding;->zoomBackground:Landroid/widget/ImageView;

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

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensTextButton;->isSelected()Z

    move-result v0

    xor-int/2addr v0, p1

    invoke-super {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensButton;->setSelected(Z)V

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x4

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensTextButton;->showBackground()V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensTextButton;->showFocusText()V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensTextButton;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ZoomLensTextButtonBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/ZoomLensTextButtonBinding;->zoomNormalText:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensTextButton;->hideBackground()V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensTextButton;->showNormalText()V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensTextButton;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ZoomLensTextButtonBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/ZoomLensTextButtonBinding;->zoomFocusText:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public setText(I)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    div-int/lit8 v0, p1, 0x64

    mul-int/lit8 v0, v0, 0x64

    int-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v1, v0, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-gez v1, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    new-array v1, v2, [Ljava/lang/Object;

    const/high16 v4, 0x41200000    # 10.0f

    mul-float/2addr v0, v4

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    const-string v4, "0.%d"

    invoke-static {p1, v4, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensTextButton;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ZoomLensTextButtonBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/ZoomLensTextButtonBinding;->zoomButtonText:Landroid/widget/TextView;

    invoke-direct {p0, v1, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensTextButton;->changeFontSize(Landroid/widget/TextView;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensTextButton;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ZoomLensTextButtonBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/ZoomLensTextButtonBinding;->zoomButtonText:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v3

    const-string v0, ".%d"

    invoke-static {p1, v0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensTextButton;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ZoomLensTextButtonBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/ZoomLensTextButtonBinding;->zoomNormalText:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensTextButton;->changeFontSize(Landroid/widget/TextView;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensTextButton;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ZoomLensTextButtonBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/ZoomLensTextButtonBinding;->zoomNormalText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensTextButton;->mZoomCategory:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;->LENS:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensTextButton;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ZoomLensTextButtonBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/ZoomLensTextButtonBinding;->zoomNormalText:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensTextButton;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f070202

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    float-to-int p0, p0

    invoke-virtual {p1, p0}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    goto :goto_1

    :cond_0
    rem-int/lit16 p1, p1, 0x3e8

    if-nez p1, :cond_1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    new-array v1, v2, [Ljava/lang/Object;

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v3

    const-string v0, "%d"

    invoke-static {p1, v0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v1, v3

    const-string v0, "%.1f"

    invoke-static {p1, v0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensTextButton;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ZoomLensTextButtonBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/ZoomLensTextButtonBinding;->zoomButtonText:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensTextButton;->changeFontSize(Landroid/widget/TextView;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensTextButton;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ZoomLensTextButtonBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/ZoomLensTextButtonBinding;->zoomButtonText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensTextButton;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ZoomLensTextButtonBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/ZoomLensTextButtonBinding;->zoomNormalText:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensTextButton;->changeFontSize(Landroid/widget/TextView;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensTextButton;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ZoomLensTextButtonBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/ZoomLensTextButtonBinding;->zoomNormalText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensTextButton;->mZoomCategory:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;->LENS:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;

    if-ne p1, v0, :cond_2

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensTextButton;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ZoomLensTextButtonBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/ZoomLensTextButtonBinding;->zoomNormalText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    :cond_2
    :goto_1
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

    check-cast p1, Lcom/samsung/android/app/galaxyraw/databinding/ZoomLensTextButtonBinding;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensTextButton;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ZoomLensTextButtonBinding;

    return-void
.end method

.method public startBounceAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensTextButton;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ZoomLensTextButtonBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/ZoomLensTextButtonBinding;->zoomBackground:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensTextButton;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ZoomLensTextButtonBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/ZoomLensTextButtonBinding;->zoomBackground:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensTextButton;->setViewScale(Landroid/view/View;F)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensTextButton;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensTextButton;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ZoomLensTextButtonBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/ZoomLensTextButtonBinding;->zoomBackground:Landroid/widget/ImageView;

    invoke-static {v0, p0}, Lcom/samsung/android/app/galaxyraw/util/ViewPropertyAnimatorHelper;->startDefaultBounceAnimation(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method
