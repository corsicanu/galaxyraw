.class public Lcom/samsung/android/rapidmomentengine/engines/EngineManager;
.super Ljava/lang/Object;
.source "EngineManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "EngineManager"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static filterEngines(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/rapidmomentengine/engines/EngineInterface;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/rapidmomentengine/engines/EngineInterface;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/rapidmomentengine/engines/EngineInterface;

    invoke-virtual {v1}, Lcom/samsung/android/rapidmomentengine/engines/EngineInterface;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getAllEngines()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/rapidmomentengine/engines/EngineInterface;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/rapidmomentengine/engines/EngineManager;->TAG:Ljava/lang/String;

    const-string v1, "getAllEngines:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/samsung/android/rapidmomentengine/engines/EngineManager;->getEnginesForA()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-static {}, Lcom/samsung/android/rapidmomentengine/engines/EngineManager;->getEnginesForB()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public static getEnginesByMode(I)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/rapidmomentengine/engines/EngineInterface;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {}, Lcom/samsung/android/rapidmomentengine/engines/EngineManager;->getAllEngines()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {}, Lcom/samsung/android/rapidmomentengine/engines/EngineManager;->getEnginesForB()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-static {}, Lcom/samsung/android/rapidmomentengine/engines/EngineManager;->getEnginesForA()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method private static getEnginesForA()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/rapidmomentengine/engines/EngineInterface;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/samsung/android/rapidmomentengine/engines/EngineBlur;

    invoke-direct {v1}, Lcom/samsung/android/rapidmomentengine/engines/EngineBlur;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/rapidmomentengine/engines/EngineDID;

    invoke-direct {v1}, Lcom/samsung/android/rapidmomentengine/engines/EngineDID;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private static getEnginesForB()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/rapidmomentengine/engines/EngineInterface;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/rapidmomentengine/engines/EngineManager;->TAG:Ljava/lang/String;

    const-string v1, "getEnginesForB:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/samsung/android/rapidmomentengine/engines/EngineColorfulness;

    invoke-direct {v1}, Lcom/samsung/android/rapidmomentengine/engines/EngineColorfulness;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/rapidmomentengine/engines/EngineFaceProcessor;

    invoke-direct {v1}, Lcom/samsung/android/rapidmomentengine/engines/EngineFaceProcessor;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/rapidmomentengine/engines/EngineAiDID;

    invoke-direct {v1}, Lcom/samsung/android/rapidmomentengine/engines/EngineAiDID;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static getEnginesIndicesByMode(I)[I
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {}, Lcom/samsung/android/rapidmomentengine/engines/EngineManager;->getIndicesForFull()[I

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {}, Lcom/samsung/android/rapidmomentengine/engines/EngineManager;->getIndicesForB()[I

    move-result-object p0

    return-object p0

    :cond_2
    invoke-static {}, Lcom/samsung/android/rapidmomentengine/engines/EngineManager;->getIndicesForA()[I

    move-result-object p0

    return-object p0
.end method

.method private static getIndicesForA()[I
    .locals 3

    sget-object v0, Lcom/samsung/android/rapidmomentengine/engines/EngineManager;->TAG:Ljava/lang/String;

    const-string v1, "getEnginesForA:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput v1, v0, v2

    const/4 v1, 0x2

    aput v2, v0, v1

    return-object v0

    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method private static getIndicesForB()[I
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    const/4 v1, 0x3

    const/4 v2, 0x0

    aput v2, v0, v1

    const/4 v1, 0x4

    const/4 v2, 0x1

    aput v2, v0, v1

    const/4 v1, 0x5

    const/4 v2, 0x2

    aput v2, v0, v1

    return-object v0

    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method private static getIndicesForFull()[I
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput v1, v0, v2

    const/4 v1, 0x2

    aput v2, v0, v1

    const/4 v2, 0x3

    aput v1, v0, v2

    const/4 v1, 0x4

    aput v2, v0, v1

    const/4 v2, 0x5

    aput v1, v0, v2

    return-object v0

    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method
