.class public Lcom/samsung/android/app/galaxyraw/core2/util/StreamConfigUtils;
.super Ljava/lang/Object;
.source "StreamConfigUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDistinctRawStreamConfigs(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rawStreamConfigCandidateList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$RawStreamConfig;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$RawStreamConfig;",
            ">;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$RawStreamConfig;

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->distinct()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$StreamConfigUtils$JZSX73Kj45GEKdbnGklJGItjJ2Y;

    invoke-direct {v1, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$StreamConfigUtils$JZSX73Kj45GEKdbnGklJGItjJ2Y;-><init>(Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$RawStreamConfig;)V

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {v0}, Ljava/util/stream/Stream;->of(Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {v0, p0}, Ljava/util/stream/Stream;->concat(Ljava/util/stream/Stream;Ljava/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public static getFirstOverFitRawStreamConfig(Ljava/util/List;Landroid/util/Size;)Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$RawStreamConfig;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "sourceStreamConfigList",
            "baseSize"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$RawStreamConfig;",
            ">;",
            "Landroid/util/Size;",
            ")",
            "Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$RawStreamConfig;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$StreamConfigUtils$5fw5ZoyUy3hJpo8blqWPkBDkf7k;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$StreamConfigUtils$5fw5ZoyUy3hJpo8blqWPkBDkf7k;-><init>(Landroid/util/Size;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$RawStreamConfig;

    return-object p0
.end method

.method static synthetic lambda$getDistinctRawStreamConfigs$1(Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$RawStreamConfig;Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$RawStreamConfig;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$RawStreamConfig;->getSize()Landroid/util/Size;

    move-result-object p0

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$RawStreamConfig;->getSize()Landroid/util/Size;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method static synthetic lambda$getFirstOverFitRawStreamConfig$0(Landroid/util/Size;Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$RawStreamConfig;)Z
    .locals 2

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$RawStreamConfig;->getSize()Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$RawStreamConfig;->getSize()Landroid/util/Size;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v1

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    if-lt p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
