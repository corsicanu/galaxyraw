.class public Lcom/samsung/android/rapidmomentengine/RapidEngineScorerSync;
.super Ljava/lang/Object;
.source "RapidEngineScorerSync.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RapidEngineScorerSync"


# instance fields
.field private mEngineBlur:Lcom/samsung/android/rapidmomentengine/engines/EngineInterface;

.field private mEngineDID:Lcom/samsung/android/rapidmomentengine/engines/EngineInterface;

.field private mPreviousInfo:Lcom/samsung/android/rapidmomentengine/data/ResultInfo;

.field private mRapidEngines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/rapidmomentengine/engines/EngineInterface;",
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
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object p0, Lcom/samsung/android/rapidmomentengine/RapidEngineScorerSync;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Rapid Engine Library version: 1.0.0.7 , BuildMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "rm_a"

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private checkOverRejection()Z
    .locals 3

    iget v0, p0, Lcom/samsung/android/rapidmomentengine/RapidEngineScorerSync;->mTotalFrames:I

    iget p0, p0, Lcom/samsung/android/rapidmomentengine/RapidEngineScorerSync;->mSelectedFrames:I

    sub-int p0, v0, p0

    int-to-float p0, p0

    int-to-float v0, v0

    div-float/2addr p0, v0

    sget-object v0, Lcom/samsung/android/rapidmomentengine/RapidEngineScorerSync;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processFrame: CurrentRejection rate = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v1, 0x3e99999a    # 0.3f

    cmpl-float p0, p0, v1

    if-lez p0, :cond_0

    const-string p0, " above threshold: 0.3..."

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic lambda$deinit$1(Lcom/samsung/android/rapidmomentengine/engines/EngineInterface;)V
    .locals 3

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/rapidmomentengine/engines/EngineInterface;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RapidMomentSync"

    const-string v2, "DeInit"

    invoke-static {v1, v0, v2}, Lcom/samsung/android/rapidmomentengine/utils/TimeProfiler;->startTimeTrace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/rapidmomentengine/engines/EngineInterface;->deinit()V

    invoke-static {}, Lcom/samsung/android/rapidmomentengine/utils/TimeProfiler;->endTimeTrace()V

    :cond_0
    return-void
.end method

.method static synthetic lambda$init$0(Landroid/content/Context;Landroid/os/Bundle;Lcom/samsung/android/rapidmomentengine/engines/EngineInterface;)V
    .locals 3

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/samsung/android/rapidmomentengine/engines/EngineInterface;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RapidMomentSync"

    const-string v2, "Init"

    invoke-static {v1, v0, v2}, Lcom/samsung/android/rapidmomentengine/utils/TimeProfiler;->startTimeTrace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, p0, p1}, Lcom/samsung/android/rapidmomentengine/engines/EngineInterface;->init(Landroid/content/Context;Landroid/os/Bundle;)V

    invoke-static {}, Lcom/samsung/android/rapidmomentengine/utils/TimeProfiler;->endTimeTrace()V

    :cond_0
    return-void
.end method


