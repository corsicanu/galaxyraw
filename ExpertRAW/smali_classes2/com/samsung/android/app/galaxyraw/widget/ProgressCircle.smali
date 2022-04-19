.class public Lcom/samsung/android/app/galaxyraw/widget/ProgressCircle;
.super Landroid/view/ViewGroup;
.source "ProgressCircle.java"


# instance fields
.field private final mCircleDotDefaultImage:Landroid/graphics/drawable/Drawable;

.field private mCircleDotList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mCircleSelectedImage:Landroid/graphics/drawable/Drawable;

.field private mProgressCircleDotSize:I

.field private mProgressStep:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/widget/ProgressCircle;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f080986

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ProgressCircle;->mCircleDotDefaultImage:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1}, Lcom/samsung/android/app/galaxyraw/widget/ProgressCircle;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
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

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/widget/ProgressCircle;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f080986

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ProgressCircle;->mCircleDotDefaultImage:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p2}, Lcom/samsung/android/app/galaxyraw/widget/ProgressCircle;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "attrs"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/widget/ProgressCircle;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/R$styleable;->ProgressCircle:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/widget/ProgressCircle;->mProgressStep:I

    const/4 v0, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/widget/ProgressCircle;->mProgressCircleDotSize:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/widget/ProgressCircle;->mCircleSelectedImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ProgressCircle;->mCircleDotList:Ljava/util/List;

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/widget/ProgressCircle;->initProgressCircle()V

    return-void
.end method

.method private initProgressCircle()V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/samsung/android/app/galaxyraw/widget/ProgressCircle;->mProgressStep:I

    if-ge v0, v1, :cond_0

    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/widget/ProgressCircle;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    iget v3, p0, Lcom/samsung/android/app/galaxyraw/widget/ProgressCircle;->mProgressCircleDotSize:I

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/widget/ProgressCircle;->mCircleDotDefaultImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setClipToOutline(Z)V

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/widget/ProgressCircle;->mCircleDotList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/galaxyraw/widget/ProgressCircle;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private rotatePoint(FFIFF)Landroid/graphics/PointF;
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
            "x",
            "y",
            "degree",
            "pivotX",
            "pivotY"
        }
    .end annotation

    new-instance p0, Landroid/graphics/Matrix;

    invoke-direct {p0}, Landroid/graphics/Matrix;-><init>()V

    int-to-float p3, p3

    invoke-virtual {p0, p3, p4, p5}, Landroid/graphics/Matrix;->setRotate(FFF)V

    const/4 p3, 0x2

    new-array p3, p3, [F

    const/4 p4, 0x0

    aput p1, p3, p4

    const/4 p1, 0x1

    aput p2, p3, p1

    invoke-virtual {p0, p3}, Landroid/graphics/Matrix;->mapPoints([F)V

    new-instance p0, Landroid/graphics/PointF;

    aget p2, p3, p4

    aget p1, p3, p1

    invoke-direct {p0, p2, p1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p0
.end method


# virtual methods
.method public hide()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/widget/ProgressCircle;->mCircleDotList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/16 v2, 0x8

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/widget/ProgressCircle;->mCircleDotDefaultImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v2}, Lcom/samsung/android/app/galaxyraw/widget/ProgressCircle;->setVisibility(I)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 7
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
            "l",
            "t",
            "r",
            "b"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/widget/ProgressCircle;->getMeasuredWidth()I

    move-result p2

    int-to-float p2, p2

    const/high16 p3, 0x40000000    # 2.0f

    div-float/2addr p2, p3

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/widget/ProgressCircle;->getMeasuredWidth()I

    move-result p4

    int-to-float p4, p4

    div-float/2addr p4, p3

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/widget/ProgressCircle;->getMeasuredWidth()I

    move-result p5

    int-to-float p5, p5

    div-float/2addr p5, p3

    sub-float p5, p4, p5

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/widget/ProgressCircle;->mProgressCircleDotSize:I

    int-to-float v0, v0

    div-float/2addr v0, p3

    add-float/2addr p5, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    :goto_0
    iget v0, p0, Lcom/samsung/android/app/galaxyraw/widget/ProgressCircle;->mProgressStep:I

    if-ge p1, v0, :cond_0

    mul-int/lit16 v1, p1, 0x168

    div-int v3, v1, v0

    move-object v0, p0

    move v1, p2

    move v2, p5

    move v4, p2

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/galaxyraw/widget/ProgressCircle;->rotatePoint(FFIFF)Landroid/graphics/PointF;

    move-result-object v0

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget v2, p0, Lcom/samsung/android/app/galaxyraw/widget/ProgressCircle;->mProgressCircleDotSize:I

    int-to-float v2, v2

    div-float/2addr v2, p3

    sub-float/2addr v1, v2

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget v2, p0, Lcom/samsung/android/app/galaxyraw/widget/ProgressCircle;->mProgressCircleDotSize:I

    int-to-float v2, v2

    div-float/2addr v2, p3

    sub-float/2addr v0, v2

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/widget/ProgressCircle;->mCircleDotList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    float-to-int v3, v1

    float-to-int v4, v0

    iget v5, p0, Lcom/samsung/android/app/galaxyraw/widget/ProgressCircle;->mProgressCircleDotSize:I

    int-to-float v6, v5

    add-float/2addr v1, v6

    float-to-int v1, v1

    int-to-float v5, v5

    add-float/2addr v0, v5

    float-to-int v0, v0

    invoke-virtual {v2, v3, v4, v1, v0}, Landroid/widget/ImageView;->layout(IIII)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public show()V
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/widget/ProgressCircle;->setAlpha(F)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/widget/ProgressCircle;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/widget/ProgressCircle;->mCircleDotList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/widget/ProgressCircle;->mCircleDotDefaultImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/widget/ProgressCircle;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v0, 0x12c

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    new-instance v0, Lcom/samsung/android/app/galaxyraw/util/interpolator/SineInOut33;

    invoke-direct {v0}, Lcom/samsung/android/app/galaxyraw/util/interpolator/SineInOut33;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public updateProgress(I)V
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

    :goto_0
    iget v1, p0, Lcom/samsung/android/app/galaxyraw/widget/ProgressCircle;->mProgressStep:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/widget/ProgressCircle;->mCircleDotList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-gt v0, p1, :cond_0

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/widget/ProgressCircle;->mCircleSelectedImage:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/widget/ProgressCircle;->mCircleDotDefaultImage:Landroid/graphics/drawable/Drawable;

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
