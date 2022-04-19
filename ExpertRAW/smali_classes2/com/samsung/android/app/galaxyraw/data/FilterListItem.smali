.class public Lcom/samsung/android/app/galaxyraw/data/FilterListItem;
.super Ljava/lang/Object;
.source "FilterListItem.java"


# instance fields
.field private mFilterThumbnail:Landroid/graphics/Bitmap;

.field private mIsSelected:Z

.field private final mResourceIdSet:Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$FilterResourceIdSet;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$FilterResourceIdSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resourceIdSet"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/data/FilterListItem;->mFilterThumbnail:Landroid/graphics/Bitmap;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/data/FilterListItem;->mResourceIdSet:Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$FilterResourceIdSet;

    return-void
.end method

.method static synthetic lambda$getCommandId$0(Ljava/util/concurrent/atomic/AtomicReference;Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$FilterResourceIdSet;)V
    .locals 0

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$FilterResourceIdSet;->getCommandId()Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$getFilterDBId$1(Ljava/util/concurrent/atomic/AtomicInteger;Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$FilterResourceIdSet;)V
    .locals 0

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$FilterResourceIdSet;->getDBId()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method static synthetic lambda$getFilterThumbnail$2(Ljava/util/concurrent/atomic/AtomicReference;Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$FilterResourceIdSet;)V
    .locals 0

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$FilterResourceIdSet;->getFilterThumbnail()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$getLibName$3(Ljava/util/concurrent/atomic/AtomicReference;Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$FilterResourceIdSet;)V
    .locals 0

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$FilterResourceIdSet;->getLibName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$getName$4(Ljava/util/concurrent/atomic/AtomicReference;Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$FilterResourceIdSet;)V
    .locals 0

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$FilterResourceIdSet;->getFilterName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$getPackageName$5(Ljava/util/concurrent/atomic/AtomicReference;Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$FilterResourceIdSet;)V
    .locals 0

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$FilterResourceIdSet;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$getTitle$6(Ljava/util/concurrent/atomic/AtomicReference;Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$FilterResourceIdSet;)V
    .locals 0

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$FilterResourceIdSet;->getFilterTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$getVendorName$7(Ljava/util/concurrent/atomic/AtomicReference;Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$FilterResourceIdSet;)V
    .locals 0

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$FilterResourceIdSet;->getVendorName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getCommandId()Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EMPTY:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/data/FilterListItem;->mResourceIdSet:Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$FilterResourceIdSet;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/data/-$$Lambda$FilterListItem$JiCL-kBHod43PdgeLfQo57hQ7x4;

    invoke-direct {v1, v0}, Lcom/samsung/android/app/galaxyraw/data/-$$Lambda$FilterListItem$JiCL-kBHod43PdgeLfQo57hQ7x4;-><init>(Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-virtual {p0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    return-object p0
.end method

.method public getFilterDBId()I
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/data/FilterListItem;->mResourceIdSet:Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$FilterResourceIdSet;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/data/-$$Lambda$FilterListItem$XFtFKxcERT4oXuDNkL-MclMMmys;

    invoke-direct {v1, v0}, Lcom/samsung/android/app/galaxyraw/data/-$$Lambda$FilterListItem$XFtFKxcERT4oXuDNkL-MclMMmys;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;)V

    invoke-virtual {p0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    return p0
.end method

.method public getFilterThumbnail()Landroid/graphics/Bitmap;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/data/FilterListItem;->mFilterThumbnail:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/data/FilterListItem;->mResourceIdSet:Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$FilterResourceIdSet;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/data/-$$Lambda$FilterListItem$NoazQvWb25aWaANkM4GxNCFrKWI;

    invoke-direct {v1, v0}, Lcom/samsung/android/app/galaxyraw/data/-$$Lambda$FilterListItem$NoazQvWb25aWaANkM4GxNCFrKWI;-><init>(Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-virtual {p0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Bitmap;

    return-object p0

    :cond_0
    return-object v0
.end method

.method public getLibName()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/data/FilterListItem;->mResourceIdSet:Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$FilterResourceIdSet;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/data/-$$Lambda$FilterListItem$wZ-3ldCUctvAfxg1QlzIHq0s8LI;

    invoke-direct {v1, v0}, Lcom/samsung/android/app/galaxyraw/data/-$$Lambda$FilterListItem$wZ-3ldCUctvAfxg1QlzIHq0s8LI;-><init>(Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-virtual {p0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/data/FilterListItem;->mResourceIdSet:Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$FilterResourceIdSet;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/data/-$$Lambda$FilterListItem$tpqGdmDimUDDarM3iLH-H4p3IsY;

    invoke-direct {v1, v0}, Lcom/samsung/android/app/galaxyraw/data/-$$Lambda$FilterListItem$tpqGdmDimUDDarM3iLH-H4p3IsY;-><init>(Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-virtual {p0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/data/FilterListItem;->mResourceIdSet:Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$FilterResourceIdSet;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/data/-$$Lambda$FilterListItem$M_88vNn8yTG8dArCxYKBrJsL9tA;

    invoke-direct {v1, v0}, Lcom/samsung/android/app/galaxyraw/data/-$$Lambda$FilterListItem$M_88vNn8yTG8dArCxYKBrJsL9tA;-><init>(Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-virtual {p0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/data/FilterListItem;->mResourceIdSet:Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$FilterResourceIdSet;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/data/-$$Lambda$FilterListItem$ADWSpJGtMtCYyVO_S2SQutEpmH8;

    invoke-direct {v1, v0}, Lcom/samsung/android/app/galaxyraw/data/-$$Lambda$FilterListItem$ADWSpJGtMtCYyVO_S2SQutEpmH8;-><init>(Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-virtual {p0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getVendorName()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/data/FilterListItem;->mResourceIdSet:Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$FilterResourceIdSet;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/data/-$$Lambda$FilterListItem$UbbcHMcqjHkW5imLeABdAmqP6Ro;

    invoke-direct {v1, v0}, Lcom/samsung/android/app/galaxyraw/data/-$$Lambda$FilterListItem$UbbcHMcqjHkW5imLeABdAmqP6Ro;-><init>(Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-virtual {p0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public isFilterDownloadItem()Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/data/FilterListItem;->getCommandId()Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FILTER_DOWNLOAD:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isFilterItem()Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/data/FilterListItem;->getCommandId()Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FILTER:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/data/FilterListItem;->getCommandId()Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->MY_FILTER:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isInvisibleFilterListItem()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isPreloadFilter()Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/data/FilterListItem;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/data/FilterListItem;->getLibName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterStorage;->isPreloadFilter(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/data/FilterListItem;->getCommandId()Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FILTER:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSelected()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/app/galaxyraw/data/FilterListItem;->mIsSelected:Z

    return p0
.end method

.method public setFilterThumbnail(Landroid/graphics/Bitmap;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "thumbnailBitmap"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/data/FilterListItem;->mFilterThumbnail:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setSelected(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isSelected"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/data/FilterListItem;->mIsSelected:Z

    return-void
.end method
