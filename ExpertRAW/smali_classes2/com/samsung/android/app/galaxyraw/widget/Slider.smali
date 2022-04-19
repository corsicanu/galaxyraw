.class public Lcom/samsung/android/app/galaxyraw/widget/Slider;
.super Landroid/widget/RelativeLayout;
.source "Slider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/widget/Slider$TrackingTouchListener;,
        Lcom/samsung/android/app/galaxyraw/widget/Slider$ProgressChangeListener;
    }
.end annotation


# instance fields
.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mIsCenterBased:Z

.field private mNumberOfSteps:I

.field private mProgress:I

.field private mProgressChangeListener:Lcom/samsung/android/app/galaxyraw/widget/Slider$ProgressChangeListener;

.field private mProgressDrawable:Landroid/graphics/drawable/Drawable;

.field private mSmoothnessFactor:I

.field private mTrackingTouchListener:Lcom/samsung/android/app/galaxyraw/widget/Slider$TrackingTouchListener;

.field private mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/WidgetSliderBinding;


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

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/widget/Slider;->initView()V

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

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/widget/Slider;->initView()V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/galaxyraw/widget/Slider;I)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/widget/Slider;->getSmoothProgress(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/galaxyraw/widget/Slider;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/widget/Slider;->mSmoothnessFactor:I

    return p0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/galaxyraw/widget/Slider;)Lcom/samsung/android/app/galaxyraw/databinding/WidgetSliderBinding;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/widget/Slider;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/WidgetSliderBinding;

    return-object p0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/galaxyraw/widget/Slider;)Lcom/samsung/android/app/galaxyraw/widget/Slider$ProgressChangeListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/widget/Slider;->mProgressChangeListener:Lcom/samsung/android/app/galaxyraw/widget/Slider$ProgressChangeListener;

    return-object p0
.end method

.method static synthetic access$400(Lcom/samsung/android/app/galaxyraw/widget/Slider;)Lcom/samsung/android/app/galaxyraw/widget/Slider$TrackingTouchListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/widget/Slider;->mTrackingTouchListener:Lcom/samsung/android/app/galaxyraw/widget/Slider$TrackingTouchListener;

    return-object p0
.end method

