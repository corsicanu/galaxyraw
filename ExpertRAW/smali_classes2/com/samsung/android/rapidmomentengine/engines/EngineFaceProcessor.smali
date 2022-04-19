.class Lcom/samsung/android/rapidmomentengine/engines/EngineFaceProcessor;
.super Lcom/samsung/android/rapidmomentengine/engines/EngineInterface;
.source "EngineFaceProcessor.java"

# interfaces
.implements Lcom/samsung/android/rapidmomentengine/engines/ClusterInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/rapidmomentengine/engines/EngineFaceProcessor$EngineFaceProcessorHelper;
    }
.end annotation


# static fields
.field private static final ATTRIBUTE_GENERAL_COUNT:I = 0x3

.field private static final ATTRIBUTE_PER_FACE:I = 0x16

.field private static final FACE_RATIO_THRESHOLD:F = 0.02f

.field private static final TAG:Ljava/lang/String; = "EngineFaceProcessor"


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

    iput-boolean v0, p0, Lcom/samsung/android/rapidmomentengine/engines/EngineFaceProcessor;->mEngineEnabled:Z

    :try_start_0
    const-string v0, "rm-faceprocessor-jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/rapidmomentengine/engines/EngineFaceProcessor;->mEngineEnabled:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/rapidmomentengine/engines/EngineFaceProcessor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Disabling FaceProcessor as Exception Occurred: "

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

