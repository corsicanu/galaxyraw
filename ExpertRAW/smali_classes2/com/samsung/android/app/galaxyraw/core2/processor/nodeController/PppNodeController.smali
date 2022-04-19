.class public Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/PppNodeController;
.super Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/NodeController;
.source "PppNodeController.java"


# static fields
.field public static final TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;


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

.field private mLastPostProcessingNodeChain:Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain;
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
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-class v1, Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/PppNodeController;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/PppNodeController;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/NodeController;-><init>(Landroid/content/Context;)V

    const/16 p1, 0xc

    new-array p1, p1, [Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$Key;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/PppNodeController;->NODE_CHAIN_KEY_SINGLE_IN_FOCUS:Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$Key;

    const/4 v1, 0x0

    aput-object v0, p1, v1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/PppNodeController;->NODE_CHAIN_KEY_CONT_DETECTOR:Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$Key;

    const/4 v1, 0x1

    aput-object v0, p1, v1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/PppNodeController;->NODE_CHAIN_KEY_LOCAL_TM:Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$Key;

    const/4 v1, 0x2

    aput-object v0, p1, v1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/PppNodeController;->NODE_CHAIN_KEY_SR_DEBLUR:Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$Key;

    const/4 v1, 0x3

    aput-object v0, p1, v1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/PppNodeController;->NODE_CHAIN_KEY_FACE_RESTORATION:Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$Key;

    const/4 v1, 0x4

    aput-object v0, p1, v1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/PppNodeController;->NODE_CHAIN_KEY_BEAUTY:Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$Key;

    const/4 v1, 0x5

    aput-object v0, p1, v1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/PppNodeController;->NODE_CHAIN_KEY_ULTRA_LENS_DISTORTION:Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$Key;

    const/4 v1, 0x6

    aput-object v0, p1, v1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/PppNodeController;->NODE_CHAIN_KEY_SINGLE_BOKEH:Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$Key;

    const/4 v1, 0x7

    aput-object v0, p1, v1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/PppNodeController;->NODE_CHAIN_KEY_DUAL_BOKEH:Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$Key;

    const/16 v1, 0x8

    aput-object v0, p1, v1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/PppNodeController;->NODE_CHAIN_KEY_CORRECTION_EFFECT_PROCESSOR:Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$Key;

    const/16 v1, 0x9

    aput-object v0, p1, v1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/PppNodeController;->NODE_CHAIN_KEY_WATER_MARK:Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$Key;

    const/16 v1, 0xa

    aput-object v0, p1, v1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/PppNodeController;->NODE_CHAIN_KEY_FILTER_EFFECT_PROCESSOR:Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$Key;

    const/16 v1, 0xb

    aput-object v0, p1, v1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/PppNodeController;->mConnectPostNodeChainList:Ljava/util/List;

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/PppNodeController;->mCreateNodeChainMap:Ljava/util/Map;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/PppNodeController;->NODE_CHAIN_KEY_ENCODER:Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$Key;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/-$$Lambda$PppNodeController$GrPB7h-oJR95y5qnd-24Ytxxk8A;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/-$$Lambda$PppNodeController$GrPB7h-oJR95y5qnd-24Ytxxk8A;-><init>(Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/PppNodeController;)V

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/PppNodeController;->mCreateNodeChainMap:Ljava/util/Map;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/PppNodeController;->NODE_CHAIN_KEY_DNG:Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$Key;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/-$$Lambda$PppNodeController$N4sSuOAeyKwRJaHiHrsL4CtzHM0;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/-$$Lambda$PppNodeController$N4sSuOAeyKwRJaHiHrsL4CtzHM0;-><init>(Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/PppNodeController;)V

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private configureEncodingNodeChain(ILcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;Lcom/samsung/android/app/galaxyraw/core2/CamCapability;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "resultFormat",
            "imageInfo",
            "camCapability"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/PppNodeController;->mNodeChainMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/PppNodeController;->NODE_CHAIN_KEY_ENCODER:Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$Key;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/PppNodeController;->getNodeChain(Ljava/util/Map;Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$Key;)Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain;->enableNodeChain(Z)V

    const-class v1, Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/JpegNodeBase;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain;->getNode(Ljava/lang/Class;)Lcom/samsung/android/app/galaxyraw/core2/node/Node;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/JpegNodeBase;

    const/16 v1, 0x100

    if-ne p1, v1, :cond_0

    sget-object p1, Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/PppNodeController;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v1, "configureEncodingNodeChain - JpegNode activate true, HeifNode activate false"

    invoke-static {p1, v1}, Lcom/samsung/android/app/galaxyraw/core2/processor/util/PLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/JpegNodeBase;->initialize(Z)V

    new-instance p1, Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/JpegNodeBase$CompressConfiguration;

    invoke-direct {p1, p3, p2}, Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/JpegNodeBase$CompressConfiguration;-><init>(Lcom/samsung/android/app/galaxyraw/core2/CamCapability;Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/JpegNodeBase;->setCompressConfiguration(Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/JpegNodeBase$CompressConfiguration;)V

    return v0

    :cond_0
    new-instance p0, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;

    sget-object p2, Ljava/util/Locale;->UK:Ljava/util/Locale;

    new-array p3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p3, v0

    const-string p1, "configureNodeChain fail - unknown resultFormat(%d)"

    invoke-static {p2, p1, p3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private createEncodingNodeChain(Lcom/samsung/android/app/galaxyraw/core2/CamCapability;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "camCapability"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/PppNodeController;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v1, "createEncodingNodeChain E"

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/processor/util/PLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/PppNodeController;->NODE_CHAIN_KEY_ENCODER:Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$Key;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/PppNodeController;->getNodeChain(Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$Key;)Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string p0, "already created - createEncodingNodeChain X"

    invoke-static {v0, p0}, Lcom/samsung/android/app/galaxyraw/core2/processor/util/PLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/PppNodeController;->mCreateNodeChainMap:Ljava/util/Map;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/PppNodeController;->NODE_CHAIN_KEY_ENCODER:Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$Key;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/function/Function;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/function/Function;

    invoke-interface {v1, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/PppNodeController;->NODE_CHAIN_KEY_ENCODER:Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$Key;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/PppNodeController;->getNodeChain(Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$Key;)Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/PppNodeController;->mFirstPostProcessingNodeChain:Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/PppNodeController;->mLastPostProcessingNodeChain:Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain;

    const-string p0, "createEncodingNodeChain X"

    invoke-static {v0, p0}, Lcom/samsung/android/app/galaxyraw/core2/processor/util/PLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private createPostProcessingNodeChain(Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;Lcom/samsung/android/app/galaxyraw/core2/CamCapability;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "imageInfo",
            "camCapability"
        }
    .end annotation

    sget-object p1, Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/PppNodeController;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v0, "createPostProcessingNodeChain E"

    invoke-static {p1, v0}, Lcom/samsung/android/app/galaxyraw/core2/processor/util/PLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/PppNodeController;->mFirstPostProcessingNodeChain:Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain;

    if-eqz v0, :cond_0

    const-string p0, "already created - createPostProcessingNodeChain X"

    invoke-static {p1, p0}, Lcom/samsung/android/app/galaxyraw/core2/processor/util/PLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/PppNodeController;->mCreateNodeChainMap:Ljava/util/Map;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/PppNodeController;->NODE_CHAIN_KEY_CONT_DETECTOR:Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$Key;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/function/Function;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/function/Function;

    invoke-interface {p1, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/PppNodeController;->mNodeChainMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/PppNodeController;->NODE_CHAIN_KEY_CONT_DETECTOR:Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$Key;

    invoke-virtual {p0, v0, v1, p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/PppNodeController;->registerNodeChain(Ljava/util/Map;Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$Key;Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain;)V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/PppNodeController;->mFirstPostProcessingNodeChain:Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/PppNodeController;->mConnectPostNodeChainList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/PppNodeController;->mNodeChainMap:Ljava/util/Map;

    invoke-virtual {p0, v2, v1}, Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/PppNodeController;->containNodeChain(Ljava/util/Map;Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$Key;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/PppNodeController;->mCreateNodeChainMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/function/Function;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/function/Function;

    invoke-interface {v2, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain;

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/PppNodeController;->mNodeChainMap:Ljava/util/Map;

    invoke-virtual {p0, v3, v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/PppNodeController;->registerNodeChain(Ljava/util/Map;Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$Key;Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain;)V

    invoke-virtual {p1, v2}, Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain;->connectNodeChain(Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain;)V

    move-object p1, v2

    goto :goto_0

    :cond_2
    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/PppNodeController;->mLastPostProcessingNodeChain:Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain;

    sget-object p0, Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/PppNodeController;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string p1, "createPostProcessingNodeChain X"

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/util/PLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$configureDngNodeChain$2(Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain;->enableNodeChain(Z)V

    return-void
.end method


# virtual methods
.method public configureDngNodeChain(Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;Lcom/samsung/android/app/galaxyraw/core2/CamCapability;Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "jpegBuffer",
            "camCapability",
            "extraBundle"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/PppNodeController;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v1, "configureDngNodeChain E"

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/processor/util/PLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/PppNodeController;->NODE_CHAIN_KEY_DNG:Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$Key;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/PppNodeController;->getNodeChain(Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$Key;)Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain;

    move-result-object p0

    :try_start_0
    const-string v1, "dngNodeChain"

    invoke-static {p0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/ConditionChecker;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "jpegBuffer"

    invoke-static {p1, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/ConditionChecker;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "camCapability"

    invoke-static {p2, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/ConditionChecker;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "extraBundle"

    invoke-static {p3, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/ConditionChecker;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->getImageInfo()Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->getCaptureResult()Landroid/hardware/camera2/TotalCaptureResult;

    move-result-object v1

    const-string v2, "captureResult"

    invoke-static {v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/ConditionChecker;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;->MFRP_DATA_MERGED_RAW_FRAME:Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle$Key;

    invoke-virtual {p3, v2}, Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;->get(Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;

    sget-object v3, Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;->MFRP_DATA_TONE_MAP:Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle$Key;

    invoke-virtual {p3, v3}, Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;->get(Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;

    sget-object v3, Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;->MFRP_DATA_SEMANTIC_MAP:Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle$Key;

    invoke-virtual {p3, v3}, Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;->get(Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;

    const-string v3, "mergedRawFrame"

    invoke-static {v2, v3}, Lcom/samsung/android/app/galaxyraw/core2/util/ConditionChecker;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain;->initialize(Z)V

    const-class v3, Lcom/samsung/android/app/galaxyraw/core2/node/DngManageNode;

    invoke-virtual {p0, v3}, Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain;->getNode(Ljava/lang/Class;)Lcom/samsung/android/app/galaxyraw/core2/node/Node;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/galaxyraw/core2/node/DngManageNode;

    const-string v4, "dngManageNode"

    invoke-static {v3, v4}, Lcom/samsung/android/app/galaxyraw/core2/util/ConditionChecker;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;->INFO_RESULT_CAPTURE_SIZE:Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle$Key;

    invoke-virtual {p3, v4}, Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;->get(Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Size;

    invoke-virtual {v3, v1, p2, v4}, Lcom/samsung/android/app/galaxyraw/core2/node/DngManageNode;->loadDngMetadata(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/app/galaxyraw/core2/CamCapability;Landroid/util/Size;)V

    invoke-virtual {v3, p1}, Lcom/samsung/android/app/galaxyraw/core2/node/DngManageNode;->setJpegBuffer(Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;)V

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$RawDataFormat;->values()[Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$RawDataFormat;

    move-result-object p1

    sget-object p2, Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;->MFRP_INFO_RAW_DATA_FORMAT:Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle$Key;

    invoke-virtual {p3, p2}, Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;->get(Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle$Key;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    aget-object p1, p1, p2

    invoke-virtual {v3, p1}, Lcom/samsung/android/app/galaxyraw/core2/node/DngManageNode;->setRawDataFormat(Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$RawDataFormat;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;->MFRP_DATA_DNG_EXTRA_METADATA:Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle$Key;

    invoke-virtual {p3, p1}, Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;->get(Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    if-eqz p1, :cond_0

    invoke-virtual {v3, p1}, Lcom/samsung/android/app/galaxyraw/core2/node/DngManageNode;->loadDngExtraMetadata([B)V

    :cond_0
    invoke-virtual {p0, v2}, Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain;->enableNodeChain(Z)V

    const-string p1, "configureDngNodeChain X"

    invoke-static {v0, p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/util/PLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception p1

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    sget-object p2, Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/-$$Lambda$PppNodeController$x7cXByyzvZWvhblpM_n5vaT3vu8;->INSTANCE:Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/-$$Lambda$PppNodeController$x7cXByyzvZWvhblpM_n5vaT3vu8;

    invoke-virtual {p0, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    sget-object p0, Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/PppNodeController;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "configureDngNodeChain: configuration failed - "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/util/PLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public configureNodeChain(Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$Key;ILcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;Lcom/samsung/android/app/galaxyraw/core2/CamCapability;Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;)V
    .locals 2
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

    sget-object p5, Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/PppNodeController;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v0, "configureNodeChain E"

    invoke-static {p5, v0}, Lcom/samsung/android/app/galaxyraw/core2/processor/util/PLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/PppNodeController;->NODE_CHAIN_KEY_MFRP:Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$Key;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/PppNodeController;->mNodeChainMap:Ljava/util/Map;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/PppNodeController;->getNodeChain(Ljava/util/Map;Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$Key;)Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain;

    move-result-object p1

    const-class v0, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain;->getNode(Ljava/lang/Class;)Lcom/samsung/android/app/galaxyraw/core2/node/Node;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->initialize(Z)V

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode$MfrpInitParam;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/PppNodeController;->mContext:Landroid/content/Context;

    invoke-direct {v0, p4, v1}, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode$MfrpInitParam;-><init>(Lcom/samsung/android/app/galaxyraw/core2/CamCapability;Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->reconfigure(Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0, p2, p3, p4}, Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/PppNodeController;->configureEncodingNodeChain(ILcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;Lcom/samsung/android/app/galaxyraw/core2/CamCapability;)Z

    const-string p0, "configureNodeChain X"

    invoke-static {p5, p0}, Lcom/samsung/android/app/galaxyraw/core2/processor/util/PLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public createDngNodeChain(Lcom/samsung/android/app/galaxyraw/core2/CamCapability;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "camCapability"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/PppNodeController;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v1, "createDngNodeChain E"

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/processor/util/PLog;->d(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/PppNodeController;->NODE_CHAIN_KEY_DNG:Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$Key;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/PppNodeController;->getNodeChain(Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$Key;)Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string p0, "already created - createDngNodeChain X"

    invoke-static {v0, p0}, Lcom/samsung/android/app/galaxyraw/core2/processor/util/PLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/PppNodeController;->mCreateNodeChainMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/PppNodeController;->NODE_CHAIN_KEY_DNG:Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$Key;

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/function/Function;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/function/Function;

    invoke-interface {p0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "createDngNodeChain X"

    invoke-static {v0, p0}, Lcom/samsung/android/app/galaxyraw/core2/processor/util/PLog;->d(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public createNodeChain(Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$Key;ILcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;Lcom/samsung/android/app/galaxyraw/core2/CamCapability;)V
    .locals 0
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

    sget-object p2, Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/PppNodeController;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string p3, "createNodeChain E"

    invoke-static {p2, p3}, Lcom/samsung/android/app/galaxyraw/core2/processor/util/PLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    iget-object p3, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/PppNodeController;->mNodeChainMap:Ljava/util/Map;

    invoke-virtual {p0, p3, p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/PppNodeController;->getNodeChain(Ljava/util/Map;Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$Key;)Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain;

    move-result-object p3

    if-eqz p3, :cond_0

    const-string p0, "already created - createNodeChain X"

    invoke-static {p2, p0}, Lcom/samsung/android/app/galaxyraw/core2/processor/util/PLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-direct {p0, p4}, Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/PppNodeController;->createEncodingNodeChain(Lcom/samsung/android/app/galaxyraw/core2/CamCapability;)V

    sget-object p3, Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/PppNodeController;->NODE_CHAIN_KEY_SINGLE:Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$Key;

    if-ne p1, p3, :cond_1

    iget-object p3, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/PppNodeController;->mFirstPostProcessingNodeChain:Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain;

    goto :goto_0

    :cond_1
    iget-object p3, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/PppNodeController;->mCreateNodeChainMap:Ljava/util/Map;

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/function/Function;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/function/Function;

    invoke-interface {p3, p4}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain;

    iget-object p4, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/PppNodeController;->mFirstPostProcessingNodeChain:Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain;

    invoke-virtual {p3, p4}, Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain;->connectNodeChain(Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain;)V

    :goto_0
    iget-object p4, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/PppNodeController;->mNodeChainMap:Ljava/util/Map;

    invoke-virtual {p0, p4, p1, p3}, Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/PppNodeController;->registerNodeChain(Ljava/util/Map;Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$Key;Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain;)V

    const-string p0, "createNodeChain X"

    invoke-static {p2, p0}, Lcom/samsung/android/app/galaxyraw/core2/processor/util/PLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$new$0$PppNodeController(Ljava/lang/Object;)Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain;
    .locals 4

    new-instance p1, Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/PppNodeController;->NODE_CHAIN_KEY_ENCODER:Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$Key;

    invoke-direct {p1, v0}, Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain;-><init>(Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$Key;)V

    const-class v0, Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/JpegNodeBase;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/PppNodeController;->mJpegNodeCallback:Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/JpegNodeBase$NodeCallback;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFactory;->create(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/JpegNodeBase;

    const-class v1, Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/JpegNodeBase;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->PORT_TYPE_PICTURE:Lcom/samsung/android/app/galaxyraw/core2/node/Node$PortType;

    invoke-virtual {p1, v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain;->addNode(Lcom/samsung/android/app/galaxyraw/core2/node/Node;Ljava/lang/Class;Lcom/samsung/android/app/galaxyraw/core2/node/Node$PortType;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/PppNodeController;->mNodeChainMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/PppNodeController;->NODE_CHAIN_KEY_ENCODER:Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$Key;

    invoke-virtual {p0, v0, v1, p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/PppNodeController;->registerNodeChain(Ljava/util/Map;Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$Key;Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain;)V

    return-object p1
.end method

.method public synthetic lambda$new$1$PppNodeController(Ljava/lang/Object;)Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain;
    .locals 3

    new-instance p1, Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/PppNodeController;->NODE_CHAIN_KEY_DNG:Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$Key;

    invoke-direct {p1, v0}, Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain;-><init>(Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$Key;)V

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/node/DngManageNode;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/PppNodeController;->mDngNodeCallback:Lcom/samsung/android/app/galaxyraw/core2/node/DngManageNode$NodeCallback;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/node/DngManageNode;-><init>(Lcom/samsung/android/app/galaxyraw/core2/node/DngManageNode$NodeCallback;)V

    const-class v1, Lcom/samsung/android/app/galaxyraw/core2/node/DngManageNode;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->PORT_TYPE_PICTURE:Lcom/samsung/android/app/galaxyraw/core2/node/Node$PortType;

    invoke-virtual {p1, v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain;->addNode(Lcom/samsung/android/app/galaxyraw/core2/node/Node;Ljava/lang/Class;Lcom/samsung/android/app/galaxyraw/core2/node/Node$PortType;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/PppNodeController;->mNodeChainMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/PppNodeController;->NODE_CHAIN_KEY_DNG:Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$Key;

    invoke-virtual {p0, v0, v1, p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/PppNodeController;->registerNodeChain(Ljava/util/Map;Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$Key;Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain;)V

    return-object p1
.end method

.method public release()V
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/NodeController;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/PppNodeController;->mFirstPostProcessingNodeChain:Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/PppNodeController;->mLastPostProcessingNodeChain:Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain;

    return-void
.end method
