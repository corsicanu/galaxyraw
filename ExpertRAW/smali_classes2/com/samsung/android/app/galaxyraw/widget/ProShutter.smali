.class public Lcom/samsung/android/app/galaxyraw/widget/ProShutter;
.super Landroid/widget/RelativeLayout;
.source "ProShutter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ProShutter"


# instance fields
.field private mStartShutterAnimator:Landroid/animation/ValueAnimator;

.field private mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/WidgetProShutterBinding;


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

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/widget/ProShutter;->initView()V

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

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/widget/ProShutter;->initView()V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/galaxyraw/widget/ProShutter;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/widget/ProShutter;->playShutterLoopAnimation()V

    return-void
.end method

.method private initView()V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/widget/ProShutter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lcom/samsung/android/app/galaxyraw/databinding/WidgetProShutterBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/samsung/android/app/galaxyraw/databinding/WidgetProShutterBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/widget/ProShutter;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/WidgetProShutterBinding;

    return-void
.end method

.method public static synthetic lambda$o9z54DOaXwPInveq3zf5MqVtsVg(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p0}, Landroid/animation/Animator;->cancel()V

    return-void
.end method

.method private playShutterLoopAnimation()V
    .locals 2

    const-string v0, "ProShutter"

    const-string v1, "playShutterLoopAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/widget/ProShutter;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/WidgetProShutterBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/WidgetProShutterBinding;->shutterLoop:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/widget/ProShutter;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/WidgetProShutterBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/WidgetProShutterBinding;->shutterMorphStart:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/widget/ProShutter;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/WidgetProShutterBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/WidgetProShutterBinding;->shutterLoop:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatCount(I)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/widget/ProShutter;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/WidgetProShutterBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/WidgetProShutterBinding;->shutterLoop:Lcom/airbnb/lottie/LottieAnimationView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setSpeed(F)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/widget/ProShutter;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/WidgetProShutterBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/WidgetProShutterBinding;->shutterLoop:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    return-void
.end method


# virtual methods
.method public cancelShutterAnimation()V
    .locals 2

    const-string v0, "ProShutter"

    const-string v1, "cancelShutterAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/widget/ProShutter;->mStartShutterAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/widget/-$$Lambda$ProShutter$o9z54DOaXwPInveq3zf5MqVtsVg;->INSTANCE:Lcom/samsung/android/app/galaxyraw/widget/-$$Lambda$ProShutter$o9z54DOaXwPInveq3zf5MqVtsVg;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/widget/ProShutter;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/WidgetProShutterBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/WidgetProShutterBinding;->shutterLoop:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    return-void
.end method

.method public synthetic lambda$startShutterAnimation$0$ProShutter(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/widget/ProShutter;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/WidgetProShutterBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/WidgetProShutterBinding;->shutterMorphStart:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    return-void
.end method

.method public resetShutterAttribute()V
    .locals 2

    const-string v0, "ProShutter"

    const-string v1, "resetShutterAttribute"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/widget/ProShutter;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/WidgetProShutterBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/WidgetProShutterBinding;->shutterMorphStart:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setVisibility(I)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/widget/ProShutter;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/WidgetProShutterBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/WidgetProShutterBinding;->shutterLoop:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setVisibility(I)V

    return-void
.end method

.method public startShutterAnimation(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isMorphAnimationNeeded"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startShutterAnimation - isMorphAnimationNeeded: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProShutter"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/widget/ProShutter;->playShutterLoopAnimation()V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ProShutter;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/WidgetProShutterBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/WidgetProShutterBinding;->shutterMorphStart:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    const/4 p1, 0x2

    new-array p1, p1, [F

    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ProShutter;->mStartShutterAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/widget/ProShutter;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b003f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ProShutter;->mStartShutterAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/widget/-$$Lambda$ProShutter$YsfqXXZL4cFvfsRa1WNVY-Sw6hw;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/widget/-$$Lambda$ProShutter$YsfqXXZL4cFvfsRa1WNVY-Sw6hw;-><init>(Lcom/samsung/android/app/galaxyraw/widget/ProShutter;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ProShutter;->mStartShutterAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/widget/ProShutter$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/widget/ProShutter$1;-><init>(Lcom/samsung/android/app/galaxyraw/widget/ProShutter;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/widget/ProShutter;->mStartShutterAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
