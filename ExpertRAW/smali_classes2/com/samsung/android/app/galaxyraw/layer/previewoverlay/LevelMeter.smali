.class public Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/LevelMeter;
.super Landroid/widget/RelativeLayout;
.source "LevelMeter.java"


# static fields
.field private static final DISPLAY_ACCELERATION:F = 3.3f

.field private static final DISPLAY_ANGLE:F = 30.0f

.field private static final DISPLAY_AREA:F = 0.8f

.field private static final DISTANCE_THRESHOLD:F = 0.16f

.field private static final MOVEMENT_THRESHOLD:F = 0.05f

.field private static final SCALE_DEFAULT:F = 0.9f

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_SUCCESS:I = 0x2

.field private static final STATE_TRACKING:I = 0x1

.field private static final TAG:Ljava/lang/String; = "LevelMeter"


# instance fields
.field private final CIRCLE_SIZE:F

.field private mIsAnimationRunning:Z

.field private mIsFirstSensorInputUpdated:Z

.field private mIsLayoutUpdated:Z

.field private mPreAccelerationX:F

.field private mPreAccelerationY:F

.field private mState:I

.field private mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayLevelMeterBinding;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/LevelMeter;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0700bb

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/LevelMeter;->CIRCLE_SIZE:F

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/LevelMeter;->mPreAccelerationX:F

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/LevelMeter;->mPreAccelerationY:F

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/LevelMeter;->mState:I

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/LevelMeter;->mIsFirstSensorInputUpdated:Z

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/LevelMeter;->mIsLayoutUpdated:Z

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/LevelMeter;->mIsAnimationRunning:Z

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/LevelMeter;->init()V

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

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/LevelMeter;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0700bb

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/LevelMeter;->CIRCLE_SIZE:F

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/LevelMeter;->mPreAccelerationX:F

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/LevelMeter;->mPreAccelerationY:F

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/LevelMeter;->mState:I

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/LevelMeter;->mIsFirstSensorInputUpdated:Z

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/LevelMeter;->mIsLayoutUpdated:Z

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/LevelMeter;->mIsAnimationRunning:Z

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/LevelMeter;->init()V

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

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/LevelMeter;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0700bb

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/LevelMeter;->CIRCLE_SIZE:F

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/LevelMeter;->mPreAccelerationX:F

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/LevelMeter;->mPreAccelerationY:F

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/LevelMeter;->mState:I

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/LevelMeter;->mIsFirstSensorInputUpdated:Z

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/LevelMeter;->mIsLayoutUpdated:Z

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/LevelMeter;->mIsAnimationRunning:Z

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/LevelMeter;->init()V

    return-void
.end method

.method static synthetic access$002(Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/LevelMeter;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/LevelMeter;->mIsAnimationRunning:Z

    return p1
.end method

.method static synthetic access$100(Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/LevelMeter;)Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayLevelMeterBinding;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/LevelMeter;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayLevelMeterBinding;

    return-object p0
.end method

.method private calculatePosition(FFLandroid/graphics/Rect;)Landroid/graphics/PointF;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "accelerationX",
            "accelerationY",
            "previewLayoutRect"
        }
    .end annotation

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40400000    # 3.0f

    div-float/2addr v0, v1

    iget v2, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/LevelMeter;->CIRCLE_SIZE:F

    sub-float/2addr v0, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v0, v3

    mul-float/2addr v2, v3

    const v4, 0x40533333    # 3.3f

    div-float/2addr v2, v4

    mul-float/2addr v2, p1

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p3, v1

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/LevelMeter;->CIRCLE_SIZE:F

    sub-float/2addr p3, p0

    div-float/2addr p3, v3

    mul-float/2addr p0, v3

    div-float/2addr p0, v4

    mul-float/2addr p0, p2

    add-float/2addr p3, p0

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p0

    int-to-float p0, p0

    new-instance p2, Landroid/graphics/PointF;

    invoke-direct {p2, p1, p0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p2
.end method

.method private calculateRadius(FF)F
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "accelerationX",
            "accelerationY"
        }
    .end annotation

    mul-float/2addr p1, p1

    mul-float/2addr p2, p2

    add-float/2addr p1, p2

    float-to-double p0, p1

    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-float p0, p0

    const/high16 p1, 0x42c80000    # 100.0f

    mul-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, p1

    return p0
.end method

