.class Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$ProcessCallbackSequencer;
.super Ljava/lang/Object;
.source "PostProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProcessCallbackSequencer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$ProcessCallbackSequencer$SequenceCondition;
    }
.end annotation


# instance fields
.field private final mSequenceConditions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$ProcessCallbackSequencer$SequenceCondition;",
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

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$ProcessCallbackSequencer;->mSequenceConditions:Landroid/util/SparseArray;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$ProcessCallbackSequencer;-><init>()V

    return-void
.end method

.method static synthetic access$2500(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$ProcessCallbackSequencer;ILcom/samsung/android/app/galaxyraw/core2/processor/ProcessCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$ProcessCallbackSequencer;->forwardCallbackByDraftImageSkipped(ILcom/samsung/android/app/galaxyraw/core2/processor/ProcessCallback;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$ProcessCallbackSequencer;ILandroid/net/Uri;Ljava/io/File;Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$ProcessCallbackSequencer;->forwardCallbackByDraftImageSaved(ILandroid/net/Uri;Ljava/io/File;Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessCallback;)V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$ProcessCallbackSequencer;ILcom/samsung/android/app/galaxyraw/core2/processor/ProcessCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$ProcessCallbackSequencer;->forwardCallbackByRequestCollectionCompleted(ILcom/samsung/android/app/galaxyraw/core2/processor/ProcessCallback;)V

    return-void
.end method

.method static synthetic access$600(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$ProcessCallbackSequencer;ILcom/samsung/android/app/galaxyraw/core2/processor/ProcessCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$ProcessCallbackSequencer;->forwardCallbackByRequestCollectionStopped(ILcom/samsung/android/app/galaxyraw/core2/processor/ProcessCallback;)V

    return-void
.end method

.method private declared-synchronized draftImageSaved(I)Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$ProcessCallbackSequencer$SequenceCondition;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sequenceId"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$ProcessCallbackSequencer;->mSequenceConditions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$ProcessCallbackSequencer$SequenceCondition;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$ProcessCallbackSequencer;->mSequenceConditions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$ProcessCallbackSequencer;->mSequenceConditions:Landroid/util/SparseArray;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$ProcessCallbackSequencer$SequenceCondition;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v2, v3, v5, v5, v4}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$ProcessCallbackSequencer$SequenceCondition;-><init>(ZZZLcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$1;)V

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private forwardCallbackByDraftImage(ILcom/samsung/android/app/galaxyraw/core2/processor/ProcessCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "sequenceId",
            "processCallback"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$ProcessCallbackSequencer;->draftImageSaved(I)Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$ProcessCallbackSequencer$SequenceCondition;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$1800()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object p0

    const-string p1, "SequenceCondition is null"

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/util/PLog;->w(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz p2, :cond_2

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$ProcessCallbackSequencer$SequenceCondition;->access$1900(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$ProcessCallbackSequencer$SequenceCondition;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2, p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessCallback;->onRequestCollectionCompleted(I)V

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$ProcessCallbackSequencer$SequenceCondition;->access$2000(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$ProcessCallbackSequencer$SequenceCondition;)Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-interface {p2, p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessCallback;->onRequestCollectionStopped(I)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$1800()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object p0

    const-string p1, "can\'t invoke callback apis, callback is null"

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/util/PLog;->w(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private forwardCallbackByDraftImageSaved(ILandroid/net/Uri;Ljava/io/File;Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "sequenceId",
            "uri",
            "resultFile",
            "processCallback"
        }
    .end annotation

    if-eqz p4, :cond_0

    invoke-interface {p4, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessCallback;->onDraftPictureSaved(ILandroid/net/Uri;Ljava/io/File;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$1800()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object p2

    const-string p3, "can\'t invoke onDraftPictureSaved, callback is null"

    invoke-static {p2, p3}, Lcom/samsung/android/app/galaxyraw/core2/processor/util/PLog;->w(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    :goto_0
    invoke-direct {p0, p1, p4}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$ProcessCallbackSequencer;->forwardCallbackByDraftImage(ILcom/samsung/android/app/galaxyraw/core2/processor/ProcessCallback;)V

    return-void
.end method

.method private forwardCallbackByDraftImageSkipped(ILcom/samsung/android/app/galaxyraw/core2/processor/ProcessCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "sequenceId",
            "processCallback"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$ProcessCallbackSequencer;->forwardCallbackByDraftImage(ILcom/samsung/android/app/galaxyraw/core2/processor/ProcessCallback;)V

    return-void
.end method

.method private forwardCallbackByRequestCollectionCompleted(ILcom/samsung/android/app/galaxyraw/core2/processor/ProcessCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "sequenceId",
            "processCallback"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$ProcessCallbackSequencer;->requestCollectionCompleted(I)Z

    move-result p0

    if-eqz p0, :cond_1

    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessCallback;->onRequestCollectionCompleted(I)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$1800()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object p0

    const-string p1, "can\'t invoke onRequestCollectionCompleted, callback is null"

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/util/PLog;->w(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private forwardCallbackByRequestCollectionStopped(ILcom/samsung/android/app/galaxyraw/core2/processor/ProcessCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "sequenceId",
            "processCallback"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$ProcessCallbackSequencer;->requestCollectionStopped(I)Z

    move-result p0

    if-eqz p0, :cond_1

    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessCallback;->onRequestCollectionStopped(I)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$1800()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object p0

    const-string p1, "can\'t invoke onRequestCollectionStopped, callback is null"

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/util/PLog;->w(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private declared-synchronized requestCollectionCompleted(I)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sequenceId"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$ProcessCallbackSequencer;->mSequenceConditions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$ProcessCallbackSequencer$SequenceCondition;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$ProcessCallbackSequencer$SequenceCondition;->access$1600(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$ProcessCallbackSequencer$SequenceCondition;)Z

    move-result v1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$ProcessCallbackSequencer;->mSequenceConditions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$ProcessCallbackSequencer;->mSequenceConditions:Landroid/util/SparseArray;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$ProcessCallbackSequencer$SequenceCondition;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v2, v1, v3, v1, v4}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$ProcessCallbackSequencer$SequenceCondition;-><init>(ZZZLcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$1;)V

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized requestCollectionStopped(I)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sequenceId"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$ProcessCallbackSequencer;->mSequenceConditions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$ProcessCallbackSequencer$SequenceCondition;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$ProcessCallbackSequencer$SequenceCondition;->access$1600(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$ProcessCallbackSequencer$SequenceCondition;)Z

    move-result v1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$ProcessCallbackSequencer;->mSequenceConditions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$ProcessCallbackSequencer;->mSequenceConditions:Landroid/util/SparseArray;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$ProcessCallbackSequencer$SequenceCondition;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v2, v1, v1, v3, v4}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$ProcessCallbackSequencer$SequenceCondition;-><init>(ZZZLcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$1;)V

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
