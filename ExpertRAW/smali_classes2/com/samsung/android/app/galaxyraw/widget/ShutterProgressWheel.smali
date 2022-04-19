.class public Lcom/samsung/android/app/galaxyraw/widget/ShutterProgressWheel;
.super Landroid/view/View;
.source "ShutterProgressWheel.java"


# instance fields
.field private mAnimationDuration:I

.field private mColor:I

.field private mForegroundPaint:Landroid/graphics/Paint;

.field private mMax:I

.field private mMin:I

.field private mProgress:F

.field private mProgressAnimator:Landroid/animation/ValueAnimator;

.field private mProgressCurrentValue:F

.field private mRectF:Landroid/graphics/RectF;

.field private mShutterProgressWheelAnimationEndListener:Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$ShutterProgressWheelAnimationEndListener;

.field private mStartAngle:I

.field private mStrokeWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
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

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/widget/ShutterProgressWheel;->mMin:I

    const/16 v1, 0x168

    iput v1, p0, Lcom/samsung/android/app/galaxyraw/widget/ShutterProgressWheel;->mMax:I

    const/16 v1, -0x5a

    iput v1, p0, Lcom/samsung/android/app/galaxyraw/widget/ShutterProgressWheel;->mStartAngle:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/app/galaxyraw/widget/ShutterProgressWheel;->mProgress:F

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/samsung/android/app/galaxyraw/widget/ShutterProgressWheel;->mProgressAnimator:Landroid/animation/ValueAnimator;

    iput v1, p0, Lcom/samsung/android/app/galaxyraw/widget/ShutterProgressWheel;->mProgressCurrentValue:F

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/widget/ShutterProgressWheel;->mAnimationDuration:I

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/widget/ShutterProgressWheel;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$002(Lcom/samsung/android/app/galaxyraw/widget/ShutterProgressWheel;F)F
    .locals 0

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ShutterProgressWheel;->mProgressCurrentValue:F

    return p1
.end method

.method static synthetic access$100(Lcom/samsung/android/app/galaxyraw/widget/ShutterProgressWheel;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/widget/ShutterProgressWheel;->setShutterProgress(F)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/app/galaxyraw/widget/ShutterProgressWheel;)Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$ShutterProgressWheelAnimationEndListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/widget/ShutterProgressWheel;->mShutterProgressWheelAnimationEndListener:Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$ShutterProgressWheelAnimationEndListener;

    return-object p0
.end method

.method private setShutterProgress(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "progress"
        }
    .end annotation

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ShutterProgressWheel;->mProgress:F

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/widget/ShutterProgressWheel;->invalidate()V

    return-void
.end method

