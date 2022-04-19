.class public Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/IppNodeController;
.super Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/NodeController;
.source "IppNodeController.java"


# instance fields
.field private final mConnectPostNodeChainList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$Key<",
            "Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;",
            "Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mFirstPostProcessingNodeChain:Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain<",
            "Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;",
            "Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/NodeController;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    new-array p1, p1, [Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$Key;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/IppNodeController;->mConnectPostNodeChainList:Ljava/util/List;

    return-void
.end method

.method private createPostProcessingNodeChain(Lcom/samsung/android/app/galaxyraw/core2/CamCapability;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "camCapability"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/IppNodeController;->mCreateNodeChainMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/IppNodeController;->NODE_CHAIN_KEY_CONT_DETECTOR:Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$Key;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/function/Function;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/function/Function;

    invoke-interface {v0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/IppNodeController;->mNodeChainMap:Ljava/util/Map;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/IppNodeController;->NODE_CHAIN_KEY_CONT_DETECTOR:Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$Key;

    invoke-virtual {p0, v1, v2, v0}, Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/IppNodeController;->registerNodeChain(Ljava/util/Map;Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$Key;Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/IppNodeController;->mFirstPostProcessingNodeChain:Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/IppNodeController;->mConnectPostNodeChainList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$Key;

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/IppNodeController;->mNodeChainMap:Ljava/util/Map;

    invoke-virtual {p0, v3, v2}, Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/IppNodeController;->containNodeChain(Ljava/util/Map;Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$Key;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/IppNodeController;->mCreateNodeChainMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/function/Function;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/function/Function;

    invoke-interface {v3, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain;

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/IppNodeController;->mNodeChainMap:Ljava/util/Map;

    invoke-virtual {p0, v4, v2, v3}, Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/IppNodeController;->registerNodeChain(Ljava/util/Map;Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$Key;Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain;)V

    invoke-virtual {v0, v3}, Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain;->connectNodeChain(Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain;)V

    move-object v0, v3

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public configureNodeChain(Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$Key;ILcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;Lcom/samsung/android/app/galaxyraw/core2/CamCapability;Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "nodeChainKey",
            "resultFormat",
            "imageInfo",
            "camCapability",
            "extraBundle"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$Key<",
            "Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;",
            "Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;",
            ">;I",
            "Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;",
            "Lcom/samsung/android/app/galaxyraw/core2/CamCapability;",
            "Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;",
            ")V"
        }
    .end annotation

    sget-object p2, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->PERFORMANCE_TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "IppNodeController - configureNodeChain E : "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$Key;->getId()I

    move-result p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/IppNodeController;->mNodeChainMap:Ljava/util/Map;

    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/IppNodeController;->getNodeChain(Ljava/util/Map;Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$Key;)Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain;

    move-result-object p0

    if-eqz p0, :cond_0

    sget-object p2, Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/IppNodeController;->NODE_CHAIN_KEY_SINGLE:Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$Key;

    if-eq p2, p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain;->isInitialized()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    :try_start_0
    invoke-virtual {p0, p1, p1}, Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain;->initialize(ZZ)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    sget-object p0, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->PERFORMANCE_TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string p1, "IppNodeController - configureNodeChain X"

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public createNodeChain(Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$Key;ILcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;Lcom/samsung/android/app/galaxyraw/core2/CamCapability;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "nodeChainKey",
            "resultFormat",
            "imageInfo",
            "camCapability"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$Key<",
            "Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;",
            "Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;",
            ">;I",
            "Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;",
            "Lcom/samsung/android/app/galaxyraw/core2/CamCapability;",
            ")V"
        }
    .end annotation

    sget-object p1, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->PERFORMANCE_TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string p2, "IppNodeController - createNodeChain E"

    invoke-static {p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/IppNodeController;->mCreateNodeChainMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$Key;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/IppNodeController;->NODE_CHAIN_KEY_SINGLE:Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$Key;

    if-eq p3, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/IppNodeController;->mNodeChainMap:Ljava/util/Map;

    invoke-virtual {p0, v0, p3}, Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/IppNodeController;->containNodeChain(Ljava/util/Map;Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$Key;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/function/Function;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/function/Function;

    invoke-interface {p2, p4}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/IppNodeController;->mNodeChainMap:Ljava/util/Map;

    invoke-virtual {p0, v0, p3, p2}, Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/IppNodeController;->registerNodeChain(Ljava/util/Map;Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$Key;Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain;)V

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->PERFORMANCE_TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string p1, "IppNodeController - createNodeChain X"

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public release()V
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/NodeController;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/IppNodeController;->mFirstPostProcessingNodeChain:Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain;

    return-void
.end method
