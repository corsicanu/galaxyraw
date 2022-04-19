.class public Lcom/samsung/android/app/galaxyraw/core2/processor/ImmediateProcessor;
.super Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessorBase;
.source "ImmediateProcessor.java"


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/galaxyraw/core2/CamCapability;Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "camCapability",
            "context"
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/IppNodeController;

    invoke-direct {v0, p2}, Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/IppNodeController;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessorBase;-><init>(Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/NodeController;)V

    sget-object p2, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->PERFORMANCE_TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImmediateProcessor - DeviceMemoryLevel : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/util/MemoryUtils;->getDeviceMemoryLevel()Lcom/samsung/android/app/galaxyraw/core2/util/MemoryUtils$MemoryLevel;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/ImmediateProcessor;->mNodeController:Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/NodeController;

    const/4 p2, 0x0

    const/16 v0, 0x23

    invoke-virtual {p0, p2, v0, p2, p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/NodeController;->createNodeChain(Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$Key;ILcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;Lcom/samsung/android/app/galaxyraw/core2/CamCapability;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized isInvalidSequence(I)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "currentProcessCount"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/processor/ImmediateProcessor;->getCurrentSequenceId()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    if-eq p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    monitor-exit p0

    return v2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized process(Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest;)Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessResult;
    .locals 9
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
            "Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;",
            ">;)",
            "Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessResult<",
            "Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/ImmediateProcessor;->mNodeController:Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/NodeController;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest;->getMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/NodeController;->getNodeChainKey(I)Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$Key;

    move-result-object v0

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest;->getUsage()Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest$Usage;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest$Usage;->ERROR:Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest$Usage;

    const/4 v8, 0x1

    if-eq v1, v2, :cond_0

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest;->getCurrentProcessCount()I

    move-result v1

    if-ne v1, v8, :cond_0

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/ImmediateProcessor;->mNodeController:Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/NodeController;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest;->getResultFormat()I

    move-result v4

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->getImageInfo()Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;

    move-result-object v5

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest;->getCamCapability()Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    move-result-object v6

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest;->getExtraBundle()Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;

    move-result-object v7

    move-object v3, v0

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/NodeController;->configureNodeChain(Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$Key;ILcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;Lcom/samsung/android/app/galaxyraw/core2/CamCapability;Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;)V

    :cond_0
    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->PERFORMANCE_TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v2, "Capture - ImmediateProcessor Process(sequenceId %d, processCount %d/%d, mode %s) : Start[%d]"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest;->getSequenceId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest;->getCurrentProcessCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    const/4 v4, 0x2

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest;->getTotalProcessCount()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    const/4 v4, 0x3

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest;->getMode()I

    move-result v6

    invoke-static {v6}, Lcom/samsung/android/app/galaxyraw/core2/container/DynamicShotInfo$DynamicShotMode;->getDsModeName(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v4

    const/4 v4, 0x4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v3, v4

    invoke-static {v1, v2, v3}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    const-class v1, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;

    invoke-super {p0, v0, p1, v1}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessorBase;->process(Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$Key;Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest;Ljava/lang/Class;)Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessResult;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->PERFORMANCE_TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v1, "Capture - ImmediateProcessor Process : End[%d]"

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized resetErrorSequence(Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest;)V
    .locals 3
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
            "Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->PERFORMANCE_TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resetErrorSequence - mode, : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest;->getMode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", id :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest;->getSequenceId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/ImmediateProcessor;->mNodeController:Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/NodeController;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/ImmediateProcessor;->mNodeController:Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/NodeController;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest;->getMode()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/NodeController;->getNodeChainKey(I)Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$Key;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/NodeController;->deinitialize(Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$Key;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/processor/ImmediateProcessor;->endSequence()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
