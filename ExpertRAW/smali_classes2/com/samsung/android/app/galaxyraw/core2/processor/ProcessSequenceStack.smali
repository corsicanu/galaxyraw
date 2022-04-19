.class public Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessSequenceStack;
.super Ljava/lang/Object;
.source "ProcessSequenceStack.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessSequenceStack$Sequence;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequestImpl;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;


# instance fields
.field private mCurrentSequence:Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessSequenceStack$Sequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessSequenceStack$Sequence<",
            "TE;>;"
        }
    .end annotation
.end field

.field private final mSequenceStackMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessSequenceStack$Sequence<",
            "TE;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-class v1, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessSequenceStack;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessSequenceStack;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessSequenceStack;->mSequenceStackMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method declared-synchronized add(Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequestImpl;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "e"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessSequenceStack;->mSequenceStackMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequestImpl;->getSequenceId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessSequenceStack$Sequence;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessSequenceStack$Sequence;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequestImpl;->getSequenceId()I

    move-result v1

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequestImpl;->getTotalProcessCount()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessSequenceStack$Sequence;-><init>(IILcom/samsung/android/app/galaxyraw/core2/processor/ProcessSequenceStack$1;)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessSequenceStack;->mSequenceStackMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequestImpl;->getSequenceId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessSequenceStack$Sequence;->add(Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequestImpl;)Z

    sget-object p1, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessSequenceStack;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v1, "PostProcessThread add - element(sequenceId %d, add/total count %d/%d)"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessSequenceStack$Sequence;->access$100(Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessSequenceStack$Sequence;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessSequenceStack$Sequence;->access$200(Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessSequenceStack$Sequence;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessSequenceStack$Sequence;->access$300(Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessSequenceStack$Sequence;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {p1, v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized get(I)Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessSequenceStack$Sequence;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessSequenceStack$Sequence<",
            "TE;>;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessSequenceStack;->mSequenceStackMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    monitor-exit p0

    return-object p1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessSequenceStack;->mSequenceStackMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    aget-object p1, v0, p1

    check-cast p1, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessSequenceStack$Sequence;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized isEmpty()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessSequenceStack;->mSequenceStackMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

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

.method declared-synchronized lengthOfSequences()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessSequenceStack;->mSequenceStackMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

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

.method declared-synchronized poll()Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequestImpl;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessSequenceStack;->mCurrentSequence:Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessSequenceStack$Sequence;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessSequenceStack;->mSequenceStackMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-object v2

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessSequenceStack;->mSequenceStackMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessSequenceStack;->mSequenceStackMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    sub-int/2addr v3, v1

    aget-object v0, v0, v3

    check-cast v0, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessSequenceStack$Sequence;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessSequenceStack;->mCurrentSequence:Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessSequenceStack$Sequence;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessSequenceStack;->mCurrentSequence:Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessSequenceStack$Sequence;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessSequenceStack$Sequence;->poll()Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequestImpl;

    move-result-object v0

    sget-object v3, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessSequenceStack;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v4, "PostProcessThread poll - element(sequenceId %d, add %d, poll %d, total %d)"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessSequenceStack;->mCurrentSequence:Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessSequenceStack$Sequence;

    invoke-static {v7}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessSequenceStack$Sequence;->access$100(Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessSequenceStack$Sequence;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    iget-object v6, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessSequenceStack;->mCurrentSequence:Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessSequenceStack$Sequence;

    invoke-static {v6}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessSequenceStack$Sequence;->access$200(Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessSequenceStack$Sequence;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    const/4 v1, 0x2

    iget-object v6, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessSequenceStack;->mCurrentSequence:Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessSequenceStack$Sequence;

    invoke-static {v6}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessSequenceStack$Sequence;->access$400(Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessSequenceStack$Sequence;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    const/4 v1, 0x3

    iget-object v6, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessSequenceStack;->mCurrentSequence:Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessSequenceStack$Sequence;

    invoke-static {v6}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessSequenceStack$Sequence;->access$300(Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessSequenceStack$Sequence;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v3, v4, v5}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessSequenceStack;->mCurrentSequence:Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessSequenceStack$Sequence;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessSequenceStack$Sequence;->access$500(Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessSequenceStack$Sequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessSequenceStack;->mSequenceStackMap:Ljava/util/Map;

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessSequenceStack;->mCurrentSequence:Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessSequenceStack$Sequence;

    invoke-static {v3}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessSequenceStack$Sequence;->access$100(Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessSequenceStack$Sequence;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessSequenceStack;->mCurrentSequence:Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessSequenceStack$Sequence;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setForcedCurrentSequenceComplete()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessSequenceStack;->mCurrentSequence:Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessSequenceStack$Sequence;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessSequenceStack;->mSequenceStackMap:Ljava/util/Map;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessSequenceStack$Sequence;->access$100(Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessSequenceStack$Sequence;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessSequenceStack;->mCurrentSequence:Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessSequenceStack$Sequence;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized size()I
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessSequenceStack;->mSequenceStackMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessSequenceStack$Sequence;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessSequenceStack$Sequence;->size()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr v0, v2

    goto :goto_0

    :cond_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
