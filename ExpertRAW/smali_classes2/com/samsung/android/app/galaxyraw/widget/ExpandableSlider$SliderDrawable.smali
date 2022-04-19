.class Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$SliderDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "ExpandableSlider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SliderDrawable"
.end annotation


# instance fields
.field private final ANIMATION_DURATION:I

.field private mColor:I

.field private mColorStateList:Landroid/content/res/ColorStateList;

.field private mIsStateChanged:Z

.field private final mPaint:Landroid/graphics/Paint;

.field private mPressedAnimator:Landroid/animation/ValueAnimator;

.field private mRadius:F

.field private mReleasedAnimator:Landroid/animation/ValueAnimator;

.field private final mSliderMaxHeight:F

.field private final mSliderMinHeight:F

.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;FFLandroid/content/res/ColorStateList;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "minHeight",
            "maxHeight",
            "color"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$SliderDrawable;->this$0:Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$SliderDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f0b0013

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$SliderDrawable;->ANIMATION_DURATION:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$SliderDrawable;->mIsStateChanged:Z

    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object p1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iput-object p4, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$SliderDrawable;->mColorStateList:Landroid/content/res/ColorStateList;

    invoke-virtual {p4}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$SliderDrawable;->mColor:I

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iput p2, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$SliderDrawable;->mSliderMinHeight:F

    iput p3, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$SliderDrawable;->mSliderMaxHeight:F

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr p2, p1

    iput p2, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$SliderDrawable;->mRadius:F

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$SliderDrawable;->initAnimator()V

    return-void
.end method

