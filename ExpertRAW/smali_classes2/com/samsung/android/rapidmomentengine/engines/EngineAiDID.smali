.class Lcom/samsung/android/rapidmomentengine/engines/EngineAiDID;
.super Lcom/samsung/android/rapidmomentengine/engines/EngineInterface;
.source "EngineAiDID.java"

# interfaces
.implements Lcom/samsung/android/rapidmomentengine/engines/ClusterInterface;


# static fields
.field private static final TAG:Ljava/lang/String; = "EngineAiDID"


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

    iput-boolean v0, p0, Lcom/samsung/android/rapidmomentengine/engines/EngineAiDID;->mEngineEnabled:Z

    :try_start_0
    const-string v0, "rm_rapidmoments_jni_b"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/rapidmomentengine/engines/EngineAiDID;->mEngineEnabled:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/rapidmomentengine/engines/EngineAiDID;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Disabling AiDID as Exception Occurred: "

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

    sget-object v0, Lcom/samsung/android/rapidmomentengine/engines/EngineAiDID;->TAG:Ljava/lang/String;

    const-string v1, "filterList E"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/samsung/android/rapidmomentengine/engines/EngineAiDID;->cluster(Ljava/util/List;)Ljava/util/Map;

    move-result-object p1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/rapidmomentengine/engines/EngineAiDID;->scoreFramesInCluster(Ljava/util/Map;F)V

    const-string p0, "filterList X"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private native getFeaturesAndKeyPointsByteArray([BII)[Ljava/lang/Object;
.end method

.method private native isSimilar([B[B[D[DII)Z
.end method

.method static synthetic lambda$filterResults$0(Lcom/samsung/android/rapidmomentengine/data/ResultInfo;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/rapidmomentengine/data/ResultInfo;->isAccepted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/rapidmomentengine/data/ResultInfo;->points:[D

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/rapidmomentengine/data/ResultInfo;->descriptor:[B

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public filterResultForGroup(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/samsung/android/rapidmomentengine/data/ResultInfo;",
            ">;>;)V"
        }
    .end annotation

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

    sget-object v0, Lcom/samsung/android/rapidmomentengine/engines/EngineAiDID;->TAG:Ljava/lang/String;

    const-string v1, "filterResults E"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/samsung/android/rapidmomentengine/engines/EngineAiDID;->mEngineEnabled:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    sget-object v1, Lcom/samsung/android/rapidmomentengine/engines/-$$Lambda$EngineAiDID$J6t3lKQrDWyjC-fZNkfgwu87xqM;->INSTANCE:Lcom/samsung/android/rapidmomentengine/engines/-$$Lambda$EngineAiDID$J6t3lKQrDWyjC-fZNkfgwu87xqM;

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/rapidmomentengine/engines/EngineAiDID;->filterList(Ljava/util/List;)V

    const-string p0, "filterResults X"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/samsung/android/rapidmomentengine/engines/EngineAiDID;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public isEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/rapidmomentengine/engines/EngineAiDID;->mEngineEnabled:Z

    return p0
.end method

.method public isSimilar(Lcom/samsung/android/rapidmomentengine/data/ResultInfo;Lcom/samsung/android/rapidmomentengine/data/ResultInfo;)Z
    .locals 9

    sget-object v0, Lcom/samsung/android/rapidmomentengine/engines/EngineAiDID;->TAG:Ljava/lang/String;

    const-string v1, "isSimilar E"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p1, Lcom/samsung/android/rapidmomentengine/data/ResultInfo;->descriptor:[B

    iget-object v4, p2, Lcom/samsung/android/rapidmomentengine/data/ResultInfo;->descriptor:[B

    iget-object v5, p1, Lcom/samsung/android/rapidmomentengine/data/ResultInfo;->points:[D

    iget-object v6, p2, Lcom/samsung/android/rapidmomentengine/data/ResultInfo;->points:[D

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/samsung/android/rapidmomentengine/engines/EngineAiDID;->isSimilar([B[B[D[DII)Z

    move-result p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "isSimilar X: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public process(Lcom/samsung/android/rapidmomentengine/data/FrameData;)Lcom/samsung/android/rapidmomentengine/data/ResultInfo;
    .locals 4

    sget-object v0, Lcom/samsung/android/rapidmomentengine/engines/EngineAiDID;->TAG:Ljava/lang/String;

    const-string v1, "process E"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/samsung/android/rapidmomentengine/engines/EngineAiDID;->mEngineEnabled:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/rapidmomentengine/data/FrameData;->getByteArrayNV21()[B

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/rapidmomentengine/data/FrameData;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Lcom/samsung/android/rapidmomentengine/data/FrameData;->getHeight()I

    move-result p1

    invoke-direct {p0, v1, v3, p1}, Lcom/samsung/android/rapidmomentengine/engines/EngineAiDID;->getFeaturesAndKeyPointsByteArray([BII)[Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1

    array-length p1, p0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    const/4 p1, 0x0

    aget-object p1, p0, p1

    check-cast p1, [B

    move-object v2, p1

    check-cast v2, [B

    const/4 p1, 0x1

    aget-object p0, p0, p1

    check-cast p0, [D

    check-cast p0, [D

    goto :goto_0

    :cond_1
    const-string p0, "DID JNI did not provide descriptor and keypoints"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object p0, v2

    :goto_0
    new-instance p1, Lcom/samsung/android/rapidmomentengine/data/ResultInfo;

    invoke-direct {p1}, Lcom/samsung/android/rapidmomentengine/data/ResultInfo;-><init>()V

    iput-object v2, p1, Lcom/samsung/android/rapidmomentengine/data/ResultInfo;->descriptor:[B

    iput-object p0, p1, Lcom/samsung/android/rapidmomentengine/data/ResultInfo;->points:[D

    const-string p0, "process X"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method