.method private changeState(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/LevelMeter;->mState:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/LevelMeter;->mState:I

    :cond_0
    return-void
.end method

.method private init()V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/LevelMeter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayLevelMeterBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayLevelMeterBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/LevelMeter;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayLevelMeterBinding;

    return-void
.end method

.method private isLevelMeterVisibleCondition(FF)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "accelerationX",
            "accelerationY"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/LevelMeter;->calculateRadius(FF)F

    move-result p0

    const p1, 0x40533333    # 3.3f

    cmpl-float p0, p1, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private startGuideItemShowAnimation()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/LevelMeter;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayLevelMeterBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayLevelMeterBinding;->levelMeterGuide:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/LevelMeter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b001b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/view/animation/SineInOut33;

    invoke-direct {v1}, Lcom/samsung/android/view/animation/SineInOut33;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/-$$Lambda$LevelMeter$IZIjMF94mRo_5_rzlEFu06G7-eU;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/-$$Lambda$LevelMeter$IZIjMF94mRo_5_rzlEFu06G7-eU;-><init>(Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/LevelMeter;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withStartAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/-$$Lambda$LevelMeter$7_aLmb3xPkAC0fPsXcchxIrT8_U;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/-$$Lambda$LevelMeter$7_aLmb3xPkAC0fPsXcchxIrT8_U;-><init>(Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/LevelMeter;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/LevelMeter;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayLevelMeterBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayLevelMeterBinding;->levelMeterGuide:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/LevelMeter;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayLevelMeterBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayLevelMeterBinding;->levelMeterTarget:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private startSuccessItemHideAnimation()V
    .locals 6

    const/4 v0, 0x2

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/LevelMeter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0019

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/samsung/android/view/animation/SineInOut33;

    invoke-direct {v2}, Lcom/samsung/android/view/animation/SineInOut33;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v2, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/-$$Lambda$LevelMeter$ztrKHTCujUcNSYBa7jYxgYFiEp8;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/-$$Lambda$LevelMeter$ztrKHTCujUcNSYBa7jYxgYFiEp8;-><init>(Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/LevelMeter;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/LevelMeter;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayLevelMeterBinding;

    iget-object v2, v2, Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayLevelMeterBinding;->levelMeterSuccessCircle:Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/LevelMeter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0b001c

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v4, v2

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/samsung/android/view/animation/SineInOut33;

    invoke-direct {v2}, Lcom/samsung/android/view/animation/SineInOut33;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v2, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/-$$Lambda$LevelMeter$0WfAk6WOETf5D7EOEz5VztkWs5Q;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/-$$Lambda$LevelMeter$0WfAk6WOETf5D7EOEz5VztkWs5Q;-><init>(Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/LevelMeter;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/LevelMeter;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayLevelMeterBinding;

    iget-object v2, v2, Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayLevelMeterBinding;->levelMeterSuccessRectangle:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    new-instance v3, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/LevelMeter$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/LevelMeter$1;-><init>(Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/LevelMeter;)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private startSuccessItemShowAnimation()V
    .locals 8

    const/4 v0, 0x2

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/LevelMeter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b001a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/samsung/android/view/animation/SineInOut33;

    invoke-direct {v2}, Lcom/samsung/android/view/animation/SineInOut33;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v2, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/-$$Lambda$LevelMeter$5VW4Be27kChXtyQZDMIbKlrz1Ek;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/-$$Lambda$LevelMeter$5VW4Be27kChXtyQZDMIbKlrz1Ek;-><init>(Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/LevelMeter;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/LevelMeter;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayLevelMeterBinding;

    iget-object v2, v2, Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayLevelMeterBinding;->levelMeterSuccessCircle:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    new-array v2, v0, [F

    fill-array-data v2, :array_1

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/LevelMeter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b001d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    int-to-long v6, v4

    invoke-virtual {v2, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/samsung/android/view/animation/SineInOut33;

    invoke-direct {v4}, Lcom/samsung/android/view/animation/SineInOut33;-><init>()V

    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v4, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/-$$Lambda$LevelMeter$2QvCAlnDtSZyjk5goStlZ_W860Q;

    invoke-direct {v4, p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/-$$Lambda$LevelMeter$2QvCAlnDtSZyjk5goStlZ_W860Q;-><init>(Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/LevelMeter;)V

    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v0, v0, [F

    fill-array-data v0, :array_2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/LevelMeter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/samsung/android/app/galaxyraw/util/interpolator/SineInOut80;

    invoke-direct {v4}, Lcom/samsung/android/app/galaxyraw/util/interpolator/SineInOut80;-><init>()V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v4, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/-$$Lambda$LevelMeter$ax075mIIRgiqaLKO81MWe0gDTC4;

    invoke-direct {v4, p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/-$$Lambda$LevelMeter$ax075mIIRgiqaLKO81MWe0gDTC4;-><init>(Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/LevelMeter;)V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/LevelMeter;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayLevelMeterBinding;

    iget-object v4, v4, Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayLevelMeterBinding;->levelMeterSuccessRectangle:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    new-instance v4, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/LevelMeter$2;

    invoke-direct {v4, p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/LevelMeter$2;-><init>(Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/LevelMeter;)V

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f666666    # 0.9f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private updateGuidePosition(FLandroid/graphics/PointF;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "radius",
            "position"
        }
    .end annotation

    const v0, 0x3e23d70a    # 0.16f

    cmpg-float v0, p1, v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x4

    const/4 v5, 0x0

    if-gez v0, :cond_3

    const v0, -0x41dc28f6    # -0.16f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_3

    iget p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/LevelMeter;->mState:I

    if-eqz p1, :cond_2

    if-eq p1, v2, :cond_1

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/LevelMeter;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayLevelMeterBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayLevelMeterBinding;->levelMeterGuide:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/LevelMeter;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayLevelMeterBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayLevelMeterBinding;->levelMeterTarget:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/LevelMeter;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayLevelMeterBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayLevelMeterBinding;->levelMeterSuccessCircle:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/LevelMeter;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayLevelMeterBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayLevelMeterBinding;->levelMeterSuccessCircle:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/LevelMeter;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayLevelMeterBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayLevelMeterBinding;->levelMeterSuccessRectangle:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/LevelMeter;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayLevelMeterBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayLevelMeterBinding;->levelMeterSuccessRectangle:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/LevelMeter;->startSuccessItemShowAnimation()V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/LevelMeter;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayLevelMeterBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayLevelMeterBinding;->levelMeterGuide:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/LevelMeter;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayLevelMeterBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayLevelMeterBinding;->levelMeterTarget:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/LevelMeter;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayLevelMeterBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayLevelMeterBinding;->levelMeterSuccessCircle:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/LevelMeter;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayLevelMeterBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayLevelMeterBinding;->levelMeterSuccessRectangle:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    invoke-direct {p0, v1}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/LevelMeter;->changeState(I)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/LevelMeter;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayLevelMeterBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayLevelMeterBinding;->levelMeterGuide:Landroid/widget/ImageView;

    const v6, 0x3f4ccccd    # 0.8f

    mul-float/2addr p1, v6

    const v6, 0x40533333    # 3.3f

    div-float/2addr p1, v6

    sub-float/2addr v3, p1

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/LevelMeter;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayLevelMeterBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayLevelMeterBinding;->levelMeterGuide:Landroid/widget/ImageView;

    iget v0, p2, Landroid/graphics/PointF;->x:F

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setX(F)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/LevelMeter;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayLevelMeterBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayLevelMeterBinding;->levelMeterGuide:Landroid/widget/ImageView;

    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setY(F)V

    iget p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/LevelMeter;->mState:I

    if-eqz p1, :cond_6

    if-eq p1, v2, :cond_5

    if-eq p1, v1, :cond_4

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/LevelMeter;->startSuccessItemHideAnimation()V

    goto :goto_1

    :cond_5
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/LevelMeter;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayLevelMeterBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayLevelMeterBinding;->levelMeterSuccessCircle:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/LevelMeter;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayLevelMeterBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayLevelMeterBinding;->levelMeterSuccessRectangle:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/LevelMeter;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayLevelMeterBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayLevelMeterBinding;->levelMeterGuide:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/LevelMeter;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayLevelMeterBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayLevelMeterBinding;->levelMeterTarget:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_6
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/LevelMeter;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayLevelMeterBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayLevelMeterBinding;->levelMeterGuide:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/LevelMeter;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayLevelMeterBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayLevelMeterBinding;->levelMeterTarget:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/LevelMeter;->startGuideItemShowAnimation()V

    :goto_1
    invoke-direct {p0, v2}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/LevelMeter;->changeState(I)V

    :goto_2
    return-void
.end method


# virtual methods
.method public hideLevelMeter()V
    .locals 2

    const-string v0, "LevelMeter"

    const-string v1, "hideLevelMeter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/LevelMeter;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayLevelMeterBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayLevelMeterBinding;->levelMeterSuccessCircle:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/LevelMeter;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayLevelMeterBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayLevelMeterBinding;->levelMeterSuccessRectangle:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/LevelMeter;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayLevelMeterBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayLevelMeterBinding;->levelMeterTarget:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/LevelMeter;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayLevelMeterBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayLevelMeterBinding;->levelMeterGuide:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public isOverMovementThreshold(FF)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "curAccelerationX",
            "curAccelerationY"
        }
    .end annotation

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/LevelMeter;->mPreAccelerationX:F

    sub-float/2addr v0, p1

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/LevelMeter;->mPreAccelerationY:F

    sub-float/2addr p0, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const p2, 0x3d4ccccd    # 0.05f

    cmpl-float p1, p1, p2

    if-gtz p1, :cond_1

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpl-float p0, p0, p2

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public synthetic lambda$startGuideItemShowAnimation$0$LevelMeter()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/LevelMeter;->mIsAnimationRunning:Z

    return-void
.end method

.method public synthetic lambda$startGuideItemShowAnimation$1$LevelMeter()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/LevelMeter;->mIsAnimationRunning:Z

    return-void
.end method

.method public synthetic lambda$startSuccessItemHideAnimation$2$LevelMeter(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/LevelMeter;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayLevelMeterBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayLevelMeterBinding;->levelMeterSuccessCircle:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method

.method public synthetic lambda$startSuccessItemHideAnimation$3$LevelMeter(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/LevelMeter;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayLevelMeterBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayLevelMeterBinding;->levelMeterSuccessRectangle:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method

.method public synthetic lambda$startSuccessItemShowAnimation$4$LevelMeter(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/LevelMeter;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayLevelMeterBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayLevelMeterBinding;->levelMeterSuccessCircle:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method

.method public synthetic lambda$startSuccessItemShowAnimation$5$LevelMeter(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/LevelMeter;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayLevelMeterBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayLevelMeterBinding;->levelMeterSuccessRectangle:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method

.method public synthetic lambda$startSuccessItemShowAnimation$6$LevelMeter(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/LevelMeter;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayLevelMeterBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayLevelMeterBinding;->levelMeterSuccessRectangle:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/LevelMeter;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayLevelMeterBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayLevelMeterBinding;->levelMeterSuccessRectangle:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setScaleY(F)V

    return-void
.end method

.method public reset()V
    .locals 2

    const-string v0, "LevelMeter"

    const-string v1, "reset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/LevelMeter;->hideLevelMeter()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/LevelMeter;->mIsFirstSensorInputUpdated:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/LevelMeter;->mIsLayoutUpdated:Z

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/LevelMeter;->changeState(I)V

    return-void
.end method

.method public updateAccelerationValue(FFLandroid/graphics/Rect;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "curAccelerationX",
            "curAccelerationY",
            "previewLayoutRect"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/LevelMeter;->mIsLayoutUpdated:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/LevelMeter;->isLevelMeterVisibleCondition(FF)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/LevelMeter;->hideLevelMeter()V

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/LevelMeter;->mIsAnimationRunning:Z

    if-eqz v0, :cond_2

    return-void

    :cond_2
    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/LevelMeter;->mIsFirstSensorInputUpdated:Z

    if-nez v0, :cond_3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/LevelMeter;->calculateRadius(FF)F

    move-result v0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/LevelMeter;->calculatePosition(FFLandroid/graphics/Rect;)Landroid/graphics/PointF;

    move-result-object p3

    invoke-direct {p0, v0, p3}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/LevelMeter;->updateGuidePosition(FLandroid/graphics/PointF;)V

    const/4 p3, 0x1

    iput-boolean p3, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/LevelMeter;->mIsFirstSensorInputUpdated:Z

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/LevelMeter;->mPreAccelerationX:F

    add-float/2addr v0, p1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget v2, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/LevelMeter;->mPreAccelerationY:F

    add-float/2addr v2, p2

    div-float/2addr v2, v1

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/LevelMeter;->isOverMovementThreshold(FF)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/LevelMeter;->calculateRadius(FF)F

    move-result v1

    invoke-direct {p0, v0, v2, p3}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/LevelMeter;->calculatePosition(FFLandroid/graphics/Rect;)Landroid/graphics/PointF;

    move-result-object p3

    invoke-direct {p0, v1, p3}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/LevelMeter;->updateGuidePosition(FLandroid/graphics/PointF;)V

    :cond_4
    :goto_0
    iput p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/LevelMeter;->mPreAccelerationX:F

    iput p2, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/LevelMeter;->mPreAccelerationY:F

    return-void
.end method
