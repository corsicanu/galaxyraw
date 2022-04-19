.class public Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;
.super Landroid/widget/RelativeLayout;
.source "ExpandableSlider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$SliderDrawable;,
        Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$TrackingTouchListener;,
        Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$ProgressChangeListener;,
        Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$SliderState;
    }
.end annotation


# instance fields
.field private mIsCenterBased:Z

.field private mNumberOfSteps:I

.field private mProgress:I

.field private mProgressChangeListener:Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$ProgressChangeListener;

.field private mProgressDrawable:Landroid/graphics/drawable/Drawable;

.field private mRect:Landroid/graphics/Rect;

.field private mSliderState:Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$SliderState;

.field private mSmoothnessFactor:I

.field private mTrackingTouchListener:Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$TrackingTouchListener;

.field private mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/WidgetExpandableSliderBinding;


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

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;->mRect:Landroid/graphics/Rect;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$SliderState;->IDLE:Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$SliderState;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;->mSliderState:Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$SliderState;

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;->initView()V

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

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;->mRect:Landroid/graphics/Rect;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$SliderState;->IDLE:Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$SliderState;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;->mSliderState:Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$SliderState;

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;->initView()V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;I)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;->getSmoothProgress(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;->mSmoothnessFactor:I

    return p0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;)Lcom/samsung/android/app/galaxyraw/databinding/WidgetExpandableSliderBinding;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/WidgetExpandableSliderBinding;

    return-object p0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;)Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$ProgressChangeListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;->mProgressChangeListener:Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$ProgressChangeListener;

    return-object p0
.end method

.method static synthetic access$400(Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;)Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$SliderState;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;->mSliderState:Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$SliderState;

    return-object p0
.end method

.method static synthetic access$402(Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$SliderState;)Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$SliderState;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;->mSliderState:Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$SliderState;

    return-object p1
.end method

