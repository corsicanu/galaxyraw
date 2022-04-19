.class public Lcom/samsung/android/app/galaxyraw/widget/RecordingTimeIndicator;
.super Landroid/widget/RelativeLayout;
.source "RecordingTimeIndicator.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RecordingTimeIndicator"


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mSystemTime:I

.field private mSystemTimeScheduler:Ljava/util/Timer;

.field private mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/WidgetRecordingTimeIndicatorBinding;


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

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/widget/RecordingTimeIndicator;->mHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/widget/RecordingTimeIndicator;->initView()V

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

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/widget/RecordingTimeIndicator;->mHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/widget/RecordingTimeIndicator;->initView()V

    return-void
.end method

.method static synthetic access$004(Lcom/samsung/android/app/galaxyraw/widget/RecordingTimeIndicator;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/widget/RecordingTimeIndicator;->mSystemTime:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/widget/RecordingTimeIndicator;->mSystemTime:I

    return v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/galaxyraw/widget/RecordingTimeIndicator;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/widget/RecordingTimeIndicator;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/galaxyraw/widget/RecordingTimeIndicator;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/widget/RecordingTimeIndicator;->updateSystemTime()V

    return-void
.end method

.method private initView()V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/widget/RecordingTimeIndicator;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lcom/samsung/android/app/galaxyraw/databinding/WidgetRecordingTimeIndicatorBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/samsung/android/app/galaxyraw/databinding/WidgetRecordingTimeIndicatorBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/widget/RecordingTimeIndicator;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/WidgetRecordingTimeIndicatorBinding;

    return-void
.end method

.method private startBlinkIcon()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/widget/RecordingTimeIndicator;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/WidgetRecordingTimeIndicatorBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/WidgetRecordingTimeIndicatorBinding;->recIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    return-void
.end method

.method private startSystemTimeTick()V
    .locals 8

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/widget/RecordingTimeIndicator;->updateSystemTime()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/widget/RecordingTimeIndicator;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/WidgetRecordingTimeIndicatorBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/WidgetRecordingTimeIndicatorBinding;->systemTime:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/app/galaxyraw/widget/RecordingTimeIndicator;->mSystemTimeScheduler:Ljava/util/Timer;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/widget/RecordingTimeIndicator$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/app/galaxyraw/widget/RecordingTimeIndicator$1;-><init>(Lcom/samsung/android/app/galaxyraw/widget/RecordingTimeIndicator;)V

    const-wide/16 v4, 0x3e8

    const-wide/16 v6, 0x3e8

    invoke-virtual/range {v2 .. v7}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method private stopBlinkIcon()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/widget/RecordingTimeIndicator;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/WidgetRecordingTimeIndicatorBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/WidgetRecordingTimeIndicatorBinding;->recIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    return-void
.end method

.method private stopSystemTimeTick()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/widget/RecordingTimeIndicator;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/WidgetRecordingTimeIndicatorBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/WidgetRecordingTimeIndicatorBinding;->systemTime:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/widget/RecordingTimeIndicator;->mSystemTimeScheduler:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/widget/RecordingTimeIndicator;->mSystemTimeScheduler:Ljava/util/Timer;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/widget/RecordingTimeIndicator;->mSystemTime:I

    return-void
.end method

.method private updateSystemTime()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/app/galaxyraw/widget/RecordingTimeIndicator;->mSystemTime:I

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/util/RecordingUtil;->convertToHMSFormat(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/widget/RecordingTimeIndicator;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/WidgetRecordingTimeIndicatorBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/WidgetRecordingTimeIndicatorBinding;->systemTime:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public getRecordingSystemTime()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/widget/RecordingTimeIndicator;->mSystemTime:I

    return p0
.end method

.method public start()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/widget/RecordingTimeIndicator;->setVisibility(I)V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/widget/RecordingTimeIndicator;->startBlinkIcon()V

    return-void
.end method

.method public stop()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/widget/RecordingTimeIndicator;->stopBlinkIcon()V

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/widget/RecordingTimeIndicator;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/widget/RecordingTimeIndicator;->mSystemTimeScheduler:Ljava/util/Timer;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/widget/RecordingTimeIndicator;->stopSystemTimeTick()V

    :cond_0
    return-void
.end method

.method public updatePauseRecordingLayout()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/widget/RecordingTimeIndicator;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/WidgetRecordingTimeIndicatorBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/WidgetRecordingTimeIndicatorBinding;->recIcon:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/widget/RecordingTimeIndicator;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/WidgetRecordingTimeIndicatorBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/WidgetRecordingTimeIndicatorBinding;->pauseIcon:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public updateRecordingTime(JI)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "recordingTime",
            "maxRecordingTime"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateRecordingTime : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxRecordingTime : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecordingTimeIndicator"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x3e8

    div-long/2addr p1, v0

    long-to-int p1, p1

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/util/RecordingUtil;->convertToHMSFormat(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p3, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " / "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p3}, Lcom/samsung/android/app/galaxyraw/util/RecordingUtil;->convertToHMSFormat(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/widget/RecordingTimeIndicator;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/WidgetRecordingTimeIndicatorBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/WidgetRecordingTimeIndicatorBinding;->recordingTime:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public updateRecordingTimeText(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "recordingTimeText"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/widget/RecordingTimeIndicator;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/WidgetRecordingTimeIndicatorBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/WidgetRecordingTimeIndicatorBinding;->recordingTime:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public updateRecordingTimeWithSystemTime(J)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "recordingTime"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateRecordingTimeWithSystemTime : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecordingTimeIndicator"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/widget/RecordingTimeIndicator;->startSystemTimeTick()V

    :cond_0
    const-wide/16 v0, 0x3e8

    div-long/2addr p1, v0

    long-to-int p1, p1

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/util/RecordingUtil;->convertToHMSFormat(I)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/widget/RecordingTimeIndicator;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/WidgetRecordingTimeIndicatorBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/WidgetRecordingTimeIndicatorBinding;->recordingTime:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public updateStartRecordingLayout()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/widget/RecordingTimeIndicator;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/WidgetRecordingTimeIndicatorBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/WidgetRecordingTimeIndicatorBinding;->pauseIcon:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/widget/RecordingTimeIndicator;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/WidgetRecordingTimeIndicatorBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/WidgetRecordingTimeIndicatorBinding;->recIcon:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
