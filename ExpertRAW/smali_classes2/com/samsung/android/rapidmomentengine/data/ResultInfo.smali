.class public Lcom/samsung/android/rapidmomentengine/data/ResultInfo;
.super Ljava/lang/Object;
.source "ResultInfo.java"


# static fields
.field private static final DEFAULT_REJECTION_ENGINE:Ljava/lang/String; = "none"

.field private static final IS_LOG_FORMAT_CSV:Z = true


# instance fields
.field public blurScore:D

.field public bodyPointsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field

.field public colorfulnessScore:D

.field public descriptor:[B

.field public didHash:[J

.field private faceCount:I

.field private faceFeatureInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo;",
            ">;"
        }
    .end annotation
.end field

.field private inFilePath:Ljava/lang/String;

.field private isAccepted:Z

.field public points:[D

.field private rejectedEngineName:Ljava/lang/String;

.field private saveFileDir:Ljava/lang/String;

.field public scores:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private timestamp:J


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    int-to-double v1, v0

    iput-wide v1, p0, Lcom/samsung/android/rapidmomentengine/data/ResultInfo;->blurScore:D

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/samsung/android/rapidmomentengine/data/ResultInfo;->didHash:[J

    iput-object v3, p0, Lcom/samsung/android/rapidmomentengine/data/ResultInfo;->descriptor:[B

    iput-object v3, p0, Lcom/samsung/android/rapidmomentengine/data/ResultInfo;->points:[D

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/rapidmomentengine/data/ResultInfo;->bodyPointsList:Ljava/util/List;

    iput-wide v1, p0, Lcom/samsung/android/rapidmomentengine/data/ResultInfo;->colorfulnessScore:D

    iput v0, p0, Lcom/samsung/android/rapidmomentengine/data/ResultInfo;->faceCount:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/rapidmomentengine/data/ResultInfo;->faceFeatureInfoList:Ljava/util/List;

    const-string v0, "none"

    iput-object v0, p0, Lcom/samsung/android/rapidmomentengine/data/ResultInfo;->rejectedEngineName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/rapidmomentengine/data/ResultInfo;->setAccepted()V

    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/samsung/android/rapidmomentengine/data/ResultInfo;->setSaveFileDir(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/rapidmomentengine/data/ResultInfo;->setInFilePath(Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/rapidmomentengine/data/ResultInfo;->scores:Ljava/util/List;

    return-void
.end method

.method static synthetic lambda$toString$0(Ljava/lang/Float;)D
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    float-to-double v0, p0

    return-wide v0
.end method


# virtual methods
.method public getFaceCount()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/rapidmomentengine/data/ResultInfo;->faceCount:I

    return p0
.end method

.method public getFaceFeatureInfoList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/rapidmomentengine/data/ResultInfo;->faceFeatureInfoList:Ljava/util/List;

    return-object p0
.end method

.method public getInFilePath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/rapidmomentengine/data/ResultInfo;->inFilePath:Ljava/lang/String;

    return-object p0
.end method

.method public getOutputResultInfo()Lcom/samsung/android/rapidmomentengine/data/OutputResultInfo;
    .locals 3

    new-instance v0, Lcom/samsung/android/rapidmomentengine/data/OutputResultInfo;

    invoke-direct {v0}, Lcom/samsung/android/rapidmomentengine/data/OutputResultInfo;-><init>()V

    iget-boolean v1, p0, Lcom/samsung/android/rapidmomentengine/data/ResultInfo;->isAccepted:Z

    invoke-virtual {v0, v1}, Lcom/samsung/android/rapidmomentengine/data/OutputResultInfo;->setIsAccepted(Z)V

    iget-wide v1, p0, Lcom/samsung/android/rapidmomentengine/data/ResultInfo;->timestamp:J

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/rapidmomentengine/data/OutputResultInfo;->setTimestamp(J)V

    iget-object p0, p0, Lcom/samsung/android/rapidmomentengine/data/ResultInfo;->rejectedEngineName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/samsung/android/rapidmomentengine/data/OutputResultInfo;->setRejectedEngineName(Ljava/lang/String;)V

    return-object v0
.end method

.method public getSaveFileDir()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/rapidmomentengine/data/ResultInfo;->saveFileDir:Ljava/lang/String;

    return-object p0
.end method

.method public getTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/rapidmomentengine/data/ResultInfo;->timestamp:J

    return-wide v0
.end method

.method public isAccepted()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/rapidmomentengine/data/ResultInfo;->isAccepted:Z

    return p0
.end method

.method public mergeInfo(Lcom/samsung/android/rapidmomentengine/data/ResultInfo;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Lcom/samsung/android/rapidmomentengine/data/ResultInfo;->didHash:[J

    if-eqz v0, :cond_1

    iput-object v0, p0, Lcom/samsung/android/rapidmomentengine/data/ResultInfo;->didHash:[J

    :cond_1
    iget-wide v0, p1, Lcom/samsung/android/rapidmomentengine/data/ResultInfo;->blurScore:D

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-ltz v4, :cond_2

    iput-wide v0, p0, Lcom/samsung/android/rapidmomentengine/data/ResultInfo;->blurScore:D

    :cond_2
    iget-wide v0, p1, Lcom/samsung/android/rapidmomentengine/data/ResultInfo;->colorfulnessScore:D

    cmpl-double v2, v0, v2

    if-ltz v2, :cond_3

    iput-wide v0, p0, Lcom/samsung/android/rapidmomentengine/data/ResultInfo;->colorfulnessScore:D

    :cond_3
    iget v0, p1, Lcom/samsung/android/rapidmomentengine/data/ResultInfo;->faceCount:I

    if-ltz v0, :cond_4

    iput v0, p0, Lcom/samsung/android/rapidmomentengine/data/ResultInfo;->faceCount:I

    :cond_4
    iget-object v0, p1, Lcom/samsung/android/rapidmomentengine/data/ResultInfo;->faceFeatureInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p1, Lcom/samsung/android/rapidmomentengine/data/ResultInfo;->faceFeatureInfoList:Ljava/util/List;

    iput-object v0, p0, Lcom/samsung/android/rapidmomentengine/data/ResultInfo;->faceFeatureInfoList:Ljava/util/List;

    :cond_5
    iget-object v0, p1, Lcom/samsung/android/rapidmomentengine/data/ResultInfo;->descriptor:[B

    if-eqz v0, :cond_6

    iput-object v0, p0, Lcom/samsung/android/rapidmomentengine/data/ResultInfo;->descriptor:[B

    :cond_6
    iget-object v0, p1, Lcom/samsung/android/rapidmomentengine/data/ResultInfo;->points:[D

    if-eqz v0, :cond_7

    iput-object v0, p0, Lcom/samsung/android/rapidmomentengine/data/ResultInfo;->points:[D

    :cond_7
    iget-object v0, p1, Lcom/samsung/android/rapidmomentengine/data/ResultInfo;->rejectedEngineName:Ljava/lang/String;

    const-string v1, "none"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p1, Lcom/samsung/android/rapidmomentengine/data/ResultInfo;->rejectedEngineName:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/rapidmomentengine/data/ResultInfo;->rejectedEngineName:Ljava/lang/String;

    :cond_8
    iget-object v0, p1, Lcom/samsung/android/rapidmomentengine/data/ResultInfo;->bodyPointsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p1, Lcom/samsung/android/rapidmomentengine/data/ResultInfo;->bodyPointsList:Ljava/util/List;

    iput-object v0, p0, Lcom/samsung/android/rapidmomentengine/data/ResultInfo;->bodyPointsList:Ljava/util/List;

    :cond_9
    iget-object v0, p1, Lcom/samsung/android/rapidmomentengine/data/ResultInfo;->scores:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object p1, p1, Lcom/samsung/android/rapidmomentengine/data/ResultInfo;->scores:Ljava/util/List;

    iput-object p1, p0, Lcom/samsung/android/rapidmomentengine/data/ResultInfo;->scores:Ljava/util/List;

    :cond_a
    return-void
.end method

.method public mergeInfo(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/rapidmomentengine/data/ResultInfo;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/rapidmomentengine/data/ResultInfo;

    invoke-virtual {p0, v0}, Lcom/samsung/android/rapidmomentengine/data/ResultInfo;->mergeInfo(Lcom/samsung/android/rapidmomentengine/data/ResultInfo;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setAccepted()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/rapidmomentengine/data/ResultInfo;->isAccepted:Z

    const-string v0, "none"

    iput-object v0, p0, Lcom/samsung/android/rapidmomentengine/data/ResultInfo;->rejectedEngineName:Ljava/lang/String;

    return-void
.end method

.method public setFaceCount(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/rapidmomentengine/data/ResultInfo;->faceCount:I

    return-void
.end method

.method public setFaceFeatureInfoList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/rapidmomentengine/data/ResultInfo;->faceFeatureInfoList:Ljava/util/List;

    return-void
.end method

.method public setInFilePath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/rapidmomentengine/data/ResultInfo;->inFilePath:Ljava/lang/String;

    return-void
.end method

.method public setRejected()V
    .locals 1

    const-string v0, "none"

    invoke-virtual {p0, v0}, Lcom/samsung/android/rapidmomentengine/data/ResultInfo;->setRejected(Ljava/lang/String;)V

    return-void
.end method

.method public setRejected(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/rapidmomentengine/data/ResultInfo;->isAccepted:Z

    iput-object p1, p0, Lcom/samsung/android/rapidmomentengine/data/ResultInfo;->rejectedEngineName:Ljava/lang/String;

    return-void
.end method

.method public setSaveFileDir(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/rapidmomentengine/data/ResultInfo;->saveFileDir:Ljava/lang/String;

    return-void
.end method

.method public setTimestamp(J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/rapidmomentengine/data/ResultInfo;->timestamp:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/rapidmomentengine/data/ResultInfo;->getInFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/samsung/android/rapidmomentengine/data/ResultInfo;->blurScore:D

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/rapidmomentengine/data/ResultInfo;->didHash:[J

    if-eqz v2, :cond_0

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-wide v5, v2, v4

    invoke-static {v5, v6}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/samsung/android/rapidmomentengine/data/ResultInfo;->colorfulnessScore:D

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/rapidmomentengine/data/ResultInfo;->faceCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/rapidmomentengine/data/ResultInfo;->rejectedEngineName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/rapidmomentengine/data/ResultInfo;->scores:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/rapidmomentengine/data/-$$Lambda$ResultInfo$eSBKLuYjzCNsTEbd3fMry_MCt6U;->INSTANCE:Lcom/samsung/android/rapidmomentengine/data/-$$Lambda$ResultInfo$eSBKLuYjzCNsTEbd3fMry_MCt6U;

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->mapToDouble(Ljava/util/function/ToDoubleFunction;)Ljava/util/stream/DoubleStream;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/stream/DoubleStream;->sum()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/rapidmomentengine/data/ResultInfo;->isAccepted()Z

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
