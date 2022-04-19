.class public Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/Histogram;
.super Landroid/widget/LinearLayout;
.source "Histogram.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Histogram"


# instance fields
.field private mHistogramBarWidth:F

.field private mHistogramCoordinates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private mHistogramGroupSideMargin:F

.field private mHistogramStartOffset:F

.field private mHistogramVerticalStartOffset:F

.field private mPaint:Landroid/graphics/Paint;


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

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/Histogram;->init(Landroid/util/AttributeSet;)V

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

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p2}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/Histogram;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private drawHistogramOnView([II)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "values",
            "maxValue"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/Histogram;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/Histogram;->mHistogramGroupSideMargin:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/Histogram;->mHistogramCoordinates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x200

    if-ge v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/Histogram;->getMeasuredHeight()I

    move-result v2

    aget v3, p1, v1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/Histogram;->getMeasuredHeight()I

    move-result v4

    mul-int/2addr v3, v4

    div-int/2addr v3, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/Histogram;->mHistogramVerticalStartOffset:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x44000000    # 512.0f

    div-float v3, v0, v3

    int-to-float v4, v1

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/Histogram;->mHistogramStartOffset:F

    add-float/2addr v3, v4

    const/4 v4, 0x0

    cmpl-float v4, v2, v4

    if-lez v4, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/Histogram;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v4, v2

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/Histogram;->mHistogramCoordinates:Ljava/util/ArrayList;

    new-instance v5, Landroid/graphics/PointF;

    invoke-direct {v5, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/Histogram;->invalidate()V

    return-void
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "attrs"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/Histogram;->mHistogramCoordinates:Ljava/util/ArrayList;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/Histogram;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/Histogram;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060069

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/Histogram;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/R$styleable;->Histogram:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/Histogram;->mHistogramBarWidth:F

    const/4 v0, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/Histogram;->mHistogramGroupSideMargin:F

    const/4 v0, 0x2

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/Histogram;->mHistogramStartOffset:F

    const/4 v0, 0x3

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/Histogram;->mHistogramVerticalStartOffset:F

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    return-void
.end method


# virtual methods
.method public hide()V
    .locals 2

    const-string v0, "Histogram"

    const-string v1, "hideHistogram"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/Histogram;->setVisibility(I)V

    return-void
.end method

.method public synthetic lambda$updateHistogram$0$Histogram([II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/Histogram;->drawHistogramOnView([II)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/Histogram;->getMeasuredHeight()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/Histogram;->mHistogramCoordinates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/Histogram;->mHistogramCoordinates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    iget v4, v2, Landroid/graphics/PointF;->x:F

    int-to-float v5, v0

    iget v3, v2, Landroid/graphics/PointF;->x:F

    iget v6, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/Histogram;->mHistogramBarWidth:F

    add-float/2addr v6, v3

    iget v7, v2, Landroid/graphics/PointF;->y:F

    iget-object v8, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/Histogram;->mPaint:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public show()V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/Histogram;->setVisibility(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/Histogram;->setAlpha(F)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/Histogram;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/Histogram;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f0b001f

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public updateHistogram([II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "values",
            "maxValue"
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/-$$Lambda$Histogram$D164o1DZIckTP7qPiIgD7ttkGOw;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/-$$Lambda$Histogram$D164o1DZIckTP7qPiIgD7ttkGOw;-><init>(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/Histogram;[II)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/Histogram;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
