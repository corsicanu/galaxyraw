.class public Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Builder;
.super Ljava/lang/Object;
.source "SemCameraParameter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final mParametersMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Key<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Builder;->mParametersMap:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized build()Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter;
    .locals 9

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Builder;->mParametersMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    instance-of v4, v3, Landroid/util/Pair;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x2

    if-eqz v4, :cond_1

    const-string v4, "%s=%s,%s;"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Key;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Key;->getKey()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v8, v6

    move-object v2, v3

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    aput-object v2, v8, v5

    check-cast v3, Landroid/util/Pair;

    iget-object v2, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    aput-object v2, v8, v7

    invoke-static {v4, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string v4, "%s=%s;"

    new-array v7, v7, [Ljava/lang/Object;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Key;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Key;->getKey()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v6

    invoke-static {v3}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v5

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter;-><init>(Ljava/lang/String;Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getParameter(Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Key;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Key<",
            "TT;>;)TT;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Builder;->mParametersMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setParameter(Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Key;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Key<",
            "TT;>;TT;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Builder;->mParametersMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
