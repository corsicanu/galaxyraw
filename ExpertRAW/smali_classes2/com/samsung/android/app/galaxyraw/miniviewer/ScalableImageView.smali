.class public Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;
.super Landroid/widget/ImageView;
.source "ScalableImageView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView$ScaleListener;,
        Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView$GestureListener;,
        Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView$ImageViewEventListener;
    }
.end annotation


# static fields
.field private static final DRAG:I = 0x1

.field private static final MIN_SCALE:F = 1.0f

.field private static final NONE:I = 0x0

.field private static final ZOOM:I = 0x2


# instance fields
.field private isZoomEnabled:Z

.field private mBitmapHeight:I

.field private mBitmapWidth:I

.field private mCurrentMode:I

.field private mGestureDetector:Landroidx/core/view/GestureDetectorCompat;

.field private mImageMatrix:Landroid/graphics/Matrix;

.field private mImageViewEventListener:Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView$ImageViewEventListener;

.field private mIsMinReached:Z

.field private mIsSingleClicked:Z

.field private mIsZoomingIn:Z

.field private mIsZoomingOut:Z

.field private mLastPoint:Landroid/graphics/PointF;

.field private mMax_Scale:F

.field private mOrientation:I

.field private mOrigHeight:F

.field private mOrigWidth:F

.field private mPrevScale:F

.field private mSaveScale:F

.field private mScaleDetector:Landroid/view/ScaleGestureDetector;

.field private mStartPoint:Landroid/graphics/PointF;


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

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->initialize()V

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

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->initialize()V

    return-void
.end method

