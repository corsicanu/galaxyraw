.class public Lcom/samsung/android/app/galaxyraw/widget/NightCaptureCountDownTimer;
.super Landroid/widget/RelativeLayout;
.source "NightCaptureCountDownTimer.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NightCaptureCountDownTimer"


# instance fields
.field private mEstimatedCaptureDurationInMillis:I

.field private final mHandler:Landroid/os/Handler;

.field private mRemainTime:I

.field private mSystemTimeScheduler:Ljava/util/Timer;

.field private mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/WidgetNightCaptureCountDownTimerBinding;


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

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/widget/NightCaptureCountDownTimer;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/widget/NightCaptureCountDownTimer;->mRemainTime:I

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/widget/NightCaptureCountDownTimer;->mEstimatedCaptureDurationInMillis:I

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/widget/NightCaptureCountDownTimer;->initView()V

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

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/widget/NightCaptureCountDownTimer;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/widget/NightCaptureCountDownTimer;->mRemainTime:I

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/widget/NightCaptureCountDownTimer;->mEstimatedCaptureDurationInMillis:I

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/widget/NightCaptureCountDownTimer;->initView()V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/galaxyraw/widget/NightCaptureCountDownTimer;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/widget/NightCaptureCountDownTimer;->mRemainTime:I

    return p0
.end method

.method static synthetic access$010(Lcom/samsung/android/app/galaxyraw/widget/NightCaptureCountDownTimer;)I
    .locals 2

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/widget/NightCaptureCountDownTimer;->mRemainTime:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/samsung/android/app/galaxyraw/widget/NightCaptureCountDownTimer;->mRemainTime:I

    return v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/galaxyraw/widget/NightCaptureCountDownTimer;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/widget/NightCaptureCountDownTimer;->setTime(IZ)V

    return-void
.end method

.method private getEstimatedCaptureDurationInSeconds(I)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "estimatedCaptureDurationTime"
        }
    .end annotation

    const/16 p0, 0x3e8

    if-lt p1, p0, :cond_0

    int-to-float p0, p1

    const/high16 p1, 0x447a0000    # 1000.0f

    div-float/2addr p0, p1

    float-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p0

    double-to-int p0, p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private getFormattedCountdownTimeString(I)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seconds"
        }
    .end annotation

    const/16 p0, 0x3c

    if-lt p1, p0, :cond_0

    div-int/lit8 v0, p1, 0x3c

    rem-int/2addr p1, p0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v0

    const-string p1, "%02d:%02d"

    invoke-static {p0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    rem-int/2addr p1, p0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private initView()V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/widget/NightCaptureCountDownTimer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lcom/samsung/android/app/galaxyraw/databinding/WidgetNightCaptureCountDownTimerBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/samsung/android/app/galaxyraw/databinding/WidgetNightCaptureCountDownTimerBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/widget/NightCaptureCountDownTimer;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/WidgetNightCaptureCountDownTimerBinding;

    return-void
.end method

.method private setTime(IZ)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "seconds",
            "animation"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/widget/NightCaptureCountDownTimer;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/WidgetNightCaptureCountDownTimerBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/WidgetNightCaptureCountDownTimerBinding;->countDownTimer:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/widget/NightCaptureCountDownTimer;->getFormattedCountdownTimeString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/widget/NightCaptureCountDownTimer;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/WidgetNightCaptureCountDownTimerBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/WidgetNightCaptureCountDownTimerBinding;->countDownTimer:Landroid/widget/TextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/widget/NightCaptureCountDownTimer;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/WidgetNightCaptureCountDownTimerBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/WidgetNightCaptureCountDownTimerBinding;->countDownTimer:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/widget/NightCaptureCountDownTimer;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f0b003b

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    int-to-long v0, p0

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    :cond_0
    return-void
.end method

.method private startSystemTimeTick()V
    .locals 8

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/widget/NightCaptureCountDownTimer;->mSystemTimeScheduler:Ljava/util/Timer;

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/widget/NightCaptureCountDownTimer;->mEstimatedCaptureDurationInMillis:I

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/widget/NightCaptureCountDownTimer;->getEstimatedCaptureDurationInSeconds(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/widget/NightCaptureCountDownTimer;->mRemainTime:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startSystemTimeTick : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/app/galaxyraw/widget/NightCaptureCountDownTimer;->mRemainTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NightCaptureCountDownTimer"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/widget/NightCaptureCountDownTimer;->mSystemTimeScheduler:Ljava/util/Timer;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/widget/NightCaptureCountDownTimer$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/app/galaxyraw/widget/NightCaptureCountDownTimer$1;-><init>(Lcom/samsung/android/app/galaxyraw/widget/NightCaptureCountDownTimer;)V

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x3e8

    invoke-virtual/range {v2 .. v7}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    return-void
.end method


# virtual methods
.method public getCaptureRemainTime()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/widget/NightCaptureCountDownTimer;->mRemainTime:I

    return p0
.end method

.method public resetCountDownTimer()V
    .locals 2

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_POST_PROCESSING_NIGHT_SHOT:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "NightCaptureCountDownTimer"

    const-string v1, "resetTimerIndicator"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/widget/NightCaptureCountDownTimer;->mSystemTimeScheduler:Ljava/util/Timer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/widget/NightCaptureCountDownTimer;->mSystemTimeScheduler:Ljava/util/Timer;

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/widget/NightCaptureCountDownTimer;->mRemainTime:I

    return-void
.end method

.method public setEstimatedCaptureDuration(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "estimatedCaptureDuration"
        }
    .end annotation

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/widget/NightCaptureCountDownTimer;->mEstimatedCaptureDurationInMillis:I

    return-void
.end method

.method public update(IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "estimatedCaptureDurationTime",
            "animation"
        }
    .end annotation

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/widget/NightCaptureCountDownTimer;->mEstimatedCaptureDurationInMillis:I

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/widget/NightCaptureCountDownTimer;->getEstimatedCaptureDurationInSeconds(I)I

    move-result p1

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/widget/NightCaptureCountDownTimer;->setTime(IZ)V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/widget/NightCaptureCountDownTimer;->startSystemTimeTick()V

    return-void
.end method