.method static synthetic access$500(Lcom/samsung/android/app/galaxyraw/widget/Slider;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/widget/Slider;->mProgress:I

    return p0
.end method

.method static synthetic access$502(Lcom/samsung/android/app/galaxyraw/widget/Slider;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/widget/Slider;->mProgress:I

    return p1
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
    iget v1, p0, Lcom/samsung/android/app/galaxyraw/widget/Slider;->mSmoothnessFactor:I

    div-int/lit8 v2, v1, 0x2

    mul-int/2addr v0, v2

    add-int/2addr p1, v0

    div-int/2addr p1, v1

    int-to-float p1, p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/widget/Slider;->mSmoothnessFactor:I

    mul-int/2addr p1, p0

    return p1
.end method

.method private initView()V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/widget/Slider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lcom/samsung/android/app/galaxyraw/databinding/WidgetSliderBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/samsung/android/app/galaxyraw/databinding/WidgetSliderBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/widget/Slider;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/WidgetSliderBinding;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/widget/Slider;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f08098a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/widget/Slider;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/widget/Slider;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f08098b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/widget/Slider;->mBackground:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method private updateSteps()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/widget/Slider;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/WidgetSliderBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/WidgetSliderBinding;->slider:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getMeasuredWidth()I

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/widget/Slider;->mNumberOfSteps:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/widget/Slider;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/WidgetSliderBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/WidgetSliderBinding;->slider:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/app/galaxyraw/widget/Slider;->mNumberOfSteps:I

    div-int/2addr v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/widget/Slider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00b7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    :goto_1
    iput v0, p0, Lcom/samsung/android/app/galaxyraw/widget/Slider;->mSmoothnessFactor:I

    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/widget/Slider;->mIsCenterBased:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/widget/Slider;->mNumberOfSteps:I

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/widget/Slider;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/WidgetSliderBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/WidgetSliderBinding;->slider:Landroid/widget/SeekBar;

    iget v2, p0, Lcom/samsung/android/app/galaxyraw/widget/Slider;->mSmoothnessFactor:I

    mul-int/2addr v2, v0

    neg-int v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setMin(I)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/widget/Slider;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/WidgetSliderBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/WidgetSliderBinding;->slider:Landroid/widget/SeekBar;

    iget v2, p0, Lcom/samsung/android/app/galaxyraw/widget/Slider;->mSmoothnessFactor:I

    mul-int/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setMax(I)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/widget/Slider;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/WidgetSliderBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/WidgetSliderBinding;->slider:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMin(I)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/widget/Slider;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/WidgetSliderBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/WidgetSliderBinding;->slider:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/samsung/android/app/galaxyraw/widget/Slider;->mNumberOfSteps:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/samsung/android/app/galaxyraw/widget/Slider;->mSmoothnessFactor:I

    mul-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    :goto_2
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/widget/Slider;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/WidgetSliderBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/WidgetSliderBinding;->slider:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/samsung/android/app/galaxyraw/widget/Slider;->mProgress:I

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/widget/Slider;->mSmoothnessFactor:I

    mul-int/2addr v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    return-void
.end method


# virtual methods
.method public disableThumbRipple()V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/widget/Slider;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/WidgetSliderBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/WidgetSliderBinding;->slider:Landroid/widget/SeekBar;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/SeekBar;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public getProgress()I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/widget/Slider;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/WidgetSliderBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/WidgetSliderBinding;->slider:Landroid/widget/SeekBar;

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getProgress()I

    move-result p0

    return p0
.end method

.method public hide()V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/widget/Slider;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/widget/Slider;->getResources()Landroid/content/res/Resources;

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

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/widget/Slider;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b003e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/widget/-$$Lambda$Slider$1a7JNiBpdXT8FzXFknEutu36NQI;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/widget/-$$Lambda$Slider$1a7JNiBpdXT8FzXFknEutu36NQI;-><init>(Lcom/samsung/android/app/galaxyraw/widget/Slider;)V

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

    iput p4, p0, Lcom/samsung/android/app/galaxyraw/widget/Slider;->mProgress:I

    iput p2, p0, Lcom/samsung/android/app/galaxyraw/widget/Slider;->mNumberOfSteps:I

    iput-boolean p3, p0, Lcom/samsung/android/app/galaxyraw/widget/Slider;->mIsCenterBased:Z

    if-eqz p5, :cond_0

    const/high16 p2, 0x43870000    # 270.0f

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/galaxyraw/widget/Slider;->setRotation(F)V

    :cond_0
    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/widget/Slider;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/WidgetSliderBinding;

    iget-object p2, p2, Lcom/samsung/android/app/galaxyraw/databinding/WidgetSliderBinding;->sliderTitle:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(I)V

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/widget/Slider;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/WidgetSliderBinding;

    iget-object p2, p2, Lcom/samsung/android/app/galaxyraw/databinding/WidgetSliderBinding;->sliderLevel:Landroid/widget/TextView;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/widget/Slider;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/WidgetSliderBinding;

    iget-object p2, p2, Lcom/samsung/android/app/galaxyraw/databinding/WidgetSliderBinding;->slider:Landroid/widget/SeekBar;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/widget/Slider;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/SeekBar;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/widget/Slider;->mIsCenterBased:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/widget/Slider;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/WidgetSliderBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/WidgetSliderBinding;->slider:Landroid/widget/SeekBar;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/widget/Slider;->getContext()Landroid/content/Context;

    move-result-object p2

    const p3, 0x7f080989

    invoke-virtual {p2, p3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/widget/Slider;->setWillNotDraw(Z)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/widget/Slider;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/WidgetSliderBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/WidgetSliderBinding;->slider:Landroid/widget/SeekBar;

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/widget/Slider;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/widget/Slider;->setWillNotDraw(Z)V

    :goto_0
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/widget/Slider;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/WidgetSliderBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/WidgetSliderBinding;->slider:Landroid/widget/SeekBar;

    new-instance p2, Lcom/samsung/android/app/galaxyraw/widget/Slider$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/galaxyraw/widget/Slider$1;-><init>(Lcom/samsung/android/app/galaxyraw/widget/Slider;)V

    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/widget/Slider;->updateSteps()V

    return-void
.end method

.method public synthetic lambda$hide$0$Slider()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/widget/Slider;->setTranslationY(F)V

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/widget/Slider;->setVisibility(I)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/widget/Slider;->mIsCenterBased:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/widget/Slider;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/WidgetSliderBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/WidgetSliderBinding;->slider:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getLeft()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/widget/Slider;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/WidgetSliderBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/WidgetSliderBinding;->slider:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/widget/Slider;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/WidgetSliderBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/WidgetSliderBinding;->slider:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/widget/Slider;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/WidgetSliderBinding;

    iget-object v2, v2, Lcom/samsung/android/app/galaxyraw/databinding/WidgetSliderBinding;->slider:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/widget/Slider;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/WidgetSliderBinding;

    iget-object v3, v3, Lcom/samsung/android/app/galaxyraw/databinding/WidgetSliderBinding;->slider:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/widget/Slider;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/WidgetSliderBinding;

    iget-object v3, v3, Lcom/samsung/android/app/galaxyraw/databinding/WidgetSliderBinding;->slider:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/samsung/android/app/galaxyraw/widget/Slider;->mNumberOfSteps:I

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcom/samsung/android/app/galaxyraw/widget/Slider;->mSmoothnessFactor:I

    mul-int/2addr v2, v3

    div-int/2addr v1, v2

    add-int/2addr v1, v0

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/widget/Slider;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/WidgetSliderBinding;

    iget-object v2, v2, Lcom/samsung/android/app/galaxyraw/databinding/WidgetSliderBinding;->slider:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getTop()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/widget/Slider;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/WidgetSliderBinding;

    iget-object v3, v3, Lcom/samsung/android/app/galaxyraw/databinding/WidgetSliderBinding;->slider:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getPaddingTop()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/widget/Slider;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/WidgetSliderBinding;

    iget-object v3, v3, Lcom/samsung/android/app/galaxyraw/databinding/WidgetSliderBinding;->slider:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/widget/Slider;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/WidgetSliderBinding;

    iget-object v4, v4, Lcom/samsung/android/app/galaxyraw/databinding/WidgetSliderBinding;->slider:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/widget/Slider;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/WidgetSliderBinding;

    iget-object v4, v4, Lcom/samsung/android/app/galaxyraw/databinding/WidgetSliderBinding;->slider:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/widget/Slider;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/WidgetSliderBinding;

    iget-object v4, v4, Lcom/samsung/android/app/galaxyraw/databinding/WidgetSliderBinding;->slider:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getMaxHeight()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/widget/Slider;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/WidgetSliderBinding;

    iget-object v3, v3, Lcom/samsung/android/app/galaxyraw/databinding/WidgetSliderBinding;->slider:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getMaxHeight()I

    move-result v3

    add-int/2addr v3, v2

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/widget/Slider;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {v4, v5, v2, v0, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/widget/Slider;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onDraw(Landroid/graphics/Canvas;)V

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

    iget p1, p0, Lcom/samsung/android/app/galaxyraw/widget/Slider;->mNumberOfSteps:I

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/samsung/android/app/galaxyraw/widget/Slider;->mSmoothnessFactor:I

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/widget/Slider;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/WidgetSliderBinding;

    iget-object p2, p2, Lcom/samsung/android/app/galaxyraw/databinding/WidgetSliderBinding;->slider:Landroid/widget/SeekBar;

    invoke-virtual {p2}, Landroid/widget/SeekBar;->getMeasuredWidth()I

    move-result p2

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/widget/Slider;->mNumberOfSteps:I

    div-int/2addr p2, v0

    if-ge p1, p2, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/widget/Slider;->updateSteps()V

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/widget/Slider;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/WidgetSliderBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/WidgetSliderBinding;->sliderTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    const/16 p2, 0x8

    if-ne p1, p2, :cond_2

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/widget/Slider;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/WidgetSliderBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/WidgetSliderBinding;->sliderLevel:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-ne p1, p2, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/widget/Slider;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07045a

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/widget/Slider;->getRotation()F

    move-result p2

    const/4 v0, 0x0

    cmpl-float p2, p2, v0

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/widget/Slider;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07045b

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/widget/Slider;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/WidgetSliderBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/WidgetSliderBinding;->slider:Landroid/widget/SeekBar;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, p1, p2}, Landroid/widget/SeekBar;->setPadding(IIII)V

    :cond_2
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

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/widget/Slider;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/WidgetSliderBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/WidgetSliderBinding;->sliderLevel:Landroid/widget/TextView;

    int-to-float p1, p1

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

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/widget/Slider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/widget/Slider;->mBackground:Landroid/graphics/drawable/Drawable;

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/widget/Slider;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/WidgetSliderBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/WidgetSliderBinding;->slider:Landroid/widget/SeekBar;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/widget/Slider;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setCustomThumb(II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "resId",
            "alpha"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/widget/Slider;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/WidgetSliderBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/WidgetSliderBinding;->slider:Landroid/widget/SeekBar;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/widget/Slider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/widget/Slider;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/WidgetSliderBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/WidgetSliderBinding;->slider:Landroid/widget/SeekBar;

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

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

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/widget/Slider;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/WidgetSliderBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/WidgetSliderBinding;->sliderLevel:Landroid/widget/TextView;

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

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/widget/Slider;->mProgress:I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/widget/Slider;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/WidgetSliderBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/WidgetSliderBinding;->slider:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/samsung/android/app/galaxyraw/widget/Slider;->mSmoothnessFactor:I

    mul-int/2addr p1, v1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/widget/Slider;->getSmoothProgress(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setProgress(I)V

    return-void
.end method

.method public setProgressChangeListener(Lcom/samsung/android/app/galaxyraw/widget/Slider$ProgressChangeListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "progressChangeListener"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/widget/Slider;->mProgressChangeListener:Lcom/samsung/android/app/galaxyraw/widget/Slider$ProgressChangeListener;

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

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/widget/Slider;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/WidgetSliderBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/WidgetSliderBinding;->sliderTitle:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public setTrackingTouchListener(Lcom/samsung/android/app/galaxyraw/widget/Slider$TrackingTouchListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "trackingTouchListener"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/widget/Slider;->mTrackingTouchListener:Lcom/samsung/android/app/galaxyraw/widget/Slider$TrackingTouchListener;

    return-void
.end method

.method public show()V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/widget/Slider;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700c0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    neg-float v0, v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/widget/Slider;->setTranslationY(F)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/widget/Slider;->setAlpha(F)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/galaxyraw/widget/Slider;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/widget/Slider;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/widget/Slider;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f0b001f

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    return-void
.end method