.method static synthetic access$500(Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;Landroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;->startShowAnimation(Landroid/widget/TextView;)V

    return-void
.end method

.method static synthetic access$600(Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;)Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$TrackingTouchListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;->mTrackingTouchListener:Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$TrackingTouchListener;

    return-object p0
.end method

.method static synthetic access$700(Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;->mProgress:I

    return p0
.end method

.method static synthetic access$702(Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;->mProgress:I

    return p1
.end method

.method private colorToColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    const/4 p0, 0x1

    new-array v0, p0, [[I

    const/4 v1, 0x0

    new-array v2, v1, [I

    aput-object v2, v0, v1

    new-instance v2, Landroid/content/res/ColorStateList;

    new-array p0, p0, [I

    aput p1, p0, v1

    invoke-direct {v2, v0, p0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v2
.end method

.method private createSeekBarChangeListener(I)Landroidx/appcompat/widget/SeslSeekBar$OnSeekBarChangeListener;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "titleId"
        }
    .end annotation

    new-instance p1, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$1;-><init>(Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;)V

    return-object p1
.end method

.method private getSmoothProgress(I)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "progress"
        }
    .end annotation

    if-gez p1, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iget v1, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;->mSmoothnessFactor:I

    div-int/lit8 v2, v1, 0x2

    mul-int/2addr v0, v2

    add-int/2addr p1, v0

    div-int/2addr p1, v1

    int-to-float p1, p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;->mSmoothnessFactor:I

    mul-int/2addr p1, p0

    return p1
.end method

.method private initView()V
    .locals 6

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lcom/samsung/android/app/galaxyraw/databinding/WidgetExpandableSliderBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/samsung/android/app/galaxyraw/databinding/WidgetExpandableSliderBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/WidgetExpandableSliderBinding;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$SliderDrawable;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07045e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/WidgetExpandableSliderBinding;

    iget-object v2, v2, Lcom/samsung/android/app/galaxyraw/databinding/WidgetExpandableSliderBinding;->slider:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {v2}, Landroidx/appcompat/widget/SeslSeekBar;->getMaxHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f06023d

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$SliderDrawable;-><init>(Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;FFLandroid/content/res/ColorStateList;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/WidgetExpandableSliderBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/WidgetExpandableSliderBinding;->slider:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SeslSeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/WidgetExpandableSliderBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/WidgetExpandableSliderBinding;->slider:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SeslSeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/WidgetExpandableSliderBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/WidgetExpandableSliderBinding;->slider:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06023b

    invoke-virtual {v1, v2, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SeslSeekBar;->setProgressBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/WidgetExpandableSliderBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/WidgetExpandableSliderBinding;->slider:Landroidx/appcompat/widget/SeslSeekBar;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/widget/-$$Lambda$ExpandableSlider$nwp9eZRGnmDBmBni2RLuKZwCS-A;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/widget/-$$Lambda$ExpandableSlider$nwp9eZRGnmDBmBni2RLuKZwCS-A;-><init>(Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SeslSeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private startShowAnimation(Landroid/widget/TextView;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "textView"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0b0015

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    int-to-long v0, p0

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method private updateSteps()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/WidgetExpandableSliderBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/WidgetExpandableSliderBinding;->slider:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SeslSeekBar;->getMeasuredWidth()I

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;->mNumberOfSteps:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/WidgetExpandableSliderBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/WidgetExpandableSliderBinding;->slider:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SeslSeekBar;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;->mNumberOfSteps:I

    div-int/2addr v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00b7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    :goto_1
    iput v0, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;->mSmoothnessFactor:I

    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;->mIsCenterBased:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;->mNumberOfSteps:I

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/WidgetExpandableSliderBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/WidgetExpandableSliderBinding;->slider:Landroidx/appcompat/widget/SeslSeekBar;

    iget v2, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;->mSmoothnessFactor:I

    mul-int/2addr v2, v0

    neg-int v2, v2

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/SeslSeekBar;->setMin(I)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/WidgetExpandableSliderBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/WidgetExpandableSliderBinding;->slider:Landroidx/appcompat/widget/SeslSeekBar;

    iget v2, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;->mSmoothnessFactor:I

    mul-int/2addr v0, v2

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/SeslSeekBar;->setMax(I)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/WidgetExpandableSliderBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/WidgetExpandableSliderBinding;->slider:Landroidx/appcompat/widget/SeslSeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SeslSeekBar;->setMin(I)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/WidgetExpandableSliderBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/WidgetExpandableSliderBinding;->slider:Landroidx/appcompat/widget/SeslSeekBar;

    iget v1, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;->mNumberOfSteps:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;->mSmoothnessFactor:I

    mul-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SeslSeekBar;->setMax(I)V

    :goto_2
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/WidgetExpandableSliderBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/WidgetExpandableSliderBinding;->slider:Landroidx/appcompat/widget/SeslSeekBar;

    iget v1, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;->mProgress:I

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;->mSmoothnessFactor:I

    mul-int/2addr v1, p0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SeslSeekBar;->setProgress(I)V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;->mIsCenterBased:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/WidgetExpandableSliderBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/WidgetExpandableSliderBinding;->slider:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SeslSeekBar;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07045a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/WidgetExpandableSliderBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/WidgetExpandableSliderBinding;->slider:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {v1}, Landroidx/appcompat/widget/SeslSeekBar;->getProgress()I

    move-result v1

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/WidgetExpandableSliderBinding;

    iget-object v3, v3, Lcom/samsung/android/app/galaxyraw/databinding/WidgetExpandableSliderBinding;->slider:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {v3}, Landroidx/appcompat/widget/SeslSeekBar;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    mul-int/2addr v1, v3

    iget v3, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;->mNumberOfSteps:I

    add-int/lit8 v3, v3, -0x1

    iget v4, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;->mSmoothnessFactor:I

    mul-int/2addr v3, v4

    div-int/2addr v1, v3

    add-int/2addr v1, v0

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/WidgetExpandableSliderBinding;

    iget-object v4, v4, Lcom/samsung/android/app/galaxyraw/databinding/WidgetExpandableSliderBinding;->slider:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {v4}, Landroidx/appcompat/widget/SeslSeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/WidgetExpandableSliderBinding;

    iget-object v3, v3, Lcom/samsung/android/app/galaxyraw/databinding/WidgetExpandableSliderBinding;->slider:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {v3}, Landroidx/appcompat/widget/SeslSeekBar;->getLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    add-int/2addr v3, v2

    int-to-float v2, v3

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/WidgetExpandableSliderBinding;

    iget-object v3, v3, Lcom/samsung/android/app/galaxyraw/databinding/WidgetExpandableSliderBinding;->slider:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {v3}, Landroidx/appcompat/widget/SeslSeekBar;->getTop()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;->getHeight()I

    move-result v1

    invoke-virtual {p1, v2, v3, v0, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public getProgress()I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/WidgetExpandableSliderBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/WidgetExpandableSliderBinding;->slider:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslSeekBar;->getProgress()I

    move-result p0

    return p0
.end method

.method public hide()V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700c0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    neg-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b003e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/widget/-$$Lambda$ExpandableSlider$p1iZVdIBackQyQxvDqxz4sqd6P8;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/widget/-$$Lambda$ExpandableSlider$p1iZVdIBackQyQxvDqxz4sqd6P8;-><init>(Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public initialize(IIZIZ)V
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
            "titleId",
            "numberOfSteps",
            "isCenterBased",
            "progress",
            "isVertical"
        }
    .end annotation

    iput p4, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;->mProgress:I

    iput p2, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;->mNumberOfSteps:I

    iput-boolean p3, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;->mIsCenterBased:Z

    if-eqz p5, :cond_0

    const/high16 p2, 0x43870000    # 270.0f

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;->setRotation(F)V

    :cond_0
    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/WidgetExpandableSliderBinding;

    iget-object p2, p2, Lcom/samsung/android/app/galaxyraw/databinding/WidgetExpandableSliderBinding;->sliderTitle:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(I)V

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/WidgetExpandableSliderBinding;

    iget-object p2, p2, Lcom/samsung/android/app/galaxyraw/databinding/WidgetExpandableSliderBinding;->sliderLevel:Landroid/widget/TextView;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/WidgetExpandableSliderBinding;

    iget-object p2, p2, Lcom/samsung/android/app/galaxyraw/databinding/WidgetExpandableSliderBinding;->sliderActiveLevel:Landroid/widget/TextView;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/WidgetExpandableSliderBinding;

    iget-object p2, p2, Lcom/samsung/android/app/galaxyraw/databinding/WidgetExpandableSliderBinding;->slider:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/SeslSeekBar;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-boolean p2, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;->mIsCenterBased:Z

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/WidgetExpandableSliderBinding;

    iget-object p2, p2, Lcom/samsung/android/app/galaxyraw/databinding/WidgetExpandableSliderBinding;->slider:Landroidx/appcompat/widget/SeslSeekBar;

    const/4 p3, 0x0

    invoke-direct {p0, p3}, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p4

    invoke-virtual {p2, p4}, Landroidx/appcompat/widget/SeslSeekBar;->setSecondaryProgressTintList(Landroid/content/res/ColorStateList;)V

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/WidgetExpandableSliderBinding;

    iget-object p2, p2, Lcom/samsung/android/app/galaxyraw/databinding/WidgetExpandableSliderBinding;->slider:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-direct {p0, p3}, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p4

    invoke-virtual {p2, p4}, Landroidx/appcompat/widget/SeslSeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/WidgetExpandableSliderBinding;

    iget-object p2, p2, Lcom/samsung/android/app/galaxyraw/databinding/WidgetExpandableSliderBinding;->slider:Landroidx/appcompat/widget/SeslSeekBar;

    sget-object p4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p2, p4}, Landroidx/appcompat/widget/SeslSeekBar;->setProgressTintMode(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p0, p3}, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;->setWillNotDraw(Z)V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/WidgetExpandableSliderBinding;

    iget-object p2, p2, Lcom/samsung/android/app/galaxyraw/databinding/WidgetExpandableSliderBinding;->slider:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f06023d

    const/4 p5, 0x0

    invoke-virtual {p3, p4, p5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p3

    invoke-direct {p0, p3}, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/SeslSeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;->setWillNotDraw(Z)V

    :goto_0
    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/WidgetExpandableSliderBinding;

    iget-object p2, p2, Lcom/samsung/android/app/galaxyraw/databinding/WidgetExpandableSliderBinding;->slider:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;->createSeekBarChangeListener(I)Landroidx/appcompat/widget/SeslSeekBar$OnSeekBarChangeListener;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/SeslSeekBar;->setOnSeekBarChangeListener(Landroidx/appcompat/widget/SeslSeekBar$OnSeekBarChangeListener;)V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;->updateSteps()V

    return-void
.end method

.method public synthetic lambda$hide$0$ExpandableSlider()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;->setTranslationY(F)V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;->setAlpha(F)V

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;->setVisibility(I)V

    return-void
.end method

.method public synthetic lambda$initView$1$ExpandableSlider(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    const/4 p2, 0x2

    if-eq p1, p2, :cond_1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;->mSliderState:Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$SliderState;

    sget-object p2, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$SliderState;->READY_TO_TRACKING:Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$SliderState;

    if-ne p1, p2, :cond_2

    sget-object p1, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$SliderState;->IDLE:Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$SliderState;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;->mSliderState:Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$SliderState;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;->mSliderState:Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$SliderState;

    sget-object p2, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$SliderState;->IDLE:Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$SliderState;

    if-ne p1, p2, :cond_2

    sget-object p1, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$SliderState;->READY_TO_TRACKING:Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$SliderState;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;->mSliderState:Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$SliderState;

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method protected onLayout(ZIIII)V
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
            "changed",
            "left",
            "top",
            "right",
            "bottom"
        }
    .end annotation

    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/WidgetExpandableSliderBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/WidgetExpandableSliderBinding;->slider:Landroidx/appcompat/widget/SeslSeekBar;

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/SeslSeekBar;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "widthMeasureSpec",
            "heightMeasureSpec"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    iget p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;->mNumberOfSteps:I

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;->mSmoothnessFactor:I

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/WidgetExpandableSliderBinding;

    iget-object p2, p2, Lcom/samsung/android/app/galaxyraw/databinding/WidgetExpandableSliderBinding;->slider:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {p2}, Landroidx/appcompat/widget/SeslSeekBar;->getMeasuredWidth()I

    move-result p2

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;->mNumberOfSteps:I

    div-int/2addr p2, v0

    if-ge p1, p2, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;->updateSteps()V

    :cond_0
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "orientation"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/WidgetExpandableSliderBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/WidgetExpandableSliderBinding;->sliderLevel:Landroid/widget/TextView;

    int-to-float p1, p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/galaxyraw/util/AnimationUtil;->rotationAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/WidgetExpandableSliderBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/WidgetExpandableSliderBinding;->sliderActiveLevel:Landroid/widget/TextView;

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/util/AnimationUtil;->rotationAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    return-void
.end method

.method public setCustomBackground(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "backgroundId"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/WidgetExpandableSliderBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/WidgetExpandableSliderBinding;->slider:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/SeslSeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setLevelVisibility(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isVisible"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/WidgetExpandableSliderBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/WidgetExpandableSliderBinding;->sliderLevel:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public setProgress(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "progress"
        }
    .end annotation

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;->mProgress:I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/WidgetExpandableSliderBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/WidgetExpandableSliderBinding;->slider:Landroidx/appcompat/widget/SeslSeekBar;

    iget v1, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;->mSmoothnessFactor:I

    mul-int/2addr p1, v1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;->getSmoothProgress(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/SeslSeekBar;->setProgress(I)V

    return-void
.end method

.method public setProgressChangeListener(Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$ProgressChangeListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "progressChangeListener"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;->mProgressChangeListener:Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$ProgressChangeListener;

    return-void
.end method

.method public setSliderTitleVisibility(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isVisible"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/WidgetExpandableSliderBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/WidgetExpandableSliderBinding;->sliderTitle:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public setTrackingTouchListener(Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$TrackingTouchListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "trackingTouchListener"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;->mTrackingTouchListener:Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider$TrackingTouchListener;

    return-void
.end method

.method public show()V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700c0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    neg-float v0, v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;->setTranslationY(F)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;->setAlpha(F)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/widget/ExpandableSlider;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f0b001f

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    return-void
.end method
