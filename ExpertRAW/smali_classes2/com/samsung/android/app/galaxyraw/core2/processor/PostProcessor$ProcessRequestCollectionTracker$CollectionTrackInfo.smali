.class Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$ProcessRequestCollectionTracker$CollectionTrackInfo;
.super Ljava/lang/Object;
.source "PostProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$ProcessRequestCollectionTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CollectionTrackInfo"
.end annotation


# instance fields
.field private final mCollectionChecker:Ljava/util/BitSet;

.field private final mCollectionCount:I


# direct methods
.method private constructor <init>(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "collectionCount"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$ProcessRequestCollectionTracker$CollectionTrackInfo;->mCollectionCount:I

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, p1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$ProcessRequestCollectionTracker$CollectionTrackInfo;->mCollectionChecker:Ljava/util/BitSet;

    return-void
.end method

.method synthetic constructor <init>(ILcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$ProcessRequestCollectionTracker$CollectionTrackInfo;-><init>(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$ProcessRequestCollectionTracker$CollectionTrackInfo;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$ProcessRequestCollectionTracker$CollectionTrackInfo;->collect(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$ProcessRequestCollectionTracker$CollectionTrackInfo;)Z
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$ProcessRequestCollectionTracker$CollectionTrackInfo;->isCollectedExceptLast()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1500(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$ProcessRequestCollectionTracker$CollectionTrackInfo;)Z
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$ProcessRequestCollectionTracker$CollectionTrackInfo;->isCollected()Z

    move-result p0

    return p0
.end method

.method private collect(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "n"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$ProcessRequestCollectionTracker$CollectionTrackInfo;->mCollectionChecker:Ljava/util/BitSet;

    invoke-virtual {p0, p1}, Ljava/util/BitSet;->set(I)V

    return-void
.end method

.method private isCollected()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$ProcessRequestCollectionTracker$CollectionTrackInfo;->mCollectionChecker:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    move-result v0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$ProcessRequestCollectionTracker$CollectionTrackInfo;->mCollectionCount:I

    if-lt v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isCollectedExceptLast()Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$ProcessRequestCollectionTracker$CollectionTrackInfo;->mCollectionChecker:Ljava/util/BitSet;

    iget v1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$ProcessRequestCollectionTracker$CollectionTrackInfo;->mCollectionCount:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Ljava/util/BitSet;->get(II)Ljava/util/BitSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    move-result v0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$ProcessRequestCollectionTracker$CollectionTrackInfo;->mCollectionCount:I

    sub-int/2addr p0, v2

    if-lt v0, p0, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    return v2
.end method
