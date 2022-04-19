.class public Lcom/samsung/android/rapidmomentengine/RapidEngineScorerAsync;
.super Ljava/lang/Object;
.source "RapidEngineScorerAsync.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/rapidmomentengine/RapidEngineScorerAsync$IRapidEngineCallback;
    }
.end annotation


# static fields
.field private static final FORCE_REJECTED:Ljava/lang/String; = "FORCE_REJECTED"

.field private static final TAG:Ljava/lang/String; = "RapidEngineScorerAsync"


# instance fields
.field private mCallback:Lcom/samsung/android/rapidmomentengine/RapidEngineScorerAsync$IRapidEngineCallback;

.field private mHandler:Landroid/os/Handler;

.field private mIntervalSize:I

.field private mRapidEngines:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/rapidmomentengine/engines/EngineInterface;",
            ">;"
        }
    .end annotation
.end field

.field private mResultInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/rapidmomentengine/data/ResultInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedFrames:I

.field private mTotalFrames:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/samsung/android/rapidmomentengine/RapidEngineScorerAsync;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Rapid Engine Library version: 1.0.0.7 , BuildMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "rm_a"

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/rapidmomentengine/RapidEngineScorerAsync;->mResultInfoList:Ljava/util/List;

    return-void
.end method

.method private addResult(Lcom/samsung/android/rapidmomentengine/data/ResultInfo;)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/rapidmomentengine/RapidEngineScorerAsync;->mResultInfoList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private fetchResults()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/rapidmomentengine/RapidEngineScorerAsync;->updateResult()V

    iget-object p0, p0, Lcom/samsung/android/rapidmomentengine/RapidEngineScorerAsync;->mResultInfoList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method private filterResults(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/rapidmomentengine/data/ResultInfo;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/rapidmomentengine/RapidEngineScorerAsync;->TAG:Ljava/lang/String;

    const-string v1, "filterResults E"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    sget-object v1, Lcom/samsung/android/rapidmomentengine/-$$Lambda$cCGo1F39tQDUOI6PZIxlkfkcoTM;->INSTANCE:Lcom/samsung/android/rapidmomentengine/-$$Lambda$cCGo1F39tQDUOI6PZIxlkfkcoTM;

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "filterResults Empty X"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3ee66666    # 0.45f

    iget p0, p0, Lcom/samsung/android/rapidmomentengine/RapidEngineScorerAsync;->mIntervalSize:I

    int-to-float p0, p0

    mul-float/2addr p0, v2

    cmpg-float p0, v1, p0

    if-gtz p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "filterResults: remaining frames in interval: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " not filtering any further"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-static {p1}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    sget-object p0, Lcom/samsung/android/rapidmomentengine/-$$Lambda$RapidEngineScorerAsync$z2haYzT-R-b1SRpeSvW5DVXRSkA;->INSTANCE:Lcom/samsung/android/rapidmomentengine/-$$Lambda$RapidEngineScorerAsync$z2haYzT-R-b1SRpeSvW5DVXRSkA;

    invoke-interface {p1, p0}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    const/4 p0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p0, v0, :cond_3

    int-to-float v0, p0

    const v1, 0x3f0ccccd    # 0.55f

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/rapidmomentengine/data/ResultInfo;

    const-string v1, "FORCE_REJECTED"

    invoke-virtual {v0, v1}, Lcom/samsung/android/rapidmomentengine/data/ResultInfo;->setRejected(Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/rapidmomentengine/RapidEngineScorerAsync;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Rejected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/samsung/android/rapidmomentengine/data/ResultInfo;->getInFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    sget-object p0, Lcom/samsung/android/rapidmomentengine/RapidEngineScorerAsync;->TAG:Ljava/lang/String;

    const-string p1, "filterResults X"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic lambda$deinit$4(Lcom/samsung/android/rapidmomentengine/engines/EngineInterface;)V
    .locals 3

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/rapidmomentengine/engines/EngineInterface;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RapidMomentAsync"

    const-string v2, "DeInit"

    invoke-static {v1, v0, v2}, Lcom/samsung/android/rapidmomentengine/utils/TimeProfiler;->startTimeTrace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/rapidmomentengine/engines/EngineInterface;->deinit()V

    invoke-static {}, Lcom/samsung/android/rapidmomentengine/utils/TimeProfiler;->endTimeTrace()V

    :cond_0
    return-void
.end method

.method static synthetic lambda$filterResults$7(Lcom/samsung/android/rapidmomentengine/data/ResultInfo;Lcom/samsung/android/rapidmomentengine/data/ResultInfo;)I
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/rapidmomentengine/data/ResultInfo;->scores:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/rapidmomentengine/-$$Lambda$RapidEngineScorerAsync$DAAjbqjd4a8Q0JRkxhD9pL4aVmc;->INSTANCE:Lcom/samsung/android/rapidmomentengine/-$$Lambda$RapidEngineScorerAsync$DAAjbqjd4a8Q0JRkxhD9pL4aVmc;

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->mapToDouble(Ljava/util/function/ToDoubleFunction;)Ljava/util/stream/DoubleStream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/DoubleStream;->sum()D

    move-result-wide v0

    iget-object p0, p1, Lcom/samsung/android/rapidmomentengine/data/ResultInfo;->scores:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    sget-object p1, Lcom/samsung/android/rapidmomentengine/-$$Lambda$RapidEngineScorerAsync$PUDFMjGs_xqs_j2bY31QQerbcMQ;->INSTANCE:Lcom/samsung/android/rapidmomentengine/-$$Lambda$RapidEngineScorerAsync$PUDFMjGs_xqs_j2bY31QQerbcMQ;

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->mapToDouble(Ljava/util/function/ToDoubleFunction;)Ljava/util/stream/DoubleStream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/DoubleStream;->sum()D

    move-result-wide p0

    sub-double/2addr v0, p0

    double-to-int p0, v0

    return p0
.end method

.method static synthetic lambda$init$0(Landroid/content/Context;Landroid/os/Bundle;Lcom/samsung/android/rapidmomentengine/engines/EngineInterface;)V
    .locals 3

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/samsung/android/rapidmomentengine/engines/EngineInterface;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RapidMomentAsync"

    const-string v2, "Init"

    invoke-static {v1, v0, v2}, Lcom/samsung/android/rapidmomentengine/utils/TimeProfiler;->startTimeTrace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, p0, p1}, Lcom/samsung/android/rapidmomentengine/engines/EngineInterface;->init(Landroid/content/Context;Landroid/os/Bundle;)V

    invoke-static {}, Lcom/samsung/android/rapidmomentengine/utils/TimeProfiler;->endTimeTrace()V

    :cond_0
    return-void
.end method

.method static synthetic lambda$null$5(Ljava/lang/Float;)D
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    float-to-double v0, p0

    return-wide v0
.end method

.method static synthetic lambda$null$6(Ljava/lang/Float;)D
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    float-to-double v0, p0

    return-wide v0
.end method

.method private saveResults(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/rapidmomentengine/data/ResultInfo;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/rapidmomentengine/RapidEngineScorerAsync;->TAG:Ljava/lang/String;

    const-string v1, "saveResults E"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/rapidmomentengine/data/ResultInfo;

    invoke-virtual {v1}, Lcom/samsung/android/rapidmomentengine/data/ResultInfo;->isAccepted()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/samsung/android/rapidmomentengine/RapidEngineScorerAsync;->mSelectedFrames:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/samsung/android/rapidmomentengine/RapidEngineScorerAsync;->mSelectedFrames:I

    :cond_0
    sget-object v2, Lcom/samsung/android/rapidmomentengine/RapidEngineScorerAsync;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lcom/samsung/android/rapidmomentengine/data/ResultInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/rapidmomentengine/utils/SessionLogger;->logScore(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/samsung/android/rapidmomentengine/RapidEngineScorerAsync;->TAG:Ljava/lang/String;

    const-string v1, "saveResults X"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/samsung/android/rapidmomentengine/RapidEngineScorerAsync;->sendOnProcessResult(Ljava/util/List;)V

    return-void
.end method

.method private sendOnProcessResult(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/rapidmomentengine/data/ResultInfo;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/rapidmomentengine/RapidEngineScorerAsync;->mCallback:Lcom/samsung/android/rapidmomentengine/RapidEngineScorerAsync$IRapidEngineCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/samsung/android/rapidmomentengine/RapidEngineScorerAsync$IRapidEngineCallback;->onProcessResult(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method private updateResult()V
    .locals 5

    sget-object v0, Lcom/samsung/android/rapidmomentengine/RapidEngineScorerAsync;->TAG:Ljava/lang/String;

    const-string v1, "updateResult E"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/rapidmomentengine/RapidEngineScorerAsync;->mRapidEngines:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/rapidmomentengine/engines/EngineInterface;

    invoke-virtual {v1}, Lcom/samsung/android/rapidmomentengine/engines/EngineInterface;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RapidMomentAsync"

    const-string v4, "Filter"

    invoke-static {v3, v2, v4}, Lcom/samsung/android/rapidmomentengine/utils/TimeProfiler;->startTimeTrace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/rapidmomentengine/RapidEngineScorerAsync;->mResultInfoList:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/samsung/android/rapidmomentengine/engines/EngineInterface;->filterResults(Ljava/util/List;)V

    invoke-static {}, Lcom/samsung/android/rapidmomentengine/utils/TimeProfiler;->endTimeTrace()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/rapidmomentengine/RapidEngineScorerAsync;->mResultInfoList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/samsung/android/rapidmomentengine/RapidEngineScorerAsync;->filterResults(Ljava/util/List;)V

    iget-object v0, p0, Lcom/samsung/android/rapidmomentengine/RapidEngineScorerAsync;->mResultInfoList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/samsung/android/rapidmomentengine/RapidEngineScorerAsync;->saveResults(Ljava/util/List;)V

    sget-object p0, Lcom/samsung/android/rapidmomentengine/RapidEngineScorerAsync;->TAG:Ljava/lang/String;

    const-string v0, "updateResult X"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/rapidmomentengine/RapidEngineScorerAsync;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/rapidmomentengine/RapidEngineScorerAsync;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/rapidmomentengine/-$$Lambda$RapidEngineScorerAsync$lPSuPIvcGLUqJEKYRMcnMrdFKZI;

    invoke-direct {v1, p0}, Lcom/samsung/android/rapidmomentengine/-$$Lambda$RapidEngineScorerAsync$lPSuPIvcGLUqJEKYRMcnMrdFKZI;-><init>(Lcom/samsung/android/rapidmomentengine/RapidEngineScorerAsync;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public deinit()V
    .locals 2

    sget-object v0, Lcom/samsung/android/rapidmomentengine/RapidEngineScorerAsync;->TAG:Ljava/lang/String;

    const-string v1, "deinit E"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/rapidmomentengine/RapidEngineScorerAsync;->mRapidEngines:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/rapidmomentengine/-$$Lambda$RapidEngineScorerAsync$AOH5nKy1km-0EUKuz3-VeDYTBVA;->INSTANCE:Lcom/samsung/android/rapidmomentengine/-$$Lambda$RapidEngineScorerAsync$AOH5nKy1km-0EUKuz3-VeDYTBVA;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    const-string p0, "deinit X"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public init(Landroid/content/Context;Landroid/os/Bundle;Lcom/samsung/android/rapidmomentengine/RapidEngineScorerAsync$IRapidEngineCallback;Landroid/os/Handler;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/rapidmomentengine/RapidEngineScorerAsync;->TAG:Ljava/lang/String;

    const-string v1, "init E"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p3, p0, Lcom/samsung/android/rapidmomentengine/RapidEngineScorerAsync;->mCallback:Lcom/samsung/android/rapidmomentengine/RapidEngineScorerAsync$IRapidEngineCallback;

    iput-object p4, p0, Lcom/samsung/android/rapidmomentengine/RapidEngineScorerAsync;->mHandler:Landroid/os/Handler;

    const-string p3, "group_size"

    const/16 p4, 0xa

    invoke-virtual {p2, p3, p4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p3

    iput p3, p0, Lcom/samsung/android/rapidmomentengine/RapidEngineScorerAsync;->mIntervalSize:I

    const-string p3, "key_mode"

    const/4 p4, 0x2

    invoke-virtual {p2, p3, p4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p3

    invoke-static {p3}, Lcom/samsung/android/rapidmomentengine/engines/EngineManager;->getEnginesByMode(I)Ljava/util/ArrayList;

    move-result-object p3

    iput-object p3, p0, Lcom/samsung/android/rapidmomentengine/RapidEngineScorerAsync;->mRapidEngines:Ljava/util/ArrayList;

    invoke-static {p3}, Lcom/samsung/android/rapidmomentengine/engines/EngineManager;->filterEngines(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p3

    iput-object p3, p0, Lcom/samsung/android/rapidmomentengine/RapidEngineScorerAsync;->mRapidEngines:Ljava/util/ArrayList;

    if-eqz p3, :cond_0

    new-instance p0, Lcom/samsung/android/rapidmomentengine/-$$Lambda$RapidEngineScorerAsync$G7O4pv9Z1lhfxGxOsQ0m02pcmBs;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/rapidmomentengine/-$$Lambda$RapidEngineScorerAsync$G7O4pv9Z1lhfxGxOsQ0m02pcmBs;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    invoke-virtual {p3, p0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    :cond_0
    const-string p0, "init X"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public synthetic lambda$cancel$3$RapidEngineScorerAsync()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/rapidmomentengine/RapidEngineScorerAsync;->mCallback:Lcom/samsung/android/rapidmomentengine/RapidEngineScorerAsync$IRapidEngineCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/samsung/android/rapidmomentengine/RapidEngineScorerAsync$IRapidEngineCallback;->onCancelled()V

    :cond_0
    return-void
.end method

.method public synthetic lambda$processFrame$1$RapidEngineScorerAsync(Lcom/samsung/android/rapidmomentengine/data/FrameData;)V
    .locals 8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/rapidmomentengine/RapidEngineScorerAsync;->mRapidEngines:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/rapidmomentengine/engines/EngineInterface;

    invoke-static {}, Lcom/samsung/android/rapidmomentengine/utils/TimeProfiler;->getTimeStamp()J

    move-result-wide v3

    invoke-virtual {v2, p1}, Lcom/samsung/android/rapidmomentengine/engines/EngineInterface;->process(Lcom/samsung/android/rapidmomentengine/data/FrameData;)Lcom/samsung/android/rapidmomentengine/data/ResultInfo;

    move-result-object v5

    invoke-virtual {v2}, Lcom/samsung/android/rapidmomentengine/engines/EngineInterface;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v6, "RapidMomentAsync"

    const-string v7, "Process"

    invoke-static {v3, v4, v6, v2, v7}, Lcom/samsung/android/rapidmomentengine/utils/TimeProfiler;->printElapsedTime(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/samsung/android/rapidmomentengine/data/ResultInfo;

    invoke-direct {v1}, Lcom/samsung/android/rapidmomentengine/data/ResultInfo;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/android/rapidmomentengine/data/FrameData;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/rapidmomentengine/data/ResultInfo;->setInFilePath(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/rapidmomentengine/data/FrameData;->getTimestamp()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/rapidmomentengine/data/ResultInfo;->setTimestamp(J)V

    invoke-virtual {v1, v0}, Lcom/samsung/android/rapidmomentengine/data/ResultInfo;->mergeInfo(Ljava/util/List;)V

    invoke-direct {p0, v1}, Lcom/samsung/android/rapidmomentengine/RapidEngineScorerAsync;->addResult(Lcom/samsung/android/rapidmomentengine/data/ResultInfo;)V

    sget-object p1, Lcom/samsung/android/rapidmomentengine/RapidEngineScorerAsync;->TAG:Ljava/lang/String;

    const-string v0, "processFrame X"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/rapidmomentengine/RapidEngineScorerAsync;->mResultInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/rapidmomentengine/RapidEngineScorerAsync;->mIntervalSize:I

    if-ne v0, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processFrame: fetching result for group size - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/rapidmomentengine/RapidEngineScorerAsync;->mResultInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/rapidmomentengine/RapidEngineScorerAsync;->fetchResults()V

    :cond_1
    return-void
.end method

.method public synthetic lambda$stop$2$RapidEngineScorerAsync()V
    .locals 5

    sget-object v0, Lcom/samsung/android/rapidmomentengine/RapidEngineScorerAsync;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stop: fetching result for group size - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/rapidmomentengine/RapidEngineScorerAsync;->mResultInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/rapidmomentengine/RapidEngineScorerAsync;->fetchResults()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RM Drop ratio: ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/rapidmomentengine/RapidEngineScorerAsync;->mTotalFrames:I

    iget v3, p0, Lcom/samsung/android/rapidmomentengine/RapidEngineScorerAsync;->mSelectedFrames:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/rapidmomentengine/RapidEngineScorerAsync;->mTotalFrames:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/rapidmomentengine/RapidEngineScorerAsync;->mTotalFrames:I

    if-lez v2, :cond_0

    const/high16 v3, 0x3f800000    # 1.0f

    iget v4, p0, Lcom/samsung/android/rapidmomentengine/RapidEngineScorerAsync;->mSelectedFrames:I

    int-to-float v4, v4

    int-to-float v2, v2

    div-float/2addr v4, v2

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, "NA"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/rapidmomentengine/RapidEngineScorerAsync;->mCallback:Lcom/samsung/android/rapidmomentengine/RapidEngineScorerAsync$IRapidEngineCallback;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/samsung/android/rapidmomentengine/RapidEngineScorerAsync$IRapidEngineCallback;->onStopped()V

    :cond_1
    return-void
.end method

.method public processFrame(Lcom/samsung/android/rapidmomentengine/data/InputFrameData;)V
    .locals 4

    sget-object v0, Lcom/samsung/android/rapidmomentengine/RapidEngineScorerAsync;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processFrame "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/rapidmomentengine/data/InputFrameData;->getTimeStamp()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/samsung/android/rapidmomentengine/RapidEngineScorerAsync;->mTotalFrames:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/rapidmomentengine/RapidEngineScorerAsync;->mTotalFrames:I

    invoke-static {p1}, Lcom/samsung/android/rapidmomentengine/data/FrameBuilder;->buildFromInputFrameData(Lcom/samsung/android/rapidmomentengine/data/InputFrameData;)Lcom/samsung/android/rapidmomentengine/data/FrameData;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/rapidmomentengine/RapidEngineScorerAsync;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/samsung/android/rapidmomentengine/-$$Lambda$RapidEngineScorerAsync$NBxuWdtxbeKslniAziecvGIhKHo;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/rapidmomentengine/-$$Lambda$RapidEngineScorerAsync$NBxuWdtxbeKslniAziecvGIhKHo;-><init>(Lcom/samsung/android/rapidmomentengine/RapidEngineScorerAsync;Lcom/samsung/android/rapidmomentengine/data/FrameData;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public start()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/rapidmomentengine/RapidEngineScorerAsync;->mTotalFrames:I

    iput v0, p0, Lcom/samsung/android/rapidmomentengine/RapidEngineScorerAsync;->mSelectedFrames:I

    return-void
.end method

.method public stop()V
    .locals 3

    sget-object v0, Lcom/samsung/android/rapidmomentengine/RapidEngineScorerAsync;->TAG:Ljava/lang/String;

    const-string v1, "stop E"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/rapidmomentengine/RapidEngineScorerAsync;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    new-instance v2, Lcom/samsung/android/rapidmomentengine/-$$Lambda$RapidEngineScorerAsync$uqJHJf_LJqKoSt-hOLYzZLeZB1g;

    invoke-direct {v2, p0}, Lcom/samsung/android/rapidmomentengine/-$$Lambda$RapidEngineScorerAsync$uqJHJf_LJqKoSt-hOLYzZLeZB1g;-><init>(Lcom/samsung/android/rapidmomentengine/RapidEngineScorerAsync;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    const-string p0, "stop X"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