.method private setShutterProgressWithAnimation(F)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "progress"
        }
    .end annotation

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-nez v1, :cond_0

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/widget/ShutterProgressWheel;->mProgressCurrentValue:F

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/widget/ShutterProgressWheel;->setShutterProgress(F)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/widget/ShutterProgressWheel;->isShutterProgressAnimationRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/widget/ShutterProgressWheel;->cancelShutterProgressAnimation()V

    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    iget v2, p0, Lcom/samsung/android/app/galaxyraw/widget/ShutterProgressWheel;->mProgressCurrentValue:F

    aput v2, v0, v1

    const/4 v1, 0x1

    aput p1, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/widget/ShutterProgressWheel;->mProgressAnimator:Landroid/animation/ValueAnimator;

    iget v1, p0, Lcom/samsung/android/app/galaxyraw/widget/ShutterProgressWheel;->mAnimationDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/widget/ShutterProgressWheel;->mProgressAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/widget/-$$Lambda$ShutterProgressWheel$ebbPxdh2_9W7egEzSPRu87BrsBk;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/widget/-$$Lambda$ShutterProgressWheel$ebbPxdh2_9W7egEzSPRu87BrsBk;-><init>(Lcom/samsung/android/app/galaxyraw/widget/ShutterProgressWheel;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/widget/ShutterProgressWheel;->mProgressAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/widget/ShutterProgressWheel$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/galaxyraw/widget/ShutterProgressWheel$1;-><init>(Lcom/samsung/android/app/galaxyraw/widget/ShutterProgressWheel;F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/widget/ShutterProgressWheel;->mProgressAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method


# virtual methods
.method public cancelShutterProgressAnimation()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/widget/ShutterProgressWheel;->mProgressAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    return-void
.end method

.method public getProgress()F
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/widget/ShutterProgressWheel;->mProgress:F

    return p0
.end method

.method init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
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

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/widget/ShutterProgressWheel;->mRectF:Landroid/graphics/RectF;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/R$styleable;->ShutterProgressWheel:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x3

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/widget/ShutterProgressWheel;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070291

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/samsung/android/app/galaxyraw/widget/ShutterProgressWheel;->mStrokeWidth:F

    const/4 p2, 0x2

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/widget/ShutterProgressWheel;->mProgress:F

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/samsung/android/app/galaxyraw/widget/ShutterProgressWheel;->mProgress:F

    iget p2, p0, Lcom/samsung/android/app/galaxyraw/widget/ShutterProgressWheel;->mMin:I

    const/4 v0, 0x1

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/samsung/android/app/galaxyraw/widget/ShutterProgressWheel;->mMin:I

    const/4 p2, 0x0

    iget v1, p0, Lcom/samsung/android/app/galaxyraw/widget/ShutterProgressWheel;->mMax:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/samsung/android/app/galaxyraw/widget/ShutterProgressWheel;->mMax:I

    const/4 p2, 0x4

    const v1, 0x7f0600e4

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/samsung/android/app/galaxyraw/widget/ShutterProgressWheel;->mColor:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ShutterProgressWheel;->mForegroundPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ShutterProgressWheel;->mForegroundPaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/samsung/android/app/galaxyraw/widget/ShutterProgressWheel;->mStrokeWidth:F

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ShutterProgressWheel;->mForegroundPaint:Landroid/graphics/Paint;

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/widget/ShutterProgressWheel;->mColor:I

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setColor(I)V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p0
.end method

.method public isShutterProgressAnimationRunning()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/widget/ShutterProgressWheel;->mProgressAnimator:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public synthetic lambda$setShutterProgressWithAnimation$0$ShutterProgressWheel(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ShutterProgressWheel;->mProgressAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/widget/ShutterProgressWheel;->setShutterProgress(F)V

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

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/widget/ShutterProgressWheel;->mRectF:Landroid/graphics/RectF;

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/widget/ShutterProgressWheel;->mStartAngle:I

    int-to-float v2, v0

    iget v3, p0, Lcom/samsung/android/app/galaxyraw/widget/ShutterProgressWheel;->mProgress:F

    iget-object v5, p0, Lcom/samsung/android/app/galaxyraw/widget/ShutterProgressWheel;->mForegroundPaint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 5
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

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/widget/ShutterProgressWheel;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {v0, p2}, Lcom/samsung/android/app/galaxyraw/widget/ShutterProgressWheel;->getDefaultSize(II)I

    move-result p2

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/widget/ShutterProgressWheel;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v0, p1}, Lcom/samsung/android/app/galaxyraw/widget/ShutterProgressWheel;->getDefaultSize(II)I

    move-result p1

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0, v0, v0}, Lcom/samsung/android/app/galaxyraw/widget/ShutterProgressWheel;->setMeasuredDimension(II)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/widget/ShutterProgressWheel;->mRectF:Landroid/graphics/RectF;

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/widget/ShutterProgressWheel;->mStrokeWidth:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float v2, p0, v1

    div-float v3, p0, v1

    int-to-float p1, p1

    div-float v4, p0, v1

    sub-float/2addr p1, v4

    int-to-float p2, p2

    div-float/2addr p0, v1

    sub-float/2addr p2, p0

    invoke-virtual {v0, v2, v3, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method public setAnimationDuration(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "duration"
        }
    .end annotation

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ShutterProgressWheel;->mAnimationDuration:I

    return-void
.end method

.method public setProgress(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "progress"
        }
    .end annotation

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/widget/ShutterProgressWheel;->mAnimationDuration:I

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/widget/ShutterProgressWheel;->setShutterProgressWithAnimation(F)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/widget/ShutterProgressWheel;->setShutterProgress(F)V

    :goto_0
    return-void
.end method

.method public setShutterProgressWheelAnimationEndListener(Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$ShutterProgressWheelAnimationEndListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ShutterProgressWheel;->mShutterProgressWheelAnimationEndListener:Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$ShutterProgressWheelAnimationEndListener;

    return-void
.end method
