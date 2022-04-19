.class Lcom/samsung/android/rapidmomentengine/engines/EngineBodyPose;
.super Lcom/samsung/android/rapidmomentengine/engines/EngineInterface;
.source "EngineBodyPose.java"

# interfaces
.implements Lcom/samsung/android/rapidmomentengine/engines/ClusterInterface;


# static fields
.field private static ARC_HT_BODY_POINT_NUM:I = 0x0

.field private static MAX_BODY_CAP:I = 0x0

.field private static final SKIP_RATE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "EngineBodyPose"


# instance fields
.field private mBodyPointsListCached:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field

.field private mEngineEnabled:Z

.field private mSkipCounter:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/rapidmomentengine/engines/EngineInterface;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/rapidmomentengine/engines/EngineBodyPose;->mEngineEnabled:Z

    :try_start_0
    const-string v1, "rm-humantracking-jni"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/rapidmomentengine/engines/EngineBodyPose;->mEngineEnabled:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/rapidmomentengine/engines/EngineBodyPose;->mBodyPointsListCached:Ljava/util/List;

    iput v0, p0, Lcom/samsung/android/rapidmomentengine/engines/EngineBodyPose;->mSkipCounter:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/rapidmomentengine/engines/EngineBodyPose;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Disabling BodyTracking as Exception Occurred: "

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

.method private native BodyPoseDeinit()V
.end method

.method private native BodyPoseInit()V
.end method

.method private native GET_ARC_HT_BODY_POINT_NUM()I
.end method

.method private native GET_MAX_BODY_CAP()I
.end method

