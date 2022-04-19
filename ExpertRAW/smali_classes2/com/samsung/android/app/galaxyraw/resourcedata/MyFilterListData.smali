.class public Lcom/samsung/android/app/galaxyraw/resourcedata/MyFilterListData;
.super Ljava/lang/Object;
.source "MyFilterListData.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MyFilterListData"


# instance fields
.field private mMyFilterResourceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$FilterResourceIdSet;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/resourcedata/MyFilterListData;->mMyFilterResourceList:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/resourcedata/MyFilterListData;->initMyFilterList()V

    return-void
.end method

.method private declared-synchronized initMyFilterList()V
    .locals 5

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/app/galaxyraw/plugin/PlugInMyFilterStorage;->getMyFilterList()Landroid/util/SparseArray;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/resourcedata/MyFilterListData;->mMyFilterResourceList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/galaxyraw/plugin/PlugInMyFilterStorage$MyFilter;

    invoke-virtual {v3}, Lcom/samsung/android/app/galaxyraw/plugin/PlugInMyFilterStorage$MyFilter;->getCommandId()Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    move-result-object v3

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/app/galaxyraw/plugin/PlugInMyFilterStorage$MyFilter;

    invoke-direct {p0, v3, v4}, Lcom/samsung/android/app/galaxyraw/resourcedata/MyFilterListData;->makeResource(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/plugin/PlugInMyFilterStorage$MyFilter;)Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$FilterResourceIdSet;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private makeResource(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/plugin/PlugInMyFilterStorage$MyFilter;)Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$FilterResourceIdSet;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "commandId",
            "item"
        }
    .end annotation

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    move-result-object p0

    new-instance v0, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$FilterResourceIdSet;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;->getImageResourceId()I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;->getTitleId()I

    move-result p0

    invoke-direct {v0, p1, v1, p0}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$FilterResourceIdSet;-><init>(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;II)V

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/plugin/PlugInMyFilterStorage$MyFilter;->getMyFilterIndex()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$FilterResourceIdSet;->setFilterIndex(I)V

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/plugin/PlugInMyFilterStorage$MyFilter;->getDBId()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$FilterResourceIdSet;->setDBId(I)V

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/plugin/PlugInMyFilterStorage$MyFilter;->getMyFilterTitle()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$FilterResourceIdSet;->setFilterTitle(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/plugin/PlugInMyFilterStorage$MyFilter;->getMyFilterName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$FilterResourceIdSet;->setFilterName(Ljava/lang/String;)V

    sget-object p0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->MY_FILTER:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    if-ne p1, p0, :cond_0

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/plugin/PlugInMyFilterStorage$MyFilter;->getMyFilterThumbnail()[B

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/plugin/PlugInMyFilterStorage$MyFilter;->getMyFilterThumbnail()[B

    move-result-object p2

    array-length p2, p2

    invoke-static {p0, p1, p2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$FilterResourceIdSet;->setFilterThumbnail(Landroid/graphics/Bitmap;)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 2

    const-string v0, "MyFilterListData"

    const-string v1, "clear"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/resourcedata/MyFilterListData;->mMyFilterResourceList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public getMyFilterResourceList()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$FilterResourceIdSet;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/resourcedata/MyFilterListData;->mMyFilterResourceList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public refreshResource()V
    .locals 2

    const-string v0, "MyFilterListData"

    const-string v1, "refreshResource"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/resourcedata/MyFilterListData;->mMyFilterResourceList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/resourcedata/MyFilterListData;->initMyFilterList()V

    return-void
.end method