.method static synthetic access$1000(Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->mIsZoomingOut:Z

    return p0
.end method

.method static synthetic access$1002(Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->mIsZoomingOut:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->fixTranslate()V

    return-void
.end method

.method static synthetic access$1200(Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->isZoomEnabled:Z

    return p0
.end method

.method static synthetic access$1302(Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->mCurrentMode:I

    return p1
.end method

.method static synthetic access$200(Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->mIsSingleClicked:Z

    return p0
.end method

.method static synthetic access$202(Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->mIsSingleClicked:Z

    return p1
.end method

.method static synthetic access$300(Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;)F
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->mSaveScale:F

    return p0
.end method

.method static synthetic access$302(Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;F)F
    .locals 0

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->mSaveScale:F

    return p1
.end method

.method static synthetic access$332(Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;F)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->mSaveScale:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->mSaveScale:F

    return v0
.end method

.method static synthetic access$400(Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;)Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView$ImageViewEventListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->mImageViewEventListener:Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView$ImageViewEventListener;

    return-object p0
.end method

.method static synthetic access$500(Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;)F
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->mMax_Scale:F

    return p0
.end method

.method static synthetic access$600(Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;)Landroid/graphics/Matrix;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->mImageMatrix:Landroid/graphics/Matrix;

    return-object p0
.end method

.method static synthetic access$700(Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;)F
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->mPrevScale:F

    return p0
.end method

.method static synthetic access$702(Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;F)F
    .locals 0

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->mPrevScale:F

    return p1
.end method

.method static synthetic access$800(Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->mIsMinReached:Z

    return p0
.end method

.method static synthetic access$802(Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->mIsMinReached:Z

    return p1
.end method

.method static synthetic access$900(Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->mIsZoomingIn:Z

    return p0
.end method

.method static synthetic access$902(Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->mIsZoomingIn:Z

    return p1
.end method

.method private fixTranslate()V
    .locals 5

    const/16 v0, 0x9

    new-array v0, v0, [F

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->mImageMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    const/4 v1, 0x2

    aget v1, v0, v1

    const/4 v2, 0x5

    aget v0, v0, v2

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->mOrigWidth:F

    iget v4, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->mSaveScale:F

    mul-float/2addr v3, v4

    invoke-direct {p0, v1, v2, v3}, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->getFixTranslation(FFF)F

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->mOrigHeight:F

    iget v4, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->mSaveScale:F

    mul-float/2addr v3, v4

    invoke-direct {p0, v0, v2, v3}, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->getFixTranslation(FFF)F

    move-result v0

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-nez v3, :cond_0

    cmpl-float v2, v0, v2

    if-eqz v2, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->mImageMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :cond_1
    return-void
.end method

.method private getFixDragTranslation(FFF)F
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "delta",
            "viewSize",
            "contentSize"
        }
    .end annotation

    cmpg-float p0, p3, p2

    if-gtz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return p1
.end method

.method private getFixTranslation(FFF)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "trans",
            "viewSize",
            "contentSize"
        }
    .end annotation

    cmpg-float p0, p3, p2

    const/4 v0, 0x0

    if-gtz p0, :cond_0

    sub-float/2addr p2, p3

    move p0, p2

    move p2, v0

    goto :goto_0

    :cond_0
    sub-float/2addr p2, p3

    move p0, v0

    :goto_0
    cmpg-float p3, p1, p2

    if-gez p3, :cond_1

    neg-float p0, p1

    add-float/2addr p0, p2

    return p0

    :cond_1
    cmpl-float p2, p1, p0

    if-lez p2, :cond_2

    neg-float p1, p1

    add-float/2addr p1, p0

    return p1

    :cond_2
    return v0
.end method

.method private initialize()V
    .locals 4

    const/4 v0, 0x1

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setClickable(Z)V

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->mLastPoint:Landroid/graphics/PointF;

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->mStartPoint:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->mImageMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->mCurrentMode:I

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->mSaveScale:F

    iput v1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->mPrevScale:F

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->isZoomEnabled:Z

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->mImageMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, p0}, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v0, Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView$ScaleListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView$ScaleListener;-><init>(Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView$1;)V

    invoke-direct {v0, v1, v2}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    new-instance v0, Landroidx/core/view/GestureDetectorCompat;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView$GestureListener;

    invoke-direct {v2, p0, v3}, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView$GestureListener;-><init>(Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView$1;)V

    invoke-direct {v0, v1, v2}, Landroidx/core/view/GestureDetectorCompat;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->mGestureDetector:Landroidx/core/view/GestureDetectorCompat;

    return-void
.end method


# virtual methods
.method public disableZoom()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->isZoomEnabled:Z

    return-void
.end method

.method public fitToScreen()V
    .locals 7

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->mSaveScale:F

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    float-to-int v3, v1

    float-to-int v4, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget v4, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->mOrientation:I

    if-nez v4, :cond_0

    int-to-float v3, v3

    iget v4, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->mBitmapWidth:I

    goto :goto_0

    :cond_0
    int-to-float v3, v3

    iget v4, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->mBitmapHeight:I

    :goto_0
    int-to-float v4, v4

    div-float/2addr v3, v4

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->mImageMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v3, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    iget v4, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->mBitmapHeight:I

    int-to-float v4, v4

    mul-float/2addr v4, v3

    sub-float v4, v2, v4

    iget v5, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->mBitmapWidth:I

    int-to-float v5, v5

    mul-float/2addr v3, v5

    sub-float v3, v1, v3

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    div-float/2addr v3, v5

    iget-object v6, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->mImageMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v6, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    mul-float/2addr v3, v5

    sub-float/2addr v1, v3

    iput v1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->mOrigWidth:F

    mul-float/2addr v4, v5

    sub-float/2addr v2, v4

    iput v2, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->mOrigHeight:F

    iget v3, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->mBitmapWidth:I

    int-to-float v3, v3

    div-float/2addr v3, v1

    iget v1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->mBitmapHeight:I

    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-static {v3, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->mMax_Scale:F

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->mImageMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->mPrevScale:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->mIsZoomingIn:Z

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->mIsZoomingOut:Z

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

    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    int-to-float p1, p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    int-to-float p2, p2

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_2

    cmpl-float p1, p2, v0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p2

    iput p2, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->mBitmapWidth:I

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->mBitmapHeight:I

    iget p1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->mSaveScale:F

    const/high16 p2, 0x3f800000    # 1.0f

    cmpl-float p1, p1, p2

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->fitToScreen()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "v",
            "event"
        }
    .end annotation

    sget-object p1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->mSaveScale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-interface {p1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {p1, p2}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->mGestureDetector:Landroidx/core/view/GestureDetectorCompat;

    invoke-virtual {p1, p2}, Landroidx/core/view/GestureDetectorCompat;->onTouchEvent(Landroid/view/MotionEvent;)Z

    new-instance p1, Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {p1, v0, v3}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    if-eqz p2, :cond_3

    if-eq p2, v2, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    const/4 p1, 0x6

    if-eq p2, p1, :cond_2

    goto :goto_1

    :cond_1
    iget p2, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->mCurrentMode:I

    if-ne p2, v2, :cond_4

    iget p2, p1, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->mLastPoint:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr p2, v0

    iget v0, p1, Landroid/graphics/PointF;->y:F

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->mLastPoint:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v3, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->mOrigWidth:F

    iget v4, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->mSaveScale:F

    mul-float/2addr v3, v4

    invoke-direct {p0, p2, v1, v3}, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->getFixDragTranslation(FFF)F

    move-result p2

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v3, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->mOrigHeight:F

    iget v4, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->mSaveScale:F

    mul-float/2addr v3, v4

    invoke-direct {p0, v0, v1, v3}, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->getFixDragTranslation(FFF)F

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->mImageMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, p2, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->fixTranslate()V

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->mLastPoint:Landroid/graphics/PointF;

    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p2, v0, p1}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_1

    :cond_2
    iput v1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->mCurrentMode:I

    goto :goto_1

    :cond_3
    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->mLastPoint:Landroid/graphics/PointF;

    invoke-virtual {p2, p1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->mStartPoint:Landroid/graphics/PointF;

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->mLastPoint:Landroid/graphics/PointF;

    invoke-virtual {p1, p2}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    iput v2, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->mCurrentMode:I

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->mImageViewEventListener:Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView$ImageViewEventListener;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView$ImageViewEventListener;->onImageTouch()V

    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->mImageMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->invalidate()V

    return v2
.end method

.method public refreshImageMatrix()V
    .locals 1

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->mImageMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public setImageViewEventListener(Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView$ImageViewEventListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->mImageViewEventListener:Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView$ImageViewEventListener;

    return-void
.end method

.method public setOrientation(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "orientation"
        }
    .end annotation

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->mOrientation:I

    return-void
.end method
