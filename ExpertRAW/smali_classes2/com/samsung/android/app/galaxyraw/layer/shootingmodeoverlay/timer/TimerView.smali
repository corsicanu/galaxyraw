.class public Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "TimerView.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerContract$View;
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private mAnimationDurationScale:F

.field private mPresenter:Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerContract$Presenter;

.field private mProgressWheelGuideLinePosition:F

.field private mTimerCountInAnimation:Landroid/view/animation/Animation;

.field private mTimerCountInAnimationLastCount:Landroid/view/animation/Animation;

.field private final mTimerNumberArray:[Ljava/lang/Integer;

.field private mTimerProgressAnimatorSet:Landroid/animation/AnimatorSet;

.field private mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayTimerBinding;


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

    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;)V

    const p1, 0x7f030010

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerView;->typedArrayToIntegerArray(I)[Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerView;->mTimerNumberArray:[Ljava/lang/Integer;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/feature/FloatTag;->TOP_GUIDE_LINE:Lcom/samsung/android/app/galaxyraw/feature/FloatTag;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/FloatTag;)F

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerView;->mProgressWheelGuideLinePosition:F

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerView;->init()V

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

    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p1, 0x7f030010

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerView;->typedArrayToIntegerArray(I)[Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerView;->mTimerNumberArray:[Ljava/lang/Integer;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/feature/FloatTag;->TOP_GUIDE_LINE:Lcom/samsung/android/app/galaxyraw/feature/FloatTag;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/FloatTag;)F

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerView;->mProgressWheelGuideLinePosition:F

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerView;->init()V

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

    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p1, 0x7f030010

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerView;->typedArrayToIntegerArray(I)[Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerView;->mTimerNumberArray:[Ljava/lang/Integer;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/feature/FloatTag;->TOP_GUIDE_LINE:Lcom/samsung/android/app/galaxyraw/feature/FloatTag;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/FloatTag;)F

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerView;->mProgressWheelGuideLinePosition:F

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerView;->init()V

    return-void
.end method

.method private cancelAnimatorSet(Landroid/animation/AnimatorSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animatorSet"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    return-void
.end method

.method private hideTimerProgressAnimation()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerView;->mTimerProgressAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerView;->cancelAnimatorSet(Landroid/animation/AnimatorSet;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayTimerBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayTimerBinding;->progressWheel:Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerProgressWheel;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerProgressWheel;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayTimerBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayTimerBinding;->progressWheel:Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerProgressWheel;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerProgressWheel;->setProgress(F)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayTimerBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayTimerBinding;->progressPie:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setVisibility(I)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayTimerBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayTimerBinding;->progressPie:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    return-void
.end method

.method private init()V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayTimerBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayTimerBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayTimerBinding;

    invoke-virtual {p0, p0}, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private typedArrayToIntegerArray(I)[Ljava/lang/Integer;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resourceId"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerView;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->length()I

    move-result p1

    new-array v0, p1, [Ljava/lang/Integer;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    const/4 v2, -0x1

    invoke-virtual {p0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerView;->mTimerProgressAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerView;->cancelAnimatorSet(Landroid/animation/AnimatorSet;)V

    return-void
.end method

.method public hideTimer()V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerView;->hideTimerProgressAnimation()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayTimerBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayTimerBinding;->timerNumber:Landroid/widget/ImageSwitcher;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setVisibility(I)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayTimerBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayTimerBinding;->timerNumber:Landroid/widget/ImageSwitcher;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageSwitcher;->setImageResource(I)V

    return-void
.end method

.method public initialize()V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f010008

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerView;->mTimerCountInAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f010009

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerView;->mTimerCountInAnimationLastCount:Landroid/view/animation/Animation;

    return-void
.end method

.method public synthetic lambda$showProgressPieTimer$0$TimerView()V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayTimerBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayTimerBinding;->progressPie:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    return-void
.end method

.method public synthetic lambda$showProgressPieTimer$1$TimerView()V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayTimerBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayTimerBinding;->progressPie:Lcom/airbnb/lottie/LottieAnimationView;

    const/high16 v0, 0x3e800000    # 0.25f

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    return-void
.end method

.method public synthetic lambda$showProgressPieTimer$2$TimerView()V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayTimerBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayTimerBinding;->progressPie:Lcom/airbnb/lottie/LottieAnimationView;

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    return-void
.end method

.method public synthetic lambda$showProgressPieTimer$3$TimerView()V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayTimerBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayTimerBinding;->progressPie:Lcom/airbnb/lottie/LottieAnimationView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    return-void
.end method

.method public synthetic lambda$showProgressPieTimer$4$TimerView(Landroid/animation/ValueAnimator;)V
    .locals 1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayTimerBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayTimerBinding;->progressPie:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setScaleX(F)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayTimerBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayTimerBinding;->progressPie:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setScaleY(F)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayTimerBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayTimerBinding;->progressPie:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setAlpha(F)V

    return-void
.end method

.method public synthetic lambda$showProgressPieTimer$5$TimerView(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayTimerBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayTimerBinding;->progressPie:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    return-void
.end method

.method public synthetic lambda$showProgressPieTimer$6$TimerView(Landroid/animation/ValueAnimator;)V
    .locals 1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayTimerBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayTimerBinding;->progressPie:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setScaleX(F)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayTimerBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayTimerBinding;->progressPie:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setScaleY(F)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayTimerBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayTimerBinding;->progressPie:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setAlpha(F)V

    return-void
.end method

.method public synthetic lambda$showProgressWheelTimer$7$TimerView(Landroid/animation/ValueAnimator;)V
    .locals 1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayTimerBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayTimerBinding;->progressWheel:Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerProgressWheel;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerProgressWheel;->setScaleX(F)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayTimerBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayTimerBinding;->progressWheel:Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerProgressWheel;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerProgressWheel;->setScaleY(F)V

    return-void
.end method

.method public synthetic lambda$showProgressWheelTimer$8$TimerView(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayTimerBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayTimerBinding;->progressWheel:Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerProgressWheel;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerProgressWheel;->setProgress(F)V

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

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayTimerBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayTimerBinding;->progressWheel:Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerProgressWheel;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerProgressWheel;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayTimerBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayTimerBinding;->timerNumber:Landroid/widget/ImageSwitcher;

    invoke-virtual {v0}, Landroid/widget/ImageSwitcher;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayTimerBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayTimerBinding;->progressPie:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
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

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    return v0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerContract$Presenter;

    invoke-interface {p0, p2}, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerContract$Presenter;->onTouchEventRequested(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic setPresenter(Lcom/samsung/android/app/galaxyraw/interfaces/BaseContract$Presenter;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "presenter"
        }
    .end annotation

    check-cast p1, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerContract$Presenter;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerView;->setPresenter(Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerContract$Presenter;)V

    return-void
.end method

.method public setPresenter(Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerContract$Presenter;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "presenter"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerContract$Presenter;

    return-void
.end method

.method public setProgressWheelGuideLine(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "percent"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/FloatTag;->TOP_GUIDE_LINE:Lcom/samsung/android/app/galaxyraw/feature/FloatTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/FloatTag;)F

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerView;->mProgressWheelGuideLinePosition:F

    invoke-static {p1, v0}, Lcom/samsung/android/app/galaxyraw/util/Util;->floatEquals(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerView;->mProgressWheelGuideLinePosition:F

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayTimerBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayTimerBinding;->progressWheelGuideLine:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/Guideline;->setGuidelinePercent(F)V

    return-void
.end method

.method public showProgressPieTimer()V
    .locals 12

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerView;->mTimerProgressAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerView;->cancelAnimatorSet(Landroid/animation/AnimatorSet;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/util/AnimationUtil;->getAnimatorDurationScale(Landroid/content/Context;)F

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerView;->mAnimationDurationScale:F

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0048

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iget v1, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerView;->mAnimationDurationScale:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-gtz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayTimerBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayTimerBinding;->progressPie:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setVisibility(I)V

    new-instance v1, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/-$$Lambda$TimerView$vxuhEkDErM1Tqu1snCITLKtdL9A;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/-$$Lambda$TimerView$vxuhEkDErM1Tqu1snCITLKtdL9A;-><init>(Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerView;)V

    mul-int/2addr v0, v3

    rsub-int v0, v0, 0x5dc

    div-int/lit8 v0, v0, 0x4

    int-to-long v2, v0

    invoke-virtual {p0, v1, v2, v3}, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerView;->postDelayed(Ljava/lang/Runnable;J)Z

    new-instance v1, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/-$$Lambda$TimerView$b8mAZ9Hj7NCQPKPc5AZWhun8mqQ;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/-$$Lambda$TimerView$b8mAZ9Hj7NCQPKPc5AZWhun8mqQ;-><init>(Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerView;)V

    mul-int/lit8 v2, v0, 0x2

    int-to-long v2, v2

    invoke-virtual {p0, v1, v2, v3}, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerView;->postDelayed(Ljava/lang/Runnable;J)Z

    new-instance v1, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/-$$Lambda$TimerView$4Xif_zovCVHTTlns80OCAMfgveM;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/-$$Lambda$TimerView$4Xif_zovCVHTTlns80OCAMfgveM;-><init>(Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerView;)V

    mul-int/lit8 v2, v0, 0x3

    int-to-long v2, v2

    invoke-virtual {p0, v1, v2, v3}, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerView;->postDelayed(Ljava/lang/Runnable;J)Z

    new-instance v1, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/-$$Lambda$TimerView$c9yjgy2__cZWfyEPcmK-wEcEh-I;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/-$$Lambda$TimerView$c9yjgy2__cZWfyEPcmK-wEcEh-I;-><init>(Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerView;)V

    mul-int/lit8 v0, v0, 0x4

    int-to-long v2, v0

    invoke-virtual {p0, v1, v2, v3}, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_0
    new-array v1, v3, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    int-to-float v4, v0

    iget v5, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerView;->mAnimationDurationScale:F

    div-float v5, v4, v5

    float-to-long v5, v5

    invoke-virtual {v1, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v5, Landroid/view/animation/PathInterpolator;

    const v6, 0x3e2e147b    # 0.17f

    const v7, 0x3f0ccccd    # 0.55f

    const v8, 0x3ea3d70a    # 0.32f

    const v9, 0x3f866666    # 1.05f

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v1, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v5, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/-$$Lambda$TimerView$Jpg-xjAXIW1FY6dwiR3np0iRQe8;

    invoke-direct {v5, p0}, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/-$$Lambda$TimerView$Jpg-xjAXIW1FY6dwiR3np0iRQe8;-><init>(Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerView;)V

    invoke-virtual {v1, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v5, v3, [F

    fill-array-data v5, :array_1

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    mul-int/2addr v0, v3

    rsub-int v0, v0, 0x5dc

    int-to-float v0, v0

    iget v10, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerView;->mAnimationDurationScale:F

    div-float/2addr v0, v10

    float-to-long v10, v0

    invoke-virtual {v5, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/-$$Lambda$TimerView$PvNk-4Q7Y6MzfNK9ev6jTaDBqZM;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/-$$Lambda$TimerView$PvNk-4Q7Y6MzfNK9ev6jTaDBqZM;-><init>(Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerView;)V

    invoke-virtual {v5, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v0, v3, [F

    fill-array-data v0, :array_2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iget v10, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerView;->mAnimationDurationScale:F

    div-float/2addr v4, v10

    float-to-long v10, v4

    invoke-virtual {v0, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v4, Landroid/view/animation/PathInterpolator;

    invoke-direct {v4, v6, v7, v8, v9}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v4, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/-$$Lambda$TimerView$iZdu1u4RH8rYmz3CKLhCYj5N6Z0;

    invoke-direct {v4, p0}, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/-$$Lambda$TimerView$iZdu1u4RH8rYmz3CKLhCYj5N6Z0;-><init>(Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerView;)V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v4, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerView;->mTimerProgressAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v6, 0x3

    new-array v6, v6, [Landroid/animation/Animator;

    aput-object v1, v6, v2

    const/4 v1, 0x1

    aput-object v5, v6, v1

    aput-object v0, v6, v3

    invoke-virtual {v4, v6}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayTimerBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayTimerBinding;->progressPie:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setVisibility(I)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerView;->mTimerProgressAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

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
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public showProgressWheelTimer(I)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "duration"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerView;->mTimerProgressAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerView;->cancelAnimatorSet(Landroid/animation/AnimatorSet;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/util/AnimationUtil;->getAnimatorDurationScale(Landroid/content/Context;)F

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerView;->mAnimationDurationScale:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0048

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerView;->mAnimationDurationScale:F

    div-float/2addr v2, v3

    float-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v2, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/-$$Lambda$TimerView$BYB-Mr39ofruO7UDqkmLvHyIIZw;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/-$$Lambda$TimerView$BYB-Mr39ofruO7UDqkmLvHyIIZw;-><init>(Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v2, v0, [F

    fill-array-data v2, :array_1

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    int-to-float p1, p1

    iget v3, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerView;->mAnimationDurationScale:F

    div-float/2addr p1, v3

    float-to-long v3, p1

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance p1, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/-$$Lambda$TimerView$GSvCJNc5qsVimDAosBXtWdKzd2Y;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/-$$Lambda$TimerView$GSvCJNc5qsVimDAosBXtWdKzd2Y;-><init>(Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerView;)V

    invoke-virtual {v2, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerView;->mTimerProgressAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v0, v0, [Landroid/animation/Animator;

    const/4 v3, 0x0

    aput-object v1, v0, v3

    const/4 v1, 0x1

    aput-object v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayTimerBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayTimerBinding;->progressWheel:Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerProgressWheel;

    invoke-virtual {p1, v3}, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerProgressWheel;->setVisibility(I)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerView;->mTimerProgressAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_0
    .array-data 4
        0x3f666666    # 0.9f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public updateTimerNumber(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timerValue"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayTimerBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayTimerBinding;->timerNumber:Landroid/widget/ImageSwitcher;

    invoke-virtual {v0}, Landroid/widget/ImageSwitcher;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayTimerBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayTimerBinding;->timerNumber:Landroid/widget/ImageSwitcher;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerView;->mTimerCountInAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayTimerBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayTimerBinding;->timerNumber:Landroid/widget/ImageSwitcher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setVisibility(I)V

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayTimerBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayTimerBinding;->timerNumber:Landroid/widget/ImageSwitcher;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerView;->mTimerCountInAnimationLastCount:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/widget/ImageSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayTimerBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayTimerBinding;->timerNumber:Landroid/widget/ImageSwitcher;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerView;->mTimerNumberArray:[Ljava/lang/Integer;

    sub-int/2addr p1, v0

    aget-object p0, p0, p1

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {v1, p0}, Landroid/widget/ImageSwitcher;->setImageResource(I)V

    return-void
.end method
