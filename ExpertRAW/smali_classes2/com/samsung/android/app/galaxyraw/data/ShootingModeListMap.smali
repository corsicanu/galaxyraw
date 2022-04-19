.class public Lcom/samsung/android/app/galaxyraw/data/ShootingModeListMap;
.super Ljava/lang/Object;
.source "ShootingModeListMap.java"


# instance fields
.field private final mShootingModeResourceMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "orderString",
            "isMoreEnabled"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/data/ShootingModeListMap;->mShootingModeResourceMap:Landroid/util/SparseArray;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/data/ShootingModeListMap;->resetShootingModeOrder(Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLandroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "orderString",
            "isMoreEnabled",
            "sparseArray"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Landroid/util/SparseArray<",
            "Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/data/ShootingModeListMap;->mShootingModeResourceMap:Landroid/util/SparseArray;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/data/ShootingModeListMap;->resetShootingModeOrder(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic lambda$resetShootingModeOrder$0(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$resetShootingModeOrder$1([Ljava/lang/String;)Z
    .locals 2

    array-length v0, p0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    aget-object v0, p0, v1

    if-eqz v0, :cond_0

    aget-object p0, p0, v1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method static synthetic lambda$resetShootingModeOrder$2([Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x3

    aget-object p0, p0, v0

    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$resetShootingModeOrder$3([Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x1

    aget-object v1, p0, v0

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x2

    aget-object p0, p0, v1

    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method static synthetic lambda$resetShootingModeOrder$4([Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x4

    aget-object p0, p0, v0

    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private resetShootingModeOrder(Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "orderString",
            "isMoreEnabled"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/data/ShootingModeListMap;->mShootingModeResourceMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    const-string v0, ","

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->splitAsStream(Ljava/lang/CharSequence;)Ljava/util/stream/Stream;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/data/-$$Lambda$ShootingModeListMap$IVYUz1yS6K6pqtlNslK4ekzGHbA;->INSTANCE:Lcom/samsung/android/app/galaxyraw/data/-$$Lambda$ShootingModeListMap$IVYUz1yS6K6pqtlNslK4ekzGHbA;

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/data/-$$Lambda$ShootingModeListMap$zzlWnQf_TzIqpw8E5URBDBD-29Y;->INSTANCE:Lcom/samsung/android/app/galaxyraw/data/-$$Lambda$ShootingModeListMap$zzlWnQf_TzIqpw8E5URBDBD-29Y;

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/data/-$$Lambda$ShootingModeListMap$6CaI7HgP2COxu-3eXaG1UGR2VU0;->INSTANCE:Lcom/samsung/android/app/galaxyraw/data/-$$Lambda$ShootingModeListMap$6CaI7HgP2COxu-3eXaG1UGR2VU0;

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/data/-$$Lambda$ShootingModeListMap$ZYx0LDjeRMLetziqqdK3ty0Vg8k;->INSTANCE:Lcom/samsung/android/app/galaxyraw/data/-$$Lambda$ShootingModeListMap$ZYx0LDjeRMLetziqqdK3ty0Vg8k;

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/data/-$$Lambda$ShootingModeListMap$Rc2IS3gD34xUZBgxxHxFNJydeH0;->INSTANCE:Lcom/samsung/android/app/galaxyraw/data/-$$Lambda$ShootingModeListMap$Rc2IS3gD34xUZBgxxHxFNJydeH0;

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/app/galaxyraw/data/-$$Lambda$ShootingModeListMap$2dUXXcRrLqfOyW-Ei0ThjXZFw0U;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/data/-$$Lambda$ShootingModeListMap$2dUXXcRrLqfOyW-Ei0ThjXZFw0U;-><init>(Lcom/samsung/android/app/galaxyraw/data/ShootingModeListMap;)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/data/ShootingModeListMap;->mShootingModeResourceMap:Landroid/util/SparseArray;

    const/16 p1, 0x63

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_MORE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/data/ShootingModeListMap;->mShootingModeResourceMap:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method public getShootingModeResourceMap()Landroid/util/SparseArray;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/data/ShootingModeListMap;->mShootingModeResourceMap:Landroid/util/SparseArray;

    return-object p0
.end method

.method public synthetic lambda$resetShootingModeOrder$5$ShootingModeListMap([Ljava/lang/String;)V
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/data/ShootingModeListMap;->mShootingModeResourceMap:Landroid/util/SparseArray;

    const/4 v0, 0x5

    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    aget-object p1, p1, v1

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->valueOf(Ljava/lang/String;)Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method
