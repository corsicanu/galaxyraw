.class public Lcom/samsung/android/app/galaxyraw/core2/node/Node$InputPort;
.super Lcom/samsung/android/app/galaxyraw/core2/node/Node$Port;
.source "Node.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/core2/node/Node;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InputPort"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/samsung/android/app/galaxyraw/core2/node/Node$Port<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private mConnectedOutputPort:Lcom/samsung/android/app/galaxyraw/core2/node/Node$OutputPort;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/galaxyraw/core2/node/Node$OutputPort<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mCoreInterface:Lcom/samsung/android/app/galaxyraw/core2/node/Node$CoreInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/galaxyraw/core2/node/Node$CoreInterface<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/galaxyraw/core2/node/Node$PortType;Lcom/samsung/android/app/galaxyraw/core2/node/Node$CoreInterface;Lcom/samsung/android/app/galaxyraw/core2/node/Node$OutputPort;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "portType",
            "coreInterface",
            "outputPort"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/galaxyraw/core2/node/Node$PortType<",
            "TT;>;",
            "Lcom/samsung/android/app/galaxyraw/core2/node/Node$CoreInterface<",
            "TT;>;",
            "Lcom/samsung/android/app/galaxyraw/core2/node/Node$OutputPort<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/node/Node$Port;-><init>(Lcom/samsung/android/app/galaxyraw/core2/node/Node$PortType;)V

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node$InputPort;->mCoreInterface:Lcom/samsung/android/app/galaxyraw/core2/node/Node$CoreInterface;

    invoke-virtual {p0, p3}, Lcom/samsung/android/app/galaxyraw/core2/node/Node$InputPort;->connectOutputPort(Lcom/samsung/android/app/galaxyraw/core2/node/Node$OutputPort;)V

    return-void
.end method


# virtual methods
.method public connectOutputPort(Lcom/samsung/android/app/galaxyraw/core2/node/Node$OutputPort;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "outputPort"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/galaxyraw/core2/node/Node$OutputPort<",
            "TT;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node$InputPort;->mPortType:Lcom/samsung/android/app/galaxyraw/core2/node/Node$PortType;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/node/Node$OutputPort;->getPortType()Lcom/samsung/android/app/galaxyraw/core2/node/Node$PortType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/node/Node$PortType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/node/Node$OutputPort;->getPortType()Lcom/samsung/android/app/galaxyraw/core2/node/Node$PortType;

    move-result-object p1

    aput-object p1, v2, v3

    const/4 p1, 0x1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node$InputPort;->mPortType:Lcom/samsung/android/app/galaxyraw/core2/node/Node$PortType;

    aput-object p0, v2, p1

    const-string p0, "outputPort\'s portType(%s) is not equal with this portType(%s)"

    invoke-static {v1, p0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node$InputPort;->mConnectedOutputPort:Lcom/samsung/android/app/galaxyraw/core2/node/Node$OutputPort;

    return-void
.end method

.method public getCoreInterface()Lcom/samsung/android/app/galaxyraw/core2/node/Node$CoreInterface;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/samsung/android/app/galaxyraw/core2/node/Node$CoreInterface<",
            "TT;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node$InputPort;->mCoreInterface:Lcom/samsung/android/app/galaxyraw/core2/node/Node$CoreInterface;

    return-object p0
.end method

.method public bridge synthetic getPortType()Lcom/samsung/android/app/galaxyraw/core2/node/Node$PortType;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/app/galaxyraw/core2/node/Node$Port;->getPortType()Lcom/samsung/android/app/galaxyraw/core2/node/Node$PortType;

    move-result-object p0

    return-object p0
.end method

.method protected set(Ljava/lang/Object;Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;)Ljava/lang/Object;
    .locals 1
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
            "(TT;",
            "Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node$InputPort;->mCoreInterface:Lcom/samsung/android/app/galaxyraw/core2/node/Node$CoreInterface;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/core2/node/Node$CoreInterface;->needProcess()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node$InputPort;->mCoreInterface:Lcom/samsung/android/app/galaxyraw/core2/node/Node$CoreInterface;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/node/Node$CoreInterface;->process(Ljava/lang/Object;Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;)Ljava/lang/Object;

    move-result-object p1

    :cond_0
    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node$InputPort;->mConnectedOutputPort:Lcom/samsung/android/app/galaxyraw/core2/node/Node$OutputPort;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/node/Node$OutputPort;->set(Ljava/lang/Object;Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    return-object p1
.end method

.method public setCoreInterface(Lcom/samsung/android/app/galaxyraw/core2/node/Node$CoreInterface;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "coreInterface"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/galaxyraw/core2/node/Node$CoreInterface<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node$InputPort;->mCoreInterface:Lcom/samsung/android/app/galaxyraw/core2/node/Node$CoreInterface;

    return-void
.end method