# virtual methods
.method public deinit()V
    .locals 2

    sget-object v0, Lcom/samsung/android/rapidmomentengine/RapidEngineScorerSync;->TAG:Ljava/lang/String;

    const-string v1, "deinit E"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/rapidmomentengine/RapidEngineScorerSync;->mRapidEngines:Ljava/util/List;

    sget-object v1, Lcom/samsung/android/rapidmomentengine/-$$Lambda$RapidEngineScorerSync$n13QLMNOkxkAzPlz-vnKBh01rBo;->INSTANCE:Lcom/samsung/android/rapidmomentengine/-$$Lambda$RapidEngineScorerSync$n13QLMNOkxkAzPlz-vnKBh01rBo;

    invoke-interface {p0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    const-string p0, "deinit X"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public init(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 5

    sget-object v0, Lcom/samsung/android/rapidmomentengine/RapidEngineScorerSync;->TAG:Ljava/lang/String;

    const-string v1, "init: E"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "processFrame: Updated thresholding logic"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "key_mode"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Lcom/samsung/android/rapidmomentengine/engines/EngineManager;->getEnginesByMode(I)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/rapidmomentengine/RapidEngineScorerSync;->mRapidEngines:Ljava/util/List;

    if-eqz v3, :cond_0

    new-instance v4, Lcom/samsung/android/rapidmomentengine/-$$Lambda$RapidEngineScorerSync$d_aKg4vJ-RIgGjSxQfTVQmPP4BI;

    invoke-direct {v4, p1, p2}, Lcom/samsung/android/rapidmomentengine/-$$Lambda$RapidEngineScorerSync$d_aKg4vJ-RIgGjSxQfTVQmPP4BI;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    invoke-interface {v3, v4}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    :cond_0
    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Lcom/samsung/android/rapidmomentengine/engines/EngineManager;->getEnginesIndicesByMode(I)[I

    move-result-object p1

    if-eqz p1, :cond_2

    const/4 p2, 0x1

    aget v1, p1, p2

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/samsung/android/rapidmomentengine/RapidEngineScorerSync;->mRapidEngines:Ljava/util/List;

    aget p2, p1, p2

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/rapidmomentengine/engines/EngineInterface;

    iput-object p2, p0, Lcom/samsung/android/rapidmomentengine/RapidEngineScorerSync;->mEngineBlur:Lcom/samsung/android/rapidmomentengine/engines/EngineInterface;

    :cond_1
    const/4 p2, 0x2

    aget v1, p1, p2

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/samsung/android/rapidmomentengine/RapidEngineScorerSync;->mRapidEngines:Ljava/util/List;

    aget p1, p1, p2

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/rapidmomentengine/engines/EngineInterface;

    iput-object p1, p0, Lcom/samsung/android/rapidmomentengine/RapidEngineScorerSync;->mEngineDID:Lcom/samsung/android/rapidmomentengine/engines/EngineInterface;

    :cond_2
    const-string p0, "init X"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public processFrame(Lcom/samsung/android/rapidmomentengine/data/InputFrameData;)Lcom/samsung/android/rapidmomentengine/data/OutputResultInfo;
    .locals 11

    sget-object v0, Lcom/samsung/android/rapidmomentengine/RapidEngineScorerSync;->TAG:Ljava/lang/String;

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

    iget v1, p0, Lcom/samsung/android/rapidmomentengine/RapidEngineScorerSync;->mTotalFrames:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/rapidmomentengine/RapidEngineScorerSync;->mTotalFrames:I

    invoke-static {p1}, Lcom/samsung/android/rapidmomentengine/data/FrameBuilder;->buildResizedNV21FrameFromInputFrameData(Lcom/samsung/android/rapidmomentengine/data/InputFrameData;)Lcom/samsung/android/rapidmomentengine/data/FrameData;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/rapidmomentengine/utils/TimeProfiler;->getTimeStamp()J

    move-result-wide v3

    iget-object v5, p0, Lcom/samsung/android/rapidmomentengine/RapidEngineScorerSync;->mEngineBlur:Lcom/samsung/android/rapidmomentengine/engines/EngineInterface;

    invoke-virtual {v5, v1}, Lcom/samsung/android/rapidmomentengine/engines/EngineInterface;->process(Lcom/samsung/android/rapidmomentengine/data/FrameData;)Lcom/samsung/android/rapidmomentengine/data/ResultInfo;

    move-result-object v5

    const-string v6, "RapidMomentSync"

    const-string v7, "EngineBlur"

    const-string v8, "Process"

    invoke-static {v3, v4, v6, v7, v8}, Lcom/samsung/android/rapidmomentengine/utils/TimeProfiler;->printElapsedTime(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/rapidmomentengine/data/InputFrameData;->getTimeStamp()J

    move-result-wide v3

    invoke-virtual {v5, v3, v4}, Lcom/samsung/android/rapidmomentengine/data/ResultInfo;->setTimestamp(J)V

    invoke-virtual {v1}, Lcom/samsung/android/rapidmomentengine/data/FrameData;->getCameraId()I

    move-result v3

    if-ne v3, v2, :cond_0

    const-wide v3, 0x407f400000000000L    # 500.0

    goto :goto_0

    :cond_0
    const-wide v3, 0x4097700000000000L    # 1500.0

    :goto_0
    iget-wide v9, v5, Lcom/samsung/android/rapidmomentengine/data/ResultInfo;->blurScore:D

    cmpg-double v7, v9, v3

    if-gez v7, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "processFrame: blurScore - "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v6, v5, Lcom/samsung/android/rapidmomentengine/data/ResultInfo;->blurScore:D

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, ", threshold: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", rejecting "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/rapidmomentengine/data/InputFrameData;->getTimeStamp()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/rapidmomentengine/RapidEngineScorerSync;->mEngineBlur:Lcom/samsung/android/rapidmomentengine/engines/EngineInterface;

    invoke-virtual {p1}, Lcom/samsung/android/rapidmomentengine/engines/EngineInterface;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Lcom/samsung/android/rapidmomentengine/data/ResultInfo;->setRejected(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/rapidmomentengine/RapidEngineScorerSync;->checkOverRejection()Z

    move-result p1

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/samsung/android/rapidmomentengine/RapidEngineScorerSync;->mSelectedFrames:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/samsung/android/rapidmomentengine/RapidEngineScorerSync;->mSelectedFrames:I

    const-string p0, "processFrame: Force accepting the frame.."

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Lcom/samsung/android/rapidmomentengine/data/ResultInfo;->setAccepted()V

    invoke-virtual {v5}, Lcom/samsung/android/rapidmomentengine/data/ResultInfo;->getOutputResultInfo()Lcom/samsung/android/rapidmomentengine/data/OutputResultInfo;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {v5}, Lcom/samsung/android/rapidmomentengine/data/ResultInfo;->getOutputResultInfo()Lcom/samsung/android/rapidmomentengine/data/OutputResultInfo;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance v3, Lcom/samsung/android/rapidmomentengine/data/ResultInfo;

    invoke-direct {v3}, Lcom/samsung/android/rapidmomentengine/data/ResultInfo;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/android/rapidmomentengine/data/InputFrameData;->getTimeStamp()J

    move-result-wide v9

    invoke-virtual {v3, v9, v10}, Lcom/samsung/android/rapidmomentengine/data/ResultInfo;->setTimestamp(J)V

    invoke-virtual {v3, v5}, Lcom/samsung/android/rapidmomentengine/data/ResultInfo;->mergeInfo(Lcom/samsung/android/rapidmomentengine/data/ResultInfo;)V

    invoke-static {}, Lcom/samsung/android/rapidmomentengine/utils/TimeProfiler;->getTimeStamp()J

    move-result-wide v4

    iget-object v7, p0, Lcom/samsung/android/rapidmomentengine/RapidEngineScorerSync;->mEngineDID:Lcom/samsung/android/rapidmomentengine/engines/EngineInterface;

    invoke-virtual {v7, v1}, Lcom/samsung/android/rapidmomentengine/engines/EngineInterface;->process(Lcom/samsung/android/rapidmomentengine/data/FrameData;)Lcom/samsung/android/rapidmomentengine/data/ResultInfo;

    move-result-object v1

    const-string v7, "EngineDID"

    invoke-static {v4, v5, v6, v7, v8}, Lcom/samsung/android/rapidmomentengine/utils/TimeProfiler;->printElapsedTime(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Lcom/samsung/android/rapidmomentengine/data/ResultInfo;->mergeInfo(Lcom/samsung/android/rapidmomentengine/data/ResultInfo;)V

    invoke-static {}, Lcom/samsung/android/rapidmomentengine/utils/TimeProfiler;->getTimeStamp()J

    move-result-wide v4

    iget-object v1, p0, Lcom/samsung/android/rapidmomentengine/RapidEngineScorerSync;->mPreviousInfo:Lcom/samsung/android/rapidmomentengine/data/ResultInfo;

    if-eqz v1, :cond_3

    iget-object v8, p0, Lcom/samsung/android/rapidmomentengine/RapidEngineScorerSync;->mEngineDID:Lcom/samsung/android/rapidmomentengine/engines/EngineInterface;

    check-cast v8, Lcom/samsung/android/rapidmomentengine/engines/ClusterInterface;

    invoke-interface {v8, v1, v3}, Lcom/samsung/android/rapidmomentengine/engines/ClusterInterface;->isSimilar(Lcom/samsung/android/rapidmomentengine/data/ResultInfo;Lcom/samsung/android/rapidmomentengine/data/ResultInfo;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "processFrame: similar to previous selected frame. Rejecting "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/rapidmomentengine/data/InputFrameData;->getTimeStamp()J

    move-result-wide v8

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/rapidmomentengine/RapidEngineScorerSync;->mEngineDID:Lcom/samsung/android/rapidmomentengine/engines/EngineInterface;

    invoke-virtual {p1}, Lcom/samsung/android/rapidmomentengine/engines/EngineInterface;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/samsung/android/rapidmomentengine/data/ResultInfo;->setRejected(Ljava/lang/String;)V

    :cond_3
    const-string p1, "Filter"

    invoke-static {v4, v5, v6, v7, p1}, Lcom/samsung/android/rapidmomentengine/utils/TimeProfiler;->printElapsedTime(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/rapidmomentengine/RapidEngineScorerSync;->checkOverRejection()Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "processFrame: Force accepting the frame..."

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Lcom/samsung/android/rapidmomentengine/data/ResultInfo;->setAccepted()V

    :cond_4
    invoke-virtual {v3}, Lcom/samsung/android/rapidmomentengine/data/ResultInfo;->isAccepted()Z

    move-result p1

    if-eqz p1, :cond_5

    iput-object v3, p0, Lcom/samsung/android/rapidmomentengine/RapidEngineScorerSync;->mPreviousInfo:Lcom/samsung/android/rapidmomentengine/data/ResultInfo;

    iget p1, p0, Lcom/samsung/android/rapidmomentengine/RapidEngineScorerSync;->mSelectedFrames:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/samsung/android/rapidmomentengine/RapidEngineScorerSync;->mSelectedFrames:I

    :cond_5
    invoke-virtual {v3}, Lcom/samsung/android/rapidmomentengine/data/ResultInfo;->getOutputResultInfo()Lcom/samsung/android/rapidmomentengine/data/OutputResultInfo;

    move-result-object p0

    return-object p0
.end method

.method public start()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/rapidmomentengine/RapidEngineScorerSync;->mPreviousInfo:Lcom/samsung/android/rapidmomentengine/data/ResultInfo;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/rapidmomentengine/RapidEngineScorerSync;->mTotalFrames:I

    iput v0, p0, Lcom/samsung/android/rapidmomentengine/RapidEngineScorerSync;->mSelectedFrames:I

    return-void
.end method

.method public stop()V
    .locals 4

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/rapidmomentengine/RapidEngineScorerSync;->mPreviousInfo:Lcom/samsung/android/rapidmomentengine/data/ResultInfo;

    sget-object v0, Lcom/samsung/android/rapidmomentengine/RapidEngineScorerSync;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RM Drop ratio: ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/rapidmomentengine/RapidEngineScorerSync;->mTotalFrames:I

    iget v3, p0, Lcom/samsung/android/rapidmomentengine/RapidEngineScorerSync;->mSelectedFrames:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/rapidmomentengine/RapidEngineScorerSync;->mTotalFrames:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/rapidmomentengine/RapidEngineScorerSync;->mTotalFrames:I

    if-lez v2, :cond_0

    const/high16 v3, 0x3f800000    # 1.0f

    iget p0, p0, Lcom/samsung/android/rapidmomentengine/RapidEngineScorerSync;->mSelectedFrames:I

    int-to-float p0, p0

    int-to-float v2, v2

    div-float/2addr p0, v2

    sub-float/2addr v3, p0

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, "NA"

    :goto_0
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
