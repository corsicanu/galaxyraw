.class public Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain;
.super Ljava/lang/Object;
.source "NodeChain.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$NodeConnectionInfo;,
        Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$Key;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<InputData_T:",
        "Ljava/lang/Object;",
        "OutputData_T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;


# instance fields
.field private mEnabled:Z

.field private mFirstNodeInputPort:Lcom/samsung/android/app/galaxyraw/core2/node/Node$InputPort;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/galaxyraw/core2/node/Node$InputPort<",
            "TInputData_T;>;"
        }
    .end annotation
.end field

.field private final mKey:Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$Key<",
            "TInputData_T;TOutputData_T;>;"
        }
    .end annotation
.end field

.field private mNextNodeChain:Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain;

.field private final mNodeConnectionInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$NodeConnectionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mNodePool:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/app/galaxyraw/core2/node/Node;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-class v1, Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$Key;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$Key<",
            "TInputData_T;TOutputData_T;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain;->mNodeConnectionInfoList:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain;->mNodePool:Ljava/util/Map;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain;->mEnabled:Z

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain;->mKey:Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$Key;

    return-void
.end method

.method private processFullInternal(Ljava/lang/Object;Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "bundle"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TInputData_T;",
            "Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain;->mEnabled:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain;->mFirstNodeInputPort:Lcom/samsung/android/app/galaxyraw/core2/node/Node$InputPort;

    if-eqz v0, :cond_0

    invoke-static {v0, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->set(Lcom/samsung/android/app/galaxyraw/core2/node/Node$InputPort;Ljava/lang/Object;Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;

    sget-object p2, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const-string v0, "any node doesn\'t exist in nodeChain(key id %d) or released"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain;->mKey:Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$Key;

    invoke-virtual {v3}, Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$Key;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {p2, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain;->mNextNodeChain:Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_2

    if-eqz v0, :cond_2

    :try_start_1
    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain;->getKey()Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$Key;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$Key;->getInputDataClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, p0, p2}, Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain;->processFullInternal(Ljava/lang/Object;Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    new-instance p1, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;

    sget-object p2, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const-string v3, "nodeChain(key id %d) processFullInternal fail"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain;->mKey:Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$Key;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$Key;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    invoke-static {p2, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_2
    :goto_1
    return-object p1

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method


# virtual methods
.method public addNode(Lcom/samsung/android/app/galaxyraw/core2/node/Node;Ljava/lang/Class;Lcom/samsung/android/app/galaxyraw/core2/node/Node$PortType;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "newNode",
            "nodeClass",
            "connectPortType"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Node_T:",
            "Lcom/samsung/android/app/galaxyraw/core2/node/Node;",
            "ConnectionPort_T:",
            "Ljava/lang/Object;",
            ">(TNode_T;",
            "Ljava/lang/Class<",
            "-TNode_T;>;",
            "Lcom/samsung/android/app/galaxyraw/core2/node/Node$PortType<",
            "TConnectionPort_T;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain;->addNode(Lcom/samsung/android/app/galaxyraw/core2/node/Node;Ljava/lang/Class;Ljava/lang/String;Lcom/samsung/android/app/galaxyraw/core2/node/Node$PortType;)V

    return-void
.end method

.method public declared-synchronized addNode(Lcom/samsung/android/app/galaxyraw/core2/node/Node;Ljava/lang/Class;Ljava/lang/String;Lcom/samsung/android/app/galaxyraw/core2/node/Node$PortType;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "newNode",
            "nodeClass",
            "keyName",
            "connectPortType"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Node_T:",
            "Lcom/samsung/android/app/galaxyraw/core2/node/Node;",
            "ConnectionPort_T:",
            "Ljava/lang/Object;",
            ">(TNode_T;",
            "Ljava/lang/Class<",
            "-TNode_T;>;",
            "Ljava/lang/String;",
            "Lcom/samsung/android/app/galaxyraw/core2/node/Node$PortType<",
            "TConnectionPort_T;>;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1, p4}, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->getInputPort(Lcom/samsung/android/app/galaxyraw/core2/node/Node$PortType;)Lcom/samsung/android/app/galaxyraw/core2/node/Node$InputPort;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_5

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain;->mNodeConnectionInfoList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain;->mKey:Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$Key;

    invoke-virtual {v4}, Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$Key;->getPortType()Lcom/samsung/android/app/galaxyraw/core2/node/Node$PortType;

    move-result-object v4

    invoke-virtual {v4, p4}, Lcom/samsung/android/app/galaxyraw/core2/node/Node$PortType;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain;->mFirstNodeInputPort:Lcom/samsung/android/app/galaxyraw/core2/node/Node$InputPort;

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    sget-object p2, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const-string p3, "connectPortType(%s) isn\'t equal with nodeChain inputPortType(%s)"

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p4, v0, v1

    iget-object p4, p0, Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain;->mKey:Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$Key;

    invoke-virtual {p4}, Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$Key;->getPortType()Lcom/samsung/android/app/galaxyraw/core2/node/Node$PortType;

    move-result-object p4

    aput-object p4, v0, v3

    invoke-static {p2, p3, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain;->mNodeConnectionInfoList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v3

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$NodeConnectionInfo;

    invoke-virtual {v4}, Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$NodeConnectionInfo;->getNode()Lcom/samsung/android/app/galaxyraw/core2/node/Node;

    move-result-object v5

    invoke-virtual {v5, p4}, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->getOutputPort(Lcom/samsung/android/app/galaxyraw/core2/node/Node$PortType;)Lcom/samsung/android/app/galaxyraw/core2/node/Node$OutputPort;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-static {v5, v0}, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->connectPort(Lcom/samsung/android/app/galaxyraw/core2/node/Node$OutputPort;Lcom/samsung/android/app/galaxyraw/core2/node/Node$InputPort;)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain;->mNodeConnectionInfoList:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$NodeConnectionInfo;

    invoke-direct {v1, p1, p4}, Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$NodeConnectionInfo;-><init>(Lcom/samsung/android/app/galaxyraw/core2/node/Node;Lcom/samsung/android/app/galaxyraw/core2/node/Node$PortType;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p4, p0, Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain;->mNodePool:Ljava/util/Map;

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    :cond_3
    invoke-interface {p4, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_4
    :try_start_1
    new-instance p1, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;

    sget-object p2, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const-string p3, "lastNode(%s) doesn\'t have outputPort which corresponds with connectPortType(%s)"

    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {v4}, Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$NodeConnectionInfo;->getNode()Lcom/samsung/android/app/galaxyraw/core2/node/Node;

    move-result-object v2

    aput-object v2, v0, v1

    aput-object p4, v0, v3

    invoke-static {p2, p3, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p2, Ljava/lang/IllegalArgumentException;

    sget-object p3, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const-string v0, "newNode(%s) doesn\'t have inputPort which corresponds with connectPortType(%s)"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    aput-object p4, v2, v3

    invoke-static {p3, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized connectNodeChain(Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nextNodeChain"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<NNC_InputData_T:",
            "Ljava/lang/Object;",
            "NNC_OutputData_T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain<",
            "TNNC_InputData_T;TNNC_OutputData_T;>;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p1, Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain;->mKey:Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$Key;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$Key;->getInputDataClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain;->mKey:Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$Key;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$Key;->getOutputDataClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain;->mNextNodeChain:Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v2, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;

    sget-object v3, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const-string v4, "connectNodeChain fail - next nodeChain(key id %d) inputClass(%s) doesn\'t correspond with this nodeChain(key id %d) outputClass(%s)"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain;->mKey:Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$Key;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$Key;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v5, v6

    const/4 p1, 0x1

    aput-object v0, v5, p1

    const/4 p1, 0x2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain;->mKey:Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$Key;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$Key;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, p1

    const/4 p1, 0x3

    aput-object v1, v5, p1

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized deinitialize()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain;->mNodeConnectionInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$NodeConnectionInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$NodeConnectionInfo;->getNode()Lcom/samsung/android/app/galaxyraw/core2/node/Node;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->deinitialize()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized enableNodeChain(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain;->mEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getKey()Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$Key;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$Key<",
            "TInputData_T;TOutputData_T;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain;->mKey:Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$Key;

    return-object p0
.end method

.method public getNextNodeChain()Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain;->mNextNodeChain:Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain;

    return-object p0
.end method

.method public getNode(Ljava/lang/Class;)Lcom/samsung/android/app/galaxyraw/core2/node/Node;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nodeClass"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/samsung/android/app/galaxyraw/core2/node/Node;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain;->getNode(Ljava/lang/Class;Ljava/lang/String;)Lcom/samsung/android/app/galaxyraw/core2/node/Node;

    move-result-object p0

    return-object p0
.end method

.method public getNode(Ljava/lang/Class;Ljava/lang/String;)Lcom/samsung/android/app/galaxyraw/core2/node/Node;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nodeClass",
            "keyName"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/samsung/android/app/galaxyraw/core2/node/Node;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain;->mNodePool:Ljava/util/Map;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    :cond_1
    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public declared-synchronized getNodeList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/galaxyraw/core2/node/Node;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain;->mNodeConnectionInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$NodeConnectionInfo;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$NodeConnectionInfo;->getNode()Lcom/samsung/android/app/galaxyraw/core2/node/Node;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public initialize(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activate"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain;->initialize(ZZ)V

    return-void
.end method

.method public declared-synchronized initialize(ZZ)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "activate",
            "asyncInit"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain;->mNodeConnectionInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$NodeConnectionInfo;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$NodeConnectionInfo;->getNode()Lcom/samsung/android/app/galaxyraw/core2/node/Node;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->initialize(ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public insertNode(Lcom/samsung/android/app/galaxyraw/core2/node/Node;Lcom/samsung/android/app/galaxyraw/core2/node/Node;Ljava/lang/Class;Lcom/samsung/android/app/galaxyraw/core2/node/Node$PortType;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "preNode",
            "newNode",
            "newNodeClass",
            "connectPortType"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Node_T:",
            "Lcom/samsung/android/app/galaxyraw/core2/node/Node;",
            "ConnectionPort_T:",
            "Ljava/lang/Object;",
            ">(TNode_T;TNode_T;",
            "Ljava/lang/Class<",
            "-TNode_T;>;",
            "Lcom/samsung/android/app/galaxyraw/core2/node/Node$PortType<",
            "TConnectionPort_T;>;)V"
        }
    .end annotation

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain;->insertNode(Lcom/samsung/android/app/galaxyraw/core2/node/Node;Lcom/samsung/android/app/galaxyraw/core2/node/Node;Ljava/lang/Class;Ljava/lang/String;Lcom/samsung/android/app/galaxyraw/core2/node/Node$PortType;)V

    return-void
.end method

.method public declared-synchronized insertNode(Lcom/samsung/android/app/galaxyraw/core2/node/Node;Lcom/samsung/android/app/galaxyraw/core2/node/Node;Ljava/lang/Class;Ljava/lang/String;Lcom/samsung/android/app/galaxyraw/core2/node/Node$PortType;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "preNode",
            "newNode",
            "newNodeClass",
            "keyName",
            "connectPortType"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Node_T:",
            "Lcom/samsung/android/app/galaxyraw/core2/node/Node;",
            "ConnectionPort_T:",
            "Ljava/lang/Object;",
            ">(TNode_T;TNode_T;",
            "Ljava/lang/Class<",
            "-TNode_T;>;",
            "Ljava/lang/String;",
            "Lcom/samsung/android/app/galaxyraw/core2/node/Node$PortType<",
            "TConnectionPort_T;>;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain;->mNodeConnectionInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$NodeConnectionInfo;

    if-eqz v2, :cond_1

    move-object v1, v3

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$NodeConnectionInfo;->getNode()Lcom/samsung/android/app/galaxyraw/core2/node/Node;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_2
    :goto_1
    const/4 v0, 0x0

    const/4 v3, 0x1

    if-eqz v2, :cond_9

    invoke-virtual {p2, p5}, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->getInputPort(Lcom/samsung/android/app/galaxyraw/core2/node/Node$PortType;)Lcom/samsung/android/app/galaxyraw/core2/node/Node$InputPort;

    move-result-object v4

    const/4 v5, 0x2

    if-eqz v4, :cond_8

    invoke-virtual {p1, p5}, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->getOutputPort(Lcom/samsung/android/app/galaxyraw/core2/node/Node$PortType;)Lcom/samsung/android/app/galaxyraw/core2/node/Node$OutputPort;

    move-result-object v6

    if-eqz v6, :cond_7

    invoke-static {v6, v4}, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->connectPort(Lcom/samsung/android/app/galaxyraw/core2/node/Node$OutputPort;Lcom/samsung/android/app/galaxyraw/core2/node/Node$InputPort;)V

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$NodeConnectionInfo;->getConnectionPortType()Lcom/samsung/android/app/galaxyraw/core2/node/Node$PortType;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->getOutputPort(Lcom/samsung/android/app/galaxyraw/core2/node/Node$PortType;)Lcom/samsung/android/app/galaxyraw/core2/node/Node$OutputPort;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$NodeConnectionInfo;->getNode()Lcom/samsung/android/app/galaxyraw/core2/node/Node;

    move-result-object v0

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$NodeConnectionInfo;->getConnectionPortType()Lcom/samsung/android/app/galaxyraw/core2/node/Node$PortType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->getInputPort(Lcom/samsung/android/app/galaxyraw/core2/node/Node$PortType;)Lcom/samsung/android/app/galaxyraw/core2/node/Node$InputPort;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->connectPort(Lcom/samsung/android/app/galaxyraw/core2/node/Node$OutputPort;Lcom/samsung/android/app/galaxyraw/core2/node/Node$InputPort;)V

    goto :goto_2

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    sget-object p3, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const-string p4, "newNode(%s) doesn\'t have outputPort which corresponds with connectPortType(%s)"

    new-array p5, v5, [Ljava/lang/Object;

    aput-object p2, p5, v0

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$NodeConnectionInfo;->getConnectionPortType()Lcom/samsung/android/app/galaxyraw/core2/node/Node$PortType;

    move-result-object p2

    aput-object p2, p5, v3

    invoke-static {p3, p4, p5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_2
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain;->mNodeConnectionInfoList:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v0, v3

    new-instance v1, Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$NodeConnectionInfo;

    invoke-direct {v1, p2, p5}, Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$NodeConnectionInfo;-><init>(Lcom/samsung/android/app/galaxyraw/core2/node/Node;Lcom/samsung/android/app/galaxyraw/core2/node/Node$PortType;)V

    invoke-interface {p1, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain;->mNodePool:Ljava/util/Map;

    if-eqz p4, :cond_5

    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result p5

    if-eqz p5, :cond_6

    :cond_5
    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p4

    :cond_6
    invoke-interface {p1, p4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_7
    :try_start_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    sget-object p3, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const-string p4, "preNode(%s) doesn\'t have outputPort which corresponds with connectPortType(%s)"

    new-array v1, v5, [Ljava/lang/Object;

    aput-object p1, v1, v0

    aput-object p5, v1, v3

    invoke-static {p3, p4, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    sget-object p3, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const-string p4, "newNode(%s) doesn\'t have inputPort which corresponds with connectPortType(%s)"

    new-array v1, v5, [Ljava/lang/Object;

    aput-object p2, v1, v0

    aput-object p5, v1, v3

    invoke-static {p3, p4, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    new-instance p2, Ljava/lang/IllegalArgumentException;

    sget-object p3, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const-string p4, "preNode(%s) doesn\'t exist in nodeList"

    new-array p5, v3, [Ljava/lang/Object;

    aput-object p1, p5, v0

    invoke-static {p3, p4, p5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized isInitialized()Z
    .locals 3

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain;->mNodeConnectionInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$NodeConnectionInfo;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$NodeConnectionInfo;->getNode()Lcom/samsung/android/app/galaxyraw/core2/node/Node;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->isInitialized()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    const/4 v0, 0x0

    monitor-exit p0

    return v0

    :cond_1
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public process(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TInputData_T;)TOutputData_T;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-process"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/TraceWrapper;->traceBegin(Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;

    invoke-direct {v0}, Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain;->process(Ljava/lang/Object;Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lcom/sec/android/app/TraceWrapper;->traceEnd()V

    return-object p0
.end method

.method public declared-synchronized process(Ljava/lang/Object;Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "bundle"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TInputData_T;",
            "Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;",
            ")TOutputData_T;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain;->mEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    monitor-exit p0

    return-object v1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain;->mFirstNodeInputPort:Lcom/samsung/android/app/galaxyraw/core2/node/Node$InputPort;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    :try_start_2
    invoke-static {v0, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->set(Lcom/samsung/android/app/galaxyraw/core2/node/Node$InputPort;Ljava/lang/Object;Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;)Ljava/lang/Object;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain;->mKey:Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$Key;

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$Key;->getOutputDataClass()Ljava/lang/Class;

    move-result-object p2

    const-class v0, Ljava/lang/Void;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p2, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v1

    :catch_0
    move-exception p1

    :try_start_3
    new-instance p2, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;

    sget-object v0, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const-string v1, "nodeChain(key id %d) process fail"

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain;->mKey:Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$Key;

    invoke-virtual {v4}, Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$Key;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v0, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_2
    new-instance p1, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;

    sget-object p2, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const-string v0, "any node doesn\'t exist in nodeChain(key id %d) or released"

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain;->mKey:Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$Key;

    invoke-virtual {v3}, Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$Key;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p2, v0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public processFull(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "returnClazz",
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Return_T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TReturn_T;>;TInputData_T;)TReturn_T;"
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;

    invoke-direct {v0}, Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain;->processFull(Ljava/lang/Class;Ljava/lang/Object;Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public processFull(Ljava/lang/Class;Ljava/lang/Object;Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "returnClazz",
            "data",
            "bundle"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Return_T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TReturn_T;>;TInputData_T;",
            "Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;",
            ")TReturn_T;"
        }
    .end annotation

    :try_start_0
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain;->processFullInternal(Ljava/lang/Object;Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;)Ljava/lang/Object;

    move-result-object p2

    const-class p3, Ljava/lang/Void;

    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p0

    :catch_0
    move-exception p1

    new-instance p2, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;

    sget-object p3, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain;->mKey:Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$Key;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$Key;->getId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v1

    const-string p0, "nodeChain(key id %d) processFull fail"

    invoke-static {p3, p0, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public declared-synchronized release()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain;->mFirstNodeInputPort:Lcom/samsung/android/app/galaxyraw/core2/node/Node$InputPort;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain;->mNodeConnectionInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$NodeConnectionInfo;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$NodeConnectionInfo;->getNode()Lcom/samsung/android/app/galaxyraw/core2/node/Node;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->release()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain;->mNodeConnectionInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain;->mNodePool:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeNode(Lcom/samsung/android/app/galaxyraw/core2/node/Node;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "node"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain;->mNodeConnectionInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$NodeConnectionInfo;

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$NodeConnectionInfo;->getNode()Lcom/samsung/android/app/galaxyraw/core2/node/Node;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_2
    move-object v3, v1

    :goto_1
    if-nez v2, :cond_3

    monitor-exit p0

    return-void

    :cond_3
    if-eqz v3, :cond_4

    :try_start_1
    invoke-virtual {v3}, Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$NodeConnectionInfo;->getConnectionPortType()Lcom/samsung/android/app/galaxyraw/core2/node/Node$PortType;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->getOutputPort(Lcom/samsung/android/app/galaxyraw/core2/node/Node$PortType;)Lcom/samsung/android/app/galaxyraw/core2/node/Node$OutputPort;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->connectPort(Lcom/samsung/android/app/galaxyraw/core2/node/Node$OutputPort;Lcom/samsung/android/app/galaxyraw/core2/node/Node$InputPort;)V

    :cond_4
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain;->mNodeConnectionInfoList:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ge p1, v5, :cond_7

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$NodeConnectionInfo;->getNode()Lcom/samsung/android/app/galaxyraw/core2/node/Node;

    move-result-object p1

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain;->mKey:Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$Key;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$Key;->getPortType()Lcom/samsung/android/app/galaxyraw/core2/node/Node$PortType;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->getInputPort(Lcom/samsung/android/app/galaxyraw/core2/node/Node$PortType;)Lcom/samsung/android/app/galaxyraw/core2/node/Node$InputPort;

    move-result-object v1

    if-eqz v1, :cond_5

    goto :goto_2

    :cond_5
    new-instance p1, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;

    sget-object v1, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const-string v2, "nextNode(%s) of removeNode doesn\'t have inputPort which corresponds with nodeChain inputPortType(%s)"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$NodeConnectionInfo;->getNode()Lcom/samsung/android/app/galaxyraw/core2/node/Node;

    move-result-object v3

    aput-object v3, v4, v0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain;->mKey:Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$Key;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$Key;->getPortType()Lcom/samsung/android/app/galaxyraw/core2/node/Node$PortType;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v1, v2, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    :goto_2
    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain;->mFirstNodeInputPort:Lcom/samsung/android/app/galaxyraw/core2/node/Node$InputPort;

    goto :goto_3

    :cond_7
    iget-object v6, p0, Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain;->mNodeConnectionInfoList:Ljava/util/List;

    sub-int/2addr p1, v5

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$NodeConnectionInfo;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$NodeConnectionInfo;->getNode()Lcom/samsung/android/app/galaxyraw/core2/node/Node;

    move-result-object v6

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$NodeConnectionInfo;->getConnectionPortType()Lcom/samsung/android/app/galaxyraw/core2/node/Node$PortType;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->getOutputPort(Lcom/samsung/android/app/galaxyraw/core2/node/Node$PortType;)Lcom/samsung/android/app/galaxyraw/core2/node/Node$OutputPort;

    move-result-object v6

    invoke-static {v6, v1}, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->connectPort(Lcom/samsung/android/app/galaxyraw/core2/node/Node$OutputPort;Lcom/samsung/android/app/galaxyraw/core2/node/Node$InputPort;)V

    if-eqz v3, :cond_9

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$NodeConnectionInfo;->getNode()Lcom/samsung/android/app/galaxyraw/core2/node/Node;

    move-result-object v1

    invoke-virtual {v3}, Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$NodeConnectionInfo;->getConnectionPortType()Lcom/samsung/android/app/galaxyraw/core2/node/Node$PortType;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->getOutputPort(Lcom/samsung/android/app/galaxyraw/core2/node/Node$PortType;)Lcom/samsung/android/app/galaxyraw/core2/node/Node$OutputPort;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v3}, Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$NodeConnectionInfo;->getNode()Lcom/samsung/android/app/galaxyraw/core2/node/Node;

    move-result-object p1

    invoke-virtual {v3}, Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$NodeConnectionInfo;->getConnectionPortType()Lcom/samsung/android/app/galaxyraw/core2/node/Node$PortType;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->getInputPort(Lcom/samsung/android/app/galaxyraw/core2/node/Node$PortType;)Lcom/samsung/android/app/galaxyraw/core2/node/Node$InputPort;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->connectPort(Lcom/samsung/android/app/galaxyraw/core2/node/Node$OutputPort;Lcom/samsung/android/app/galaxyraw/core2/node/Node$InputPort;)V

    goto :goto_3

    :cond_8
    new-instance v1, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;

    sget-object v2, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const-string v6, "preNode(%s) of removeNode doesn\'t have outputPort which corresponds with nextNode of removeNode\'s connectPortType(%s)"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$NodeConnectionInfo;->getNode()Lcom/samsung/android/app/galaxyraw/core2/node/Node;

    move-result-object p1

    aput-object p1, v4, v0

    invoke-virtual {v3}, Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$NodeConnectionInfo;->getConnectionPortType()Lcom/samsung/android/app/galaxyraw/core2/node/Node$PortType;

    move-result-object p1

    aput-object p1, v4, v5

    invoke-static {v2, v6, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_9
    :goto_3
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain;->mNodeConnectionInfoList:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain;->mNodePool:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$NodeConnectionInfo;->getNode()Lcom/samsung/android/app/galaxyraw/core2/node/Node;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setActivate(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activate"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain;->mNodeConnectionInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$NodeConnectionInfo;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$NodeConnectionInfo;->getNode()Lcom/samsung/android/app/galaxyraw/core2/node/Node;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->setActivate(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