.method private native FaceProcessorRunByteArray([BII)[D
.end method

.method private native FaceProcessordeinit()V
.end method

.method private native FaceProcessorinit()V
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/rapidmomentengine/engines/EngineFaceProcessor;->TAG:Ljava/lang/String;

    return-object v0
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

    sget-object v0, Lcom/samsung/android/rapidmomentengine/engines/EngineFaceProcessor;->TAG:Ljava/lang/String;

    const-string v1, "filterList E"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/samsung/android/rapidmomentengine/engines/EngineFaceProcessor;->cluster(Ljava/util/List;)Ljava/util/Map;

    move-result-object p1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/rapidmomentengine/engines/EngineFaceProcessor;->scoreFramesInCluster(Ljava/util/Map;F)V

    const-string p0, "filterList X"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private isHeadPoseSimilar(Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo;Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo;)Z
    .locals 2

    invoke-virtual {p1}, Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo;->getHeadpose()Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo$HeadPose;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo$HeadPose;->getYaw()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo;->getHeadpose()Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo$HeadPose;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo$HeadPose;->getPitch()D

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Lcom/samsung/android/rapidmomentengine/engines/EngineFaceProcessor$EngineFaceProcessorHelper;->access$300(DD)I

    move-result p0

    invoke-virtual {p2}, Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo;->getHeadpose()Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo$HeadPose;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo$HeadPose;->getYaw()D

    move-result-wide v0

    invoke-virtual {p2}, Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo;->getHeadpose()Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo$HeadPose;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo$HeadPose;->getPitch()D

    move-result-wide p1

    invoke-static {v0, v1, p1, p2}, Lcom/samsung/android/rapidmomentengine/engines/EngineFaceProcessor$EngineFaceProcessorHelper;->access$300(DD)I

    move-result p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$filterResults$0(Lcom/samsung/android/rapidmomentengine/data/ResultInfo;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/rapidmomentengine/data/ResultInfo;->isAccepted()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/rapidmomentengine/data/ResultInfo;->getFaceCount()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public deinit()V
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/rapidmomentengine/engines/EngineInterface;->deinit()V

    iget-boolean v0, p0, Lcom/samsung/android/rapidmomentengine/engines/EngineFaceProcessor;->mEngineEnabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/rapidmomentengine/engines/EngineFaceProcessor;->FaceProcessordeinit()V

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

    iget-boolean v0, p0, Lcom/samsung/android/rapidmomentengine/engines/EngineFaceProcessor;->mEngineEnabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/samsung/android/rapidmomentengine/engines/EngineFaceProcessor;->TAG:Ljava/lang/String;

    const-string v1, "filterResults E"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    sget-object v1, Lcom/samsung/android/rapidmomentengine/engines/-$$Lambda$EngineFaceProcessor$19CJnJkZ_Sr4fnHbdMUmocjyJJU;->INSTANCE:Lcom/samsung/android/rapidmomentengine/engines/-$$Lambda$EngineFaceProcessor$19CJnJkZ_Sr4fnHbdMUmocjyJJU;

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
    invoke-direct {p0, p1}, Lcom/samsung/android/rapidmomentengine/engines/EngineFaceProcessor;->filterList(Ljava/util/List;)V

    const-string p0, "filterResults X"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    const-class p0, Lcom/samsung/android/rapidmomentengine/engines/EngineFaceProcessor;

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public init(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/samsung/android/rapidmomentengine/engines/EngineInterface;->init(Landroid/content/Context;Landroid/os/Bundle;)V

    iget-boolean p1, p0, Lcom/samsung/android/rapidmomentengine/engines/EngineFaceProcessor;->mEngineEnabled:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/rapidmomentengine/engines/EngineFaceProcessor;->FaceProcessorinit()V

    return-void
.end method

.method public isEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/rapidmomentengine/engines/EngineFaceProcessor;->mEngineEnabled:Z

    return p0
.end method

.method public isSimilar(Lcom/samsung/android/rapidmomentengine/data/ResultInfo;Lcom/samsung/android/rapidmomentengine/data/ResultInfo;)Z
    .locals 3

    invoke-virtual {p1}, Lcom/samsung/android/rapidmomentengine/data/ResultInfo;->getFaceFeatureInfoList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/samsung/android/rapidmomentengine/data/ResultInfo;->getFaceFeatureInfoList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/rapidmomentengine/data/ResultInfo;->getFaceFeatureInfoList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/samsung/android/rapidmomentengine/data/ResultInfo;->getFaceFeatureInfoList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/rapidmomentengine/data/ResultInfo;->getFaceCount()I

    move-result v0

    invoke-virtual {p2}, Lcom/samsung/android/rapidmomentengine/data/ResultInfo;->getFaceCount()I

    move-result v2

    if-ne v0, v2, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/rapidmomentengine/data/ResultInfo;->getFaceFeatureInfoList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo;

    invoke-virtual {v0}, Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo;->getExpression()Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo$ExpressionType;

    move-result-object v0

    invoke-virtual {p2}, Lcom/samsung/android/rapidmomentengine/data/ResultInfo;->getFaceFeatureInfoList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo;

    invoke-virtual {v2}, Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo;->getExpression()Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo$ExpressionType;

    move-result-object v2

    if-ne v0, v2, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/rapidmomentengine/data/ResultInfo;->getFaceFeatureInfoList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo;

    invoke-virtual {p2}, Lcom/samsung/android/rapidmomentengine/data/ResultInfo;->getFaceFeatureInfoList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/rapidmomentengine/engines/EngineFaceProcessor;->isHeadPoseSimilar(Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo;Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public process(Lcom/samsung/android/rapidmomentengine/data/FrameData;)Lcom/samsung/android/rapidmomentengine/data/ResultInfo;
    .locals 17

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/samsung/android/rapidmomentengine/engines/EngineFaceProcessor;->mEngineEnabled:Z

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    sget-object v1, Lcom/samsung/android/rapidmomentengine/engines/EngineFaceProcessor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "process E : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/rapidmomentengine/data/FrameData;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " x "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/rapidmomentengine/data/FrameData;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/rapidmomentengine/engines/EngineFaceProcessor$EngineFaceProcessorHelper;->access$000(Lcom/samsung/android/rapidmomentengine/data/FrameData;)F

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "calculateFaceRatioInOrigImage: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Lcom/samsung/android/rapidmomentengine/data/ResultInfo;

    invoke-direct {v3}, Lcom/samsung/android/rapidmomentengine/data/ResultInfo;-><init>()V

    const/4 v4, 0x0

    cmpl-float v4, v2, v4

    const-string v5, "process X"

    if-ltz v4, :cond_1

    const v4, 0x3ca3d70a    # 0.02f

    cmpg-float v2, v2, v4

    if-gez v2, :cond_1

    const-string v0, "returning resultInfo without any expression either because no face or smaller face ratio"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/rapidmomentengine/data/FrameData;->getWidth()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/rapidmomentengine/data/FrameData;->getHeight()I

    move-result v4

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/rapidmomentengine/data/FrameData;->getByteArrayNV21()[B

    move-result-object v7

    invoke-direct {v0, v7, v2, v4}, Lcom/samsung/android/rapidmomentengine/engines/EngineFaceProcessor;->FaceProcessorRunByteArray([BII)[D

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    aget-wide v7, v0, v1

    invoke-static {v7, v8}, Ljava/lang/Math;->round(D)J

    move-result-wide v7

    long-to-int v2, v7

    invoke-virtual {v3, v2}, Lcom/samsung/android/rapidmomentengine/data/ResultInfo;->setFaceCount(I)V

    move v4, v1

    :goto_0
    if-ge v4, v2, :cond_3

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Double;

    mul-int/lit8 v8, v4, 0x16

    const/4 v9, 0x3

    add-int/2addr v8, v9

    add-int/lit8 v10, v8, 0x8

    aget-wide v10, v0, v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    aput-object v10, v7, v1

    add-int/lit8 v10, v8, 0x9

    aget-wide v10, v0, v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    const/4 v11, 0x1

    aput-object v10, v7, v11

    const/4 v10, 0x2

    add-int/lit8 v11, v8, 0xa

    aget-wide v11, v0, v11

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    aput-object v11, v7, v10

    add-int/lit8 v10, v8, 0xb

    aget-wide v10, v0, v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    aput-object v10, v7, v9

    add-int/lit8 v9, v8, 0xe

    aget-wide v11, v0, v9

    add-int/lit8 v9, v8, 0xf

    aget-wide v13, v0, v9

    add-int/lit8 v9, v8, 0x10

    aget-wide v15, v0, v9

    aget-wide v8, v0, v8

    double-to-int v8, v8

    new-instance v9, Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo;

    invoke-direct {v9}, Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo;-><init>()V

    invoke-static {v7, v9}, Lcom/samsung/android/rapidmomentengine/engines/EngineFaceProcessor$EngineFaceProcessorHelper;->access$100([Ljava/lang/Double;Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo;)V

    invoke-static {v8, v9}, Lcom/samsung/android/rapidmomentengine/engines/EngineFaceProcessor$EngineFaceProcessorHelper;->access$200(ILcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo;)V

    move-object v10, v9

    invoke-virtual/range {v10 .. v16}, Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo;->setHeadpose(DDD)V

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v7, Lcom/samsung/android/rapidmomentengine/engines/EngineFaceProcessor;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "FaceFeatureInfo: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v9}, Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    const-string v0, "No face attributes found"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {v3, v6}, Lcom/samsung/android/rapidmomentengine/data/ResultInfo;->setFaceFeatureInfoList(Ljava/util/List;)V

    sget-object v0, Lcom/samsung/android/rapidmomentengine/engines/EngineFaceProcessor;->TAG:Ljava/lang/String;

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3
.end method
