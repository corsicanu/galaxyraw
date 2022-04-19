.class public Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerProgressWheel;
.super Landroid/view/View;
.source "TimerProgressWheel.java"


# instance fields
.field private mColor:I

.field private mForegroundPaint:Landroid/graphics/Paint;

.field private mProgress:F

.field private mRectF:Landroid/graphics/RectF;

.field private final mStartAngle:I

.field private mStrokeWidth:F


# direct methods
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

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v0, -0x5a

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerProgressWheel;->mStartAngle:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerProgressWheel;->mProgress:F

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerProgressWheel;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
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

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerProgressWheel;->mRectF:Landroid/graphics/RectF;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/R$styleable;->ShutterProgressWheel:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x3

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerProgressWheel;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070291

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerProgressWheel;->mStrokeWidth:F

    const/4 p2, 0x4

    const v0, 0x106000b

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerProgressWheel;->mColor:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerProgressWheel;->mForegroundPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerProgressWheel;->mForegroundPaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerProgressWheel;->mStrokeWidth:F

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerProgressWheel;->mForegroundPaint:Landroid/graphics/Paint;

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerProgressWheel;->mColor:I

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setColor(I)V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p0
.end method


# virtual methods
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

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerProgressWheel;->mRectF:Landroid/graphics/RectF;

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerProgressWheel;->mProgress:F

    const/high16 v2, 0x43b40000    # 360.0f

    mul-float v3, v0, v2

    const/high16 v4, -0x3d4c0000    # -90.0f

    add-float/2addr v3, v4

    rem-float/2addr v3, v2

    mul-float/2addr v0, v2

    sub-float v4, v2, v0

    iget-object v5, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerProgressWheel;->mForegroundPaint:Landroid/graphics/Paint;

    const/4 p0, 0x0

    move-object v0, p1

    move v2, v3

    move v3, v4

    move v4, p0

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

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerProgressWheel;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {v0, p2}, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerProgressWheel;->getDefaultSize(II)I

    move-result p2

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerProgressWheel;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v0, p1}, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerProgressWheel;->getDefaultSize(II)I

    move-result p1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerProgressWheel;->mRectF:Landroid/graphics/RectF;

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerProgressWheel;->mStrokeWidth:F

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

.method public setProgress(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "progress"
        }
    .end annotation

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerProgressWheel;->mProgress:F

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerProgressWheel;->invalidate()V

    return-void
.end method
