.class Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$ProcessRequestCollectionTracker;
.super Ljava/lang/Object;
.source "PostProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProcessRequestCollectionTracker"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$ProcessRequestCollectionTracker$CollectionTrackInfo;
    }
.end annotation


# instance fields
.field private final mCollectStatus:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$ProcessRequestCollectionTracker$CollectionTrackInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$ProcessRequestCollectionTracker;->mCollectStatus:Landroid/util/SparseArray;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$ProcessRequestCollectionTracker;-><init>()V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$ProcessRequestCollectionTracker;Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$ProcessRequestCollectionTracker;->trackAndCheckIfCollected(Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest;)Z

    move-result p0

    return p0
.end method

.method private declared-synchronized trackAndCheckIfCollected(Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "processRequest"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest<",
            "*>;)Z"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$ProcessRequestCollectionTracker;->mCollectStatus:Landroid/util/SparseArray;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest;->getSequenceId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$ProcessRequestCollectionTracker$CollectionTrackInfo;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$ProcessRequestCollectionTracker$CollectionTrackInfo;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest;->getTotalProcessCount()I

    move-result v2

    add-int/2addr v2, v1

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$ProcessRequestCollectionTracker$CollectionTrackInfo;-><init>(ILcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$1;)V

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$ProcessRequestCollectionTracker;->mCollectStatus:Landroid/util/SparseArray;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest;->getSequenceId()I

    move-result v3

    invoke-virtual {v2, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$2;->$SwitchMap$com$samsung$android$app$galaxyraw$core2$processor$ProcessRequest$Usage:[I

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest;->getUsage()Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest$Usage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest$Usage;->ordinal()I

    move-result v3

    aget v2, v2, v3

    if-eq v2, v1, :cond_3

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    const/4 v1, 0x3

    if-eq v2, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$ProcessRequestCollectionTracker$CollectionTrackInfo;->access$1400(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$ProcessRequestCollectionTracker$CollectionTrackInfo;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest;->getTotalProcessCount()I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$ProcessRequestCollectionTracker$CollectionTrackInfo;->access$1300(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$ProcessRequestCollectionTracker$CollectionTrackInfo;I)V

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest;->discardErrorUsage()V

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest;->getCurrentProcessCount()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-static {v0, v2}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$ProcessRequestCollectionTracker$CollectionTrackInfo;->access$1300(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$ProcessRequestCollectionTracker$CollectionTrackInfo;I)V

    goto :goto_0

    :cond_3
    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest;->getTotalProcessCount()I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$ProcessRequestCollectionTracker$CollectionTrackInfo;->access$1300(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$ProcessRequestCollectionTracker$CollectionTrackInfo;I)V

    :cond_4
    :goto_0
    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$ProcessRequestCollectionTracker$CollectionTrackInfo;->access$1500(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$ProcessRequestCollectionTracker$CollectionTrackInfo;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$ProcessRequestCollectionTracker;->mCollectStatus:Landroid/util/SparseArray;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest;->getSequenceId()I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