.method private initAnimator()V
    .locals 8

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$SliderDrawable;->mSliderMinHeight:F

    iget v1, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$SliderDrawable;->mSliderMaxHeight:F

    const/4 v2, 0x2

    new-array v3, v2, [F

    const/4 v4, 0x0

    aput v0, v3, v4

    const/4 v5, 0x1

    aput v1, v3, v5

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$SliderDrawable;->mPressedAnimator:Landroid/animation/ValueAnimator;

    iget v6, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$SliderDrawable;->ANIMATION_DURATION:I

    int-to-long v6, v6

    invoke-virtual {v3, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$SliderDrawable;->mPressedAnimator:Landroid/animation/ValueAnimator;

    sget-object v6, Landroidx/appcompat/animation/SeslAnimationUtils;->SINE_IN_OUT_80:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$SliderDrawable;->mPressedAnimator:Landroid/animation/ValueAnimator;

    new-instance v6, Lcom/samsung/android/app/galaxyraw/widget/-$$Lambda$ExpandableSlider$SliderDrawable$827xbbb93XoglahoLDtk0r0dmNA;

    invoke-direct {v6, p0}, Lcom/samsung/android/app/galaxyraw/widget/-$$Lambda$ExpandableSlider$SliderDrawable$827xbbb93XoglahoLDtk0r0dmNA;-><init>(Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$SliderDrawable;)V

    invoke-virtual {v3, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v2, v2, [F

    aput v1, v2, v4

    aput v0, v2, v5

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$SliderDrawable;->mReleasedAnimator:Landroid/animation/ValueAnimator;

    iget v1, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$SliderDrawable;->ANIMATION_DURATION:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$SliderDrawable;->mReleasedAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Landroidx/appcompat/animation/SeslAnimationUtils;->SINE_IN_OUT_80:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$SliderDrawable;->mReleasedAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/widget/-$$Lambda$ExpandableSlider$SliderDrawable$_o8Kaf66Ipc4IRq4J3VfcFOY66g;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/widget/-$$Lambda$ExpandableSlider$SliderDrawable$_o8Kaf66Ipc4IRq4J3VfcFOY66g;-><init>(Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$SliderDrawable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method private invalidateTrack(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$SliderDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$SliderDrawable;->mRadius:F

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$SliderDrawable;->invalidateSelf()V

    return-void
.end method

.method private startPressedAnimation()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$SliderDrawable;->mPressedAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$SliderDrawable;->mReleasedAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$SliderDrawable;->mReleasedAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$SliderDrawable;->mPressedAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    iget v3, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$SliderDrawable;->mSliderMinHeight:F

    aput v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$SliderDrawable;->mSliderMaxHeight:F

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$SliderDrawable;->mPressedAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private startReleasedAnimation()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$SliderDrawable;->mReleasedAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$SliderDrawable;->mPressedAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$SliderDrawable;->mPressedAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$SliderDrawable;->mReleasedAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    iget v3, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$SliderDrawable;->mSliderMaxHeight:F

    aput v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$SliderDrawable;->mSliderMinHeight:F

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$SliderDrawable;->mReleasedAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private startSliderAnimation(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isChanged"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$SliderDrawable;->mIsStateChanged:Z

    if-eq v0, p1, :cond_1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$SliderDrawable;->startPressedAnimation()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$SliderDrawable;->startReleasedAnimation()V

    :goto_0
    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$SliderDrawable;->mIsStateChanged:Z

    :cond_1
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$SliderDrawable;->this$0:Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;->access$200(Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;)Lcom/samsung/android/app/galaxyraw/databinding/WidgetExpandableSliderBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/WidgetExpandableSliderBinding;->slider:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SeslSeekBar;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$SliderDrawable;->this$0:Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;->access$200(Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;)Lcom/samsung/android/app/galaxyraw/databinding/WidgetExpandableSliderBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/WidgetExpandableSliderBinding;->slider:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {v1}, Landroidx/appcompat/widget/SeslSeekBar;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$SliderDrawable;->this$0:Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;->access$200(Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;)Lcom/samsung/android/app/galaxyraw/databinding/WidgetExpandableSliderBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/WidgetExpandableSliderBinding;->slider:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {v1}, Landroidx/appcompat/widget/SeslSeekBar;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v2, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$SliderDrawable;->mRadius:F

    sub-float v4, v0, v2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$SliderDrawable;->this$0:Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;->access$200(Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;)Lcom/samsung/android/app/galaxyraw/databinding/WidgetExpandableSliderBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/WidgetExpandableSliderBinding;->slider:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SeslSeekBar;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float v3, v0, v1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$SliderDrawable;->this$0:Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;->access$200(Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;)Lcom/samsung/android/app/galaxyraw/databinding/WidgetExpandableSliderBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/WidgetExpandableSliderBinding;->slider:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SeslSeekBar;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float v5, v0, v1

    iget-object v6, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$SliderDrawable;->mPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getOpacity()I
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$SliderDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/graphics/Paint;->getXfermode()Landroid/graphics/Xfermode;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Paint;->getAlpha()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, -0x2

    return p0

    :cond_0
    const/16 v0, 0xff

    if-ne p0, v0, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    const/4 p0, -0x3

    return p0
.end method

.method public synthetic lambda$initAnimator$0$ExpandableSlider$SliderDrawable(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$SliderDrawable;->invalidateTrack(F)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$SliderDrawable;->this$0:Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;->invalidate()V

    return-void
.end method

.method public synthetic lambda$initAnimator$1$ExpandableSlider$SliderDrawable(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$SliderDrawable;->invalidateTrack(F)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$SliderDrawable;->this$0:Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;->invalidate()V

    return-void
.end method

.method protected onStateChange([I)Z
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stateSet"
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onStateChange([I)Z

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$SliderDrawable;->mColorStateList:Landroid/content/res/ColorStateList;

    iget v2, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$SliderDrawable;->mColor:I

    invoke-virtual {v1, p1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    iget v2, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$SliderDrawable;->mColor:I

    if-eq v2, v1, :cond_0

    iput v1, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$SliderDrawable;->mColor:I

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$SliderDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$SliderDrawable;->invalidateSelf()V

    :cond_0
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    move v5, v4

    :goto_0
    const/4 v6, 0x1

    if-ge v3, v1, :cond_3

    aget v7, p1, v3

    const v8, 0x101009e

    if-ne v7, v8, :cond_1

    move v4, v6

    goto :goto_1

    :cond_1
    const v8, 0x10100a7

    if-ne v7, v8, :cond_2

    move v5, v6

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    if-eqz v4, :cond_4

    if-eqz v5, :cond_4

    move v2, v6

    :cond_4
    invoke-direct {p0, v2}, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$SliderDrawable;->startSliderAnimation(Z)V

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "alpha"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$SliderDrawable;->invalidateSelf()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "colorFilter"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$SliderDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$SliderDrawable;->invalidateSelf()V

    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tint"
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$SliderDrawable;->mColorStateList:Landroid/content/res/ColorStateList;

    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$SliderDrawable;->mColor:I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$SliderDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$SliderDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method
