.class Lcom/samsung/android/rapidmomentengine/engines/EngineDID;
.super Lcom/samsung/android/rapidmomentengine/engines/EngineInterface;
.source "EngineDID.java"

# interfaces
.implements Lcom/samsung/android/rapidmomentengine/engines/ClusterInterface;


# static fields
.field private static final HASH_SIMILARITY_THRESHOLD:I = 0x5

.field private static final NAME:Ljava/lang/String; = "EngineDID"

.field private static final TAG:Ljava/lang/String; = "EngineDID"


# instance fields
.field private mEngineEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/rapidmomentengine/engines/EngineInterface;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/rapidmomentengine/engines/EngineDID;->mEngineEnabled:Z

    :try_start_0
    const-string v0, "rm_rapidmoments_jni_a"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/rapidmomentengine/engines/EngineDID;->mEngineEnabled:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/rapidmomentengine/engines/EngineDID;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Disabling DID as Exception Occurred: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private static countBits(J)J
    .locals 6

    const-wide/16 v0, 0x0

    move-wide v2, v0

    :goto_0
    cmp-long v4, p0, v0

    if-eqz v4, :cond_0

    const-wide/16 v4, 0x1

    and-long/2addr v4, p0

    add-long/2addr v2, v4

    const/4 v4, 0x1

    shr-long/2addr p0, v4

    goto :goto_0

    :cond_0
    return-wide v2
.end method

.method private filterList(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/rapidmomentengine/data/ResultInfo;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/rapidmomentengine/engines/EngineDID;->TAG:Ljava/lang/String;

    const-string v1, "filterList E"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/samsung/android/rapidmomentengine/engines/EngineDID;->cluster(Ljava/util/List;)Ljava/util/Map;

    move-result-object p1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/rapidmomentengine/engines/EngineDID;->scoreFramesInCluster(Ljava/util/Map;F)V

    const-string p0, "filterList X"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private native getDIDHashNV21([BII)[J
.end method

.method private getHashDist([J[J)J
    .locals 6

    const-wide/16 v0, 0x0

    const/4 p0, 0x0

    :goto_0
    const/4 v2, 0x4

    if-ge p0, v2, :cond_0

    aget-wide v2, p1, p0

    aget-wide v4, p2, p0

    xor-long/2addr v2, v4

    invoke-static {v2, v3}, Lcom/samsung/android/rapidmomentengine/engines/EngineDID;->countBits(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/samsung/android/rapidmomentengine/engines/EngineDID;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "did hash hamming : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v0
.end method

.method static synthetic lambda$filterResults$0(Lcom/samsung/android/rapidmomentengine/data/ResultInfo;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/rapidmomentengine/data/ResultInfo;->isAccepted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/rapidmomentengine/data/ResultInfo;->didHash:[J

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static printHash([J)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Hash: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-wide v3, p0, v2

    invoke-static {v3, v4}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/samsung/android/rapidmomentengine/engines/EngineDID;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public deinit()V
    .locals 2

    sget-object v0, Lcom/samsung/android/rapidmomentengine/engines/EngineDID;->TAG:Ljava/lang/String;

    const-string v1, "deinit E"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/samsung/android/rapidmomentengine/engines/EngineInterface;->deinit()V

    iget-boolean p0, p0, Lcom/samsung/android/rapidmomentengine/engines/EngineDID;->mEngineEnabled:Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-string p0, "deinit X"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public filterResults(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/rapidmomentengine/data/ResultInfo;",
            ">;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/samsung/android/rapidmomentengine/engines/EngineDID;->mEngineEnabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/rapidmomentengine/engines/-$$Lambda$EngineDID$zP8H9EiySML8gttxSaajdrlNiXw;->INSTANCE:Lcom/samsung/android/rapidmomentengine/engines/-$$Lambda$EngineDID$zP8H9EiySML8gttxSaajdrlNiXw;

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    sget-object v0, Lcom/samsung/android/rapidmomentengine/engines/EngineDID;->TAG:Ljava/lang/String;

    const-string v1, "Creating clusters"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/samsung/android/rapidmomentengine/engines/EngineDID;->filterList(Ljava/util/List;)V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    const-string p0, "EngineDID"

    return-object p0
.end method

.method public init(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/rapidmomentengine/engines/EngineDID;->TAG:Ljava/lang/String;

    const-string v1, "init E"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1, p2}, Lcom/samsung/android/rapidmomentengine/engines/EngineInterface;->init(Landroid/content/Context;Landroid/os/Bundle;)V

    iget-boolean p0, p0, Lcom/samsung/android/rapidmomentengine/engines/EngineDID;->mEngineEnabled:Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-string p0, "init X"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public isEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/rapidmomentengine/engines/EngineDID;->mEngineEnabled:Z

    return p0
.end method

.method public isSimilar(Lcom/samsung/android/rapidmomentengine/data/ResultInfo;Lcom/samsung/android/rapidmomentengine/data/ResultInfo;)Z
    .locals 2

    iget-object p1, p1, Lcom/samsung/android/rapidmomentengine/data/ResultInfo;->didHash:[J

    iget-object p2, p2, Lcom/samsung/android/rapidmomentengine/data/ResultInfo;->didHash:[J

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/rapidmomentengine/engines/EngineDID;->getHashDist([J[J)J

    move-result-wide p0

    const-wide/16 v0, 0x5

    cmp-long p0, p0, v0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public process(Lcom/samsung/android/rapidmomentengine/data/FrameData;)Lcom/samsung/android/rapidmomentengine/data/ResultInfo;
    .locals 4

    sget-object v0, Lcom/samsung/android/rapidmomentengine/engines/EngineDID;->TAG:Ljava/lang/String;

    const-string v1, "process E"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/samsung/android/rapidmomentengine/engines/EngineDID;->mEngineEnabled:Z

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/rapidmomentengine/data/FrameData;->getByteArrayNV21()[B

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/rapidmomentengine/data/FrameData;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Lcom/samsung/android/rapidmomentengine/data/FrameData;->getHeight()I

    move-result p1

    new-instance v3, Lcom/samsung/android/rapidmomentengine/data/ResultInfo;

    invoke-direct {v3}, Lcom/samsung/android/rapidmomentengine/data/ResultInfo;-><init>()V

    invoke-direct {p0, v1, v2, p1}, Lcom/samsung/android/rapidmomentengine/engines/EngineDID;->getDIDHashNV21([BII)[J

    move-result-object p0

    iput-object p0, v3, Lcom/samsung/android/rapidmomentengine/data/ResultInfo;->didHash:[J

    iget-object p0, v3, Lcom/samsung/android/rapidmomentengine/data/ResultInfo;->didHash:[J

    invoke-static {p0}, Lcom/samsung/android/rapidmomentengine/engines/EngineDID;->printHash([J)V

    const-string p0, "process X"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3
.end method