.method private native HTRunDirectBuffer([BII)[I
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

    sget-object v0, Lcom/samsung/android/rapidmomentengine/engines/EngineBodyPose;->TAG:Ljava/lang/String;

    const-string v1, "filterList E"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/samsung/android/rapidmomentengine/engines/EngineBodyPose;->cluster(Ljava/util/List;)Ljava/util/Map;

    move-result-object p1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/rapidmomentengine/engines/EngineBodyPose;->scoreFramesInCluster(Ljava/util/Map;F)V

    const-string p0, "filterList X"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private getCenterOfMass([Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 3

    new-instance p0, Landroid/graphics/Point;

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Landroid/graphics/Point;-><init>(II)V

    :goto_0
    sget v1, Lcom/samsung/android/rapidmomentengine/engines/EngineBodyPose;->ARC_HT_BODY_POINT_NUM:I

    if-ge v0, v1, :cond_0

    iget v1, p0, Landroid/graphics/Point;->x:I

    aget-object v2, p1, v0

    iget v2, v2, Landroid/graphics/Point;->x:I

    add-int/2addr v1, v2

    iput v1, p0, Landroid/graphics/Point;->x:I

    iget v1, p0, Landroid/graphics/Point;->y:I

    aget-object v2, p1, v0

    iget v2, v2, Landroid/graphics/Point;->y:I

    add-int/2addr v1, v2

    iput v1, p0, Landroid/graphics/Point;->y:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget p1, p0, Landroid/graphics/Point;->x:I

    sget v0, Lcom/samsung/android/rapidmomentengine/engines/EngineBodyPose;->ARC_HT_BODY_POINT_NUM:I

    div-int/2addr p1, v0

    iput p1, p0, Landroid/graphics/Point;->x:I

    iget p1, p0, Landroid/graphics/Point;->y:I

    sget v0, Lcom/samsung/android/rapidmomentengine/engines/EngineBodyPose;->ARC_HT_BODY_POINT_NUM:I

    div-int/2addr p1, v0

    iput p1, p0, Landroid/graphics/Point;->y:I

    return-object p0
.end method

.method private getPointDist(Ljava/util/List;Ljava/util/List;[I)D
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[",
            "Landroid/graphics/Point;",
            ">;",
            "Ljava/util/List<",
            "[",
            "Landroid/graphics/Point;",
            ">;[I)D"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/graphics/Point;

    invoke-direct {p0, p1}, Lcom/samsung/android/rapidmomentengine/engines/EngineBodyPose;->modifyOrigin([Landroid/graphics/Point;)[Landroid/graphics/Point;

    move-result-object p1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroid/graphics/Point;

    invoke-direct {p0, p2}, Lcom/samsung/android/rapidmomentengine/engines/EngineBodyPose;->modifyOrigin([Landroid/graphics/Point;)[Landroid/graphics/Point;

    move-result-object p0

    const-wide/16 v1, 0x0

    :goto_0
    array-length p2, p3

    if-ge v0, p2, :cond_0

    aget-object p2, p1, v0

    iget p2, p2, Landroid/graphics/Point;->x:I

    aget-object v3, p1, v0

    iget v3, v3, Landroid/graphics/Point;->y:I

    aget-object v4, p0, v0

    iget v4, v4, Landroid/graphics/Point;->x:I

    aget-object v5, p0, v0

    iget v5, v5, Landroid/graphics/Point;->y:I

    sub-int/2addr v4, p2

    mul-int/2addr v4, v4

    sub-int/2addr v5, v3

    mul-int/2addr v5, v5

    add-int/2addr v4, v5

    int-to-double v3, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    add-double/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-wide v1
.end method

.method private getTorsoLength(Ljava/util/List;)D
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[",
            "Landroid/graphics/Point;",
            ">;)D"
        }
    .end annotation

    const/4 p0, 0x0

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/graphics/Point;

    const/4 p1, 0x6

    aget-object v0, p0, p1

    iget v0, v0, Landroid/graphics/Point;->x:I

    aget-object p1, p0, p1

    iget p1, p1, Landroid/graphics/Point;->y:I

    const/4 v1, 0x7

    aget-object v2, p0, v1

    iget v2, v2, Landroid/graphics/Point;->x:I

    aget-object p0, p0, v1

    iget p0, p0, Landroid/graphics/Point;->y:I

    sub-int/2addr v2, v0

    mul-int/2addr v2, v2

    sub-int/2addr p0, p1

    mul-int/2addr p0, p0

    add-int/2addr v2, p0

    int-to-double p0, v2

    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic lambda$filterResults$0(Lcom/samsung/android/rapidmomentengine/data/ResultInfo;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/rapidmomentengine/data/ResultInfo;->isAccepted()Z

    move-result v0

    iget-object p0, p0, Lcom/samsung/android/rapidmomentengine/data/ResultInfo;->bodyPointsList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    and-int/2addr p0, v0

    return p0
.end method

.method private modifyOrigin([Landroid/graphics/Point;)[Landroid/graphics/Point;
    .locals 4

    invoke-direct {p0, p1}, Lcom/samsung/android/rapidmomentengine/engines/EngineBodyPose;->getCenterOfMass([Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    sget v1, Lcom/samsung/android/rapidmomentengine/engines/EngineBodyPose;->ARC_HT_BODY_POINT_NUM:I

    if-ge v0, v1, :cond_0

    aget-object v1, p1, v0

    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v3, p0, Landroid/graphics/Point;->x:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Point;->x:I

    aget-object v1, p1, v0

    iget v2, v1, Landroid/graphics/Point;->y:I

    iget v3, p0, Landroid/graphics/Point;->y:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Point;->y:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method


# virtual methods
.method public deinit()V
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/rapidmomentengine/engines/EngineInterface;->deinit()V

    iget-boolean v0, p0, Lcom/samsung/android/rapidmomentengine/engines/EngineBodyPose;->mEngineEnabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/rapidmomentengine/engines/EngineBodyPose;->BodyPoseDeinit()V

    return-void
.end method

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

    sget-object v0, Lcom/samsung/android/rapidmomentengine/engines/EngineBodyPose;->TAG:Ljava/lang/String;

    const-string v1, "filterResults E"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/samsung/android/rapidmomentengine/engines/EngineBodyPose;->mEngineEnabled:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    sget-object v1, Lcom/samsung/android/rapidmomentengine/engines/-$$Lambda$EngineBodyPose$uDJMsxRry06WppiW5GrqGPafcjw;->INSTANCE:Lcom/samsung/android/rapidmomentengine/engines/-$$Lambda$EngineBodyPose$uDJMsxRry06WppiW5GrqGPafcjw;

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
    invoke-direct {p0, p1}, Lcom/samsung/android/rapidmomentengine/engines/EngineBodyPose;->filterList(Ljava/util/List;)V

    const-string p0, "filterResults X"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/samsung/android/rapidmomentengine/engines/EngineBodyPose;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public init(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/samsung/android/rapidmomentengine/engines/EngineInterface;->init(Landroid/content/Context;Landroid/os/Bundle;)V

    iget-boolean p1, p0, Lcom/samsung/android/rapidmomentengine/engines/EngineBodyPose;->mEngineEnabled:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/rapidmomentengine/engines/EngineBodyPose;->BodyPoseInit()V

    invoke-direct {p0}, Lcom/samsung/android/rapidmomentengine/engines/EngineBodyPose;->GET_MAX_BODY_CAP()I

    move-result p1

    sput p1, Lcom/samsung/android/rapidmomentengine/engines/EngineBodyPose;->MAX_BODY_CAP:I

    invoke-direct {p0}, Lcom/samsung/android/rapidmomentengine/engines/EngineBodyPose;->GET_ARC_HT_BODY_POINT_NUM()I

    move-result p0

    sput p0, Lcom/samsung/android/rapidmomentengine/engines/EngineBodyPose;->ARC_HT_BODY_POINT_NUM:I

    return-void
.end method

.method public isEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/rapidmomentengine/engines/EngineBodyPose;->mEngineEnabled:Z

    return p0
.end method

.method public isSimilar(Lcom/samsung/android/rapidmomentengine/data/ResultInfo;Lcom/samsung/android/rapidmomentengine/data/ResultInfo;)Z
    .locals 21

    move-object/from16 v0, p0

    sget-object v1, Lcom/samsung/android/rapidmomentengine/engines/EngineBodyPose;->TAG:Ljava/lang/String;

    const-string v2, "isSimilar E"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v2, p1

    iget-object v2, v2, Lcom/samsung/android/rapidmomentengine/data/ResultInfo;->bodyPointsList:Ljava/util/List;

    move-object/from16 v3, p2

    iget-object v3, v3, Lcom/samsung/android/rapidmomentengine/data/ResultInfo;->bodyPointsList:Ljava/util/List;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "rdebug: body point list size"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "rdebug: body point ssize"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v6, 0x0

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/graphics/Point;

    array-length v7, v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/graphics/Point;

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {v0, v2}, Lcom/samsung/android/rapidmomentengine/engines/EngineBodyPose;->getTorsoLength(Ljava/util/List;)D

    move-result-wide v4

    invoke-direct {v0, v3}, Lcom/samsung/android/rapidmomentengine/engines/EngineBodyPose;->getTorsoLength(Ljava/util/List;)D

    move-result-wide v7

    add-double/2addr v4, v7

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "norm_factor: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    const-wide/16 v9, 0x2

    cmpg-double v7, v7, v9

    if-gez v7, :cond_0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-string v7, "norm_factor=0, resetting to 1 to prevent DIV0."

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v7, 0x3

    new-array v8, v7, [I

    fill-array-data v8, :array_0

    invoke-direct {v0, v2, v3, v8}, Lcom/samsung/android/rapidmomentengine/engines/EngineBodyPose;->getPointDist(Ljava/util/List;Ljava/util/List;[I)D

    move-result-wide v8

    div-double/2addr v8, v4

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Right Leg: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array v10, v7, [I

    fill-array-data v10, :array_1

    invoke-direct {v0, v2, v3, v10}, Lcom/samsung/android/rapidmomentengine/engines/EngineBodyPose;->getPointDist(Ljava/util/List;Ljava/util/List;[I)D

    move-result-wide v10

    div-double/2addr v10, v4

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Left Leg: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v1, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v12, 0x2

    new-array v13, v12, [I

    fill-array-data v13, :array_2

    invoke-direct {v0, v2, v3, v13}, Lcom/samsung/android/rapidmomentengine/engines/EngineBodyPose;->getPointDist(Ljava/util/List;Ljava/util/List;[I)D

    move-result-wide v13

    div-double/2addr v13, v4

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Torso: "

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13, v14}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array v6, v12, [I

    fill-array-data v6, :array_3

    invoke-direct {v0, v2, v3, v6}, Lcom/samsung/android/rapidmomentengine/engines/EngineBodyPose;->getPointDist(Ljava/util/List;Ljava/util/List;[I)D

    move-result-wide v15

    move-wide/from16 v17, v8

    div-double v7, v15, v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Head: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x3

    new-array v9, v6, [I

    fill-array-data v9, :array_4

    invoke-direct {v0, v2, v3, v9}, Lcom/samsung/android/rapidmomentengine/engines/EngineBodyPose;->getPointDist(Ljava/util/List;Ljava/util/List;[I)D

    move-result-wide v15

    move-wide/from16 v19, v7

    div-double v6, v15, v4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Right Hand: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x3

    new-array v8, v8, [I

    fill-array-data v8, :array_5

    invoke-direct {v0, v2, v3, v8}, Lcom/samsung/android/rapidmomentengine/engines/EngineBodyPose;->getPointDist(Ljava/util/List;Ljava/util/List;[I)D

    move-result-wide v2

    div-double/2addr v2, v4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Left Hand: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-double v8, v17, v10

    add-double v8, v8, v19

    add-double/2addr v8, v6

    add-double/2addr v8, v2

    add-double/2addr v8, v13

    const/4 v0, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Total Body: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide v4, 0x3fe999999999999aL    # 0.8

    cmpl-double v12, v17, v4

    if-gtz v12, :cond_2

    cmpl-double v10, v10, v4

    if-gtz v10, :cond_2

    const-wide v10, 0x3fdccccccccccccdL    # 0.45

    cmpl-double v10, v19, v10

    if-gtz v10, :cond_2

    cmpl-double v6, v6, v4

    if-gtz v6, :cond_2

    cmpl-double v2, v2, v4

    if-gtz v2, :cond_2

    const-wide v2, 0x400199999999999aL    # 2.2

    cmpl-double v2, v8, v2

    if-lez v2, :cond_1

    goto :goto_0

    :cond_1
    move v6, v0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v6, 0x0

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSimilar X: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
    .end array-data

    :array_1
    .array-data 4
        0x5
        0x4
        0x3
    .end array-data

    :array_2
    .array-data 4
        0x6
        0x7
    .end array-data

    :array_3
    .array-data 4
        0x8
        0x9
    .end array-data

    :array_4
    .array-data 4
        0xc
        0xb
        0xa
    .end array-data

    :array_5
    .array-data 4
        0xd
        0xe
        0xf
    .end array-data
.end method

.method public process(Lcom/samsung/android/rapidmomentengine/data/FrameData;)Lcom/samsung/android/rapidmomentengine/data/ResultInfo;
    .locals 10

    sget-object v0, Lcom/samsung/android/rapidmomentengine/engines/EngineBodyPose;->TAG:Ljava/lang/String;

    const-string v1, "process E"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/samsung/android/rapidmomentengine/engines/EngineBodyPose;->mEngineEnabled:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    new-instance v1, Lcom/samsung/android/rapidmomentengine/data/ResultInfo;

    invoke-direct {v1}, Lcom/samsung/android/rapidmomentengine/data/ResultInfo;-><init>()V

    iget v3, p0, Lcom/samsung/android/rapidmomentengine/engines/EngineBodyPose;->mSkipCounter:I

    if-eqz v3, :cond_1

    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/samsung/android/rapidmomentengine/engines/EngineBodyPose;->mBodyPointsListCached:Ljava/util/List;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, v1, Lcom/samsung/android/rapidmomentengine/data/ResultInfo;->bodyPointsList:Ljava/util/List;

    iget p1, p0, Lcom/samsung/android/rapidmomentengine/engines/EngineBodyPose;->mSkipCounter:I

    add-int/lit8 p1, p1, 0x1

    rem-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/samsung/android/rapidmomentengine/engines/EngineBodyPose;->mSkipCounter:I

    return-object v1

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/rapidmomentengine/data/FrameData;->getByteArrayNV21()[B

    move-result-object v3

    if-eqz v3, :cond_2

    const-string v2, "process Input array NOT null"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/samsung/android/rapidmomentengine/data/FrameData;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/android/rapidmomentengine/data/FrameData;->getHeight()I

    move-result p1

    invoke-direct {p0, v3, v0, p1}, Lcom/samsung/android/rapidmomentengine/engines/EngineBodyPose;->HTRunDirectBuffer([BII)[I

    move-result-object v2

    goto :goto_0

    :cond_2
    const-string p1, "process Input array IS null"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    move v3, v0

    :goto_1
    sget v4, Lcom/samsung/android/rapidmomentengine/engines/EngineBodyPose;->MAX_BODY_CAP:I

    if-ge v3, v4, :cond_6

    if-nez v2, :cond_3

    sget-object v0, Lcom/samsung/android/rapidmomentengine/engines/EngineBodyPose;->TAG:Ljava/lang/String;

    const-string v2, "Body Points array IS null"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_3
    sget v4, Lcom/samsung/android/rapidmomentengine/engines/EngineBodyPose;->ARC_HT_BODY_POINT_NUM:I

    mul-int v5, v3, v4

    mul-int/lit8 v5, v5, 0x2

    aget v5, v2, v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_4

    mul-int v5, v3, v4

    mul-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, 0x1

    aget v5, v2, v5

    if-ne v5, v6, :cond_4

    goto :goto_3

    :cond_4
    new-array v4, v4, [Landroid/graphics/Point;

    move v5, v0

    :goto_2
    sget v6, Lcom/samsung/android/rapidmomentengine/engines/EngineBodyPose;->ARC_HT_BODY_POINT_NUM:I

    if-ge v5, v6, :cond_5

    new-instance v6, Landroid/graphics/Point;

    sget v7, Lcom/samsung/android/rapidmomentengine/engines/EngineBodyPose;->ARC_HT_BODY_POINT_NUM:I

    mul-int v8, v3, v7

    mul-int/lit8 v9, v5, 0x2

    add-int/2addr v8, v9

    aget v8, v2, v8

    mul-int/2addr v7, v3

    add-int/2addr v7, v9

    add-int/lit8 v7, v7, 0x1

    aget v7, v2, v7

    invoke-direct {v6, v8, v7}, Landroid/graphics/Point;-><init>(II)V

    aput-object v6, v4, v5

    aget-object v6, v4, v5

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_5
    iget-object v5, v1, Lcom/samsung/android/rapidmomentengine/data/ResultInfo;->bodyPointsList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    :goto_3
    sget-object v0, Lcom/samsung/android/rapidmomentengine/engines/EngineBodyPose;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bodyPointsStr: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, v1, Lcom/samsung/android/rapidmomentengine/data/ResultInfo;->bodyPointsList:Ljava/util/List;

    iput-object p1, p0, Lcom/samsung/android/rapidmomentengine/engines/EngineBodyPose;->mBodyPointsListCached:Ljava/util/List;

    iget p1, p0, Lcom/samsung/android/rapidmomentengine/engines/EngineBodyPose;->mSkipCounter:I

    add-int/lit8 p1, p1, 0x1

    rem-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/samsung/android/rapidmomentengine/engines/EngineBodyPose;->mSkipCounter:I

    const-string p0, "process X"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method
