.class public Lcom/samsung/android/app/galaxyraw/core2/util/BasketCollector;
.super Ljava/lang/Object;
.source "BasketCollector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/core2/util/BasketCollector$Item;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;


# instance fields
.field private mBasketCount:I

.field private final mBasketFormat:I

.field private final mBasketItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/galaxyraw/core2/util/BasketCollector$Item;",
            ">;"
        }
    .end annotation
.end field

.field private mLastBasketData:Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-class v1, Lcom/samsung/android/app/galaxyraw/core2/util/BasketCollector;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/util/BasketCollector;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "basketFormat",
            "basketCount"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BasketCollector;->mBasketItemList:Ljava/util/List;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/util/BasketCollector;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils;->toImageFormatString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "BasketCollector - basketFormat(%s), basketCount(%d)"

    invoke-static {v0, v2, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BasketCollector;->mBasketFormat:I

    iput p2, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BasketCollector;->mBasketCount:I

    return-void
.end method

.method private declared-synchronized collectBasket(Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;",
            ")",
            "Ljava/util/Map<",
            "Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/galaxyraw/core2/util/BasketCollector$Item;",
            ">;>;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BasketCollector;->mBasketCount:I

    if-eqz v0, :cond_1

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BasketCollector;->mBasketCount:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/core2/util/BasketCollector;->isAllItemsArrived()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->capacity()I

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->getImageInfo()Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->allocate(ILcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;)Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BasketCollector;->mLastBasketData:Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->put(Lcom/samsung/android/app/galaxyraw/core2/util/BufferBase;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BasketCollector;->mLastBasketData:Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->rewind()V

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->rewind()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    monitor-exit p0

    return-object p1

    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BasketCollector;->mBasketItemList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$BasketCollector$5ykCxR9DQVNAZ4rtbj9hw1WRdMc;->INSTANCE:Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$BasketCollector$5ykCxR9DQVNAZ4rtbj9hw1WRdMc;

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$BasketCollector$H6etiYo44Nvadw9y4L2pMzmMkgM;->INSTANCE:Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$BasketCollector$H6etiYo44Nvadw9y4L2pMzmMkgM;

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$BasketCollector$PhKAJIbpl9j7OAnwkSRhkoxmVhk;

    invoke-direct {v2, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$BasketCollector$PhKAJIbpl9j7OAnwkSRhkoxmVhk;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    invoke-static {p1, v0}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_1
    :try_start_2
    new-instance p1, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;

    const-string v0, "collectBasket is failed - All baskets is already returned"

    invoke-direct {p1, v0}, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized collectItem(ILcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "format",
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;",
            ")",
            "Ljava/util/Map<",
            "Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/galaxyraw/core2/util/BasketCollector$Item;",
            ">;>;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/core2/util/BasketCollector;->isAllItemsArrived()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->capacity()I

    move-result v0

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->getImageInfo()Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->allocate(ILcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;)Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->put(Lcom/samsung/android/app/galaxyraw/core2/util/BufferBase;)V

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->rewind()V

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->rewind()V

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BasketCollector;->mBasketItemList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v1, Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$BasketCollector$TIEdpocZW2Fy7u7HEo3i9cI1HzA;

    invoke-direct {v1, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$BasketCollector$TIEdpocZW2Fy7u7HEo3i9cI1HzA;-><init>(I)V

    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    sget-object p2, Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$BasketCollector$YsU6CxghTifpL3UiPT2mrmbv65E;->INSTANCE:Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$BasketCollector$YsU6CxghTifpL3UiPT2mrmbv65E;

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$BasketCollector$_ZYhMgPNYcAts95kh_r0ntBpMBY;

    invoke-direct {p2, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$BasketCollector$_ZYhMgPNYcAts95kh_r0ntBpMBY;-><init>(Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;)V

    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/core2/util/BasketCollector;->isAllItemsArrived()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BasketCollector;->mLastBasketData:Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BasketCollector;->mBasketItemList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    sget-object p2, Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$BasketCollector$zkXbfo0UjIl2rhp7R7RsxzBj6QM;->INSTANCE:Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$BasketCollector$zkXbfo0UjIl2rhp7R7RsxzBj6QM;

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BasketCollector;->mLastBasketData:Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;

    invoke-static {p2, p1}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    monitor-exit p0

    return-object p1

    :cond_1
    :try_start_1
    new-instance p1, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;

    const-string p2, "collectItem is failed - All items is already returned"

    invoke-direct {p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized isAllItemsArrived()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BasketCollector;->mBasketItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$BasketCollector$_xQSbN7BqlvQU3JCZLjcovGWttk;->INSTANCE:Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$BasketCollector$_xQSbN7BqlvQU3JCZLjcovGWttk;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic lambda$collectBasket$0(Lcom/samsung/android/app/galaxyraw/core2/util/BasketCollector$Item;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/util/BasketCollector$Item;->getData()Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$collectBasket$1(Lcom/samsung/android/app/galaxyraw/core2/util/BasketCollector$Item;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/util/BasketCollector$Item;->isCollected()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method static synthetic lambda$collectBasket$2(Ljava/util/List;Lcom/samsung/android/app/galaxyraw/core2/util/BasketCollector$Item;)V
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Lcom/samsung/android/app/galaxyraw/core2/util/BasketCollector$Item;->setCollected(Z)V

    return-void
.end method

.method static synthetic lambda$collectItem$3(ILcom/samsung/android/app/galaxyraw/core2/util/BasketCollector$Item;)Z
    .locals 0

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/util/BasketCollector$Item;->getFormat()I

    move-result p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$collectItem$4(Lcom/samsung/android/app/galaxyraw/core2/util/BasketCollector$Item;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/util/BasketCollector$Item;->getData()Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$collectItem$5(Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;Lcom/samsung/android/app/galaxyraw/core2/util/BasketCollector$Item;)V
    .locals 0

    invoke-virtual {p1, p0}, Lcom/samsung/android/app/galaxyraw/core2/util/BasketCollector$Item;->setData(Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;)V

    return-void
.end method

.method static synthetic lambda$collectItem$6(Lcom/samsung/android/app/galaxyraw/core2/util/BasketCollector$Item;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/util/BasketCollector$Item;->isCollected()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method static synthetic lambda$isAllItemsArrived$7(Lcom/samsung/android/app/galaxyraw/core2/util/BasketCollector$Item;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/util/BasketCollector$Item;->getData()Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$release$8(Lcom/samsung/android/app/galaxyraw/core2/util/BasketCollector$Item;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/BasketCollector$Item;->setData(Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized addItem(II)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "itemFormat",
            "itemCount"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/util/BasketCollector;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v1, "BasketCollector - addItem: format(%s), count(%d)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils;->toImageFormatString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    if-ge v4, p2, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BasketCollector;->mBasketItemList:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/core2/util/BasketCollector$Item;

    invoke-direct {v1, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/BasketCollector$Item;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized collect(Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;",
            ")",
            "Ljava/util/Map<",
            "Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/galaxyraw/core2/util/BasketCollector$Item;",
            ">;>;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->getImageInfo()Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->getFormat()I

    move-result v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/util/BasketCollector;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v2, "BasketCollector - collect(%s)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils;->toImageFormatString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BasketCollector;->mBasketFormat:I

    if-ne v1, v0, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/BasketCollector;->collectBasket(Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;)Ljava/util/Map;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_0
    :try_start_1
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/BasketCollector;->collectItem(ILcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;)Ljava/util/Map;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized isDone()Z
    .locals 5

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/util/BasketCollector;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BasketCollector - isDone : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BasketCollector;->mBasketCount:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/core2/util/BasketCollector;->isAllItemsArrived()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->d(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BasketCollector;->mBasketCount:I

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/core2/util/BasketCollector;->isAllItemsArrived()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    monitor-exit p0

    return v3

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized release()V
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/util/BasketCollector;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v1, "BasketCollector - release"

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->d(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BasketCollector;->mBasketCount:I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BasketCollector;->mLastBasketData:Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BasketCollector;->mLastBasketData:Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BasketCollector;->mBasketItemList:Ljava/util/List;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$BasketCollector$dhisw-_rUiOuRs0FR-QE8Wf_ZuM;->INSTANCE:Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$BasketCollector$dhisw-_rUiOuRs0FR-QE8Wf_ZuM;

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BasketCollector;->mBasketItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
