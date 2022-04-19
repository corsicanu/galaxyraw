.class public Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessorBase;
.super Ljava/lang/Object;
.source "ProcessorBase.java"


# static fields
.field protected static final EMPTY_SEQUENCE_ID:I = -0x1


# instance fields
.field private mCurrentSequenceId:I

.field protected final mNodeController:Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/NodeController;


# direct methods
.method protected constructor <init>(Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/NodeController;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nodeController"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessorBase;->mCurrentSequenceId:I

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessorBase;->mNodeController:Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/NodeController;

    return-void
.end method

.method private static putProcessSequenceId(Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bundle",
            "sequenceId"
        }
    .end annotation

    if-eqz p0, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;->MULTI_PICTURE_INFO_SEQUENCE_ID:Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle$Key;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;->put(Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle$Key;Ljava/lang/Object;)Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;

    :cond_0
    return-void
.end method

.method private static removeProcessSequenceId(Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bundle"
        }
    .end annotation

    if-eqz p0, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;->MULTI_PICTURE_INFO_SEQUENCE_ID:Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle$Key;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;->remove(Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle$Key;)Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;

    :cond_0
    return-void
.end method


# virtual methods
.method protected declared-synchronized endSequence()V
    .locals 1

    monitor-enter p0

    const/4 v0, -0x1

    :try_start_0
    iput v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessorBase;->mCurrentSequenceId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized getCurrentSequenceId()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessorBase;->mCurrentSequenceId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized process(Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$Key;Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest;Ljava/lang/Class;)Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessResult;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "key",
            "processRequest",
            "returnClass"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<InputData_T:",
            "Ljava/lang/Object;",
            "OutputData_T:",
            "Ljava/lang/Object;",
            "ReturnData_T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$Key<",
            "TInputData_T;TOutputData_T;>;",
            "Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest<",
            "TInputData_T;>;",
            "Ljava/lang/Class<",
            "TReturnData_T;>;)",
            "Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessResult<",
            "TReturnData_T;>;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-interface {p2}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest;->getSequenceId()I

    move-result v4

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessorBase;->mCurrentSequenceId:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    iput v4, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessorBase;->mCurrentSequenceId:I

    goto :goto_0

    :cond_0
    if-ne v0, v4, :cond_4

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessorBase;->mNodeController:Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/NodeController;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/NodeController;->getNodeChain(Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$Key;)Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest;->getExtraBundle()Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;

    move-result-object v1

    if-nez v1, :cond_1

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;->obtain([Ljava/lang/Object;)Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;

    move-result-object v1

    :cond_1
    move-object v3, v1

    invoke-static {v3, v4}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessorBase;->putProcessSequenceId(Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;I)V

    invoke-interface {p2}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest;->getData()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p3, v1, v3}, Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain;->processFull(Ljava/lang/Class;Ljava/lang/Object;Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessorBase;->removeProcessSequenceId(Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;)V

    invoke-interface {p2}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest;->getCurrentProcessCount()I

    move-result p3

    invoke-interface {p2}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest;->getTotalProcessCount()I

    move-result p2

    new-instance v7, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessResult;

    move-object v0, v7

    move-object v1, p1

    move v5, p3

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessResult;-><init>(Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$Key;Ljava/lang/Object;Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;III)V

    if-lt p3, p2, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessorBase;->endSequence()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-object v7

    :cond_3
    :try_start_1
    new-instance p2, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;

    sget-object p3, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const-string v0, "process of key(id %d) is not supported in this processor"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$Key;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v3

    invoke-static {p3, v0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_4
    new-instance p1, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;

    sget-object p2, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const-string p3, "already current sequence(id %d) is running, new sequence(id %d) can\'t be started"

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessorBase;->mCurrentSequenceId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {p2, p3, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public releaseNodeChain()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessorBase;->mNodeController:Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/NodeController;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/NodeController;->release()V

    return-void
.end method
