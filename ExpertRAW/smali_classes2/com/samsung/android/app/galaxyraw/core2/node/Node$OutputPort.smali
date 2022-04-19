.class public Lcom/samsung/android/app/galaxyraw/core2/node/Node$OutputPort;
.super Lcom/samsung/android/app/galaxyraw/core2/node/Node$Port;
.source "Node.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/core2/node/Node;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OutputPort"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/core2/node/Node$OutputPort$PortDataCallback;
    }
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
.field private mConnectedInputPort:Lcom/samsung/android/app/galaxyraw/core2/node/Node$InputPort;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/galaxyraw/core2/node/Node$InputPort<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mDataCallback:Lcom/samsung/android/app/galaxyraw/core2/node/Node$OutputPort$PortDataCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/galaxyraw/core2/node/Node$OutputPort$PortDataCallback<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/galaxyraw/core2/node/Node$PortType;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "portType"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/galaxyraw/core2/node/Node$PortType<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/node/Node$Port;-><init>(Lcom/samsung/android/app/galaxyraw/core2/node/Node$PortType;)V

    return-void
.end method


# virtual methods
.method public connectInputPort(Lcom/samsung/android/app/galaxyraw/core2/node/Node$InputPort;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputPort"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/galaxyraw/core2/node/Node$InputPort<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node$OutputPort;->mConnectedInputPort:Lcom/samsung/android/app/galaxyraw/core2/node/Node$InputPort;

    return-void
.end method

.method public bridge synthetic getPortType()Lcom/samsung/android/app/galaxyraw/core2/node/Node$PortType;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/app/galaxyraw/core2/node/Node$Port;->getPortType()Lcom/samsung/android/app/galaxyraw/core2/node/Node$PortType;

    move-result-object p0

    return-object p0
.end method

.method public set(Ljava/lang/Object;Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;)Ljava/lang/Object;
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

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node$OutputPort;->mConnectedInputPort:Lcom/samsung/android/app/galaxyraw/core2/node/Node$InputPort;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/node/Node$InputPort;->set(Ljava/lang/Object;Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node$OutputPort;->mDataCallback:Lcom/samsung/android/app/galaxyraw/core2/node/Node$OutputPort$PortDataCallback;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/node/Node$OutputPort$PortDataCallback;->onDataReceived(Ljava/lang/Object;Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;)V

    :cond_1
    return-object p1
.end method

.method public setDataCallback(Lcom/samsung/android/app/galaxyraw/core2/node/Node$OutputPort$PortDataCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/galaxyraw/core2/node/Node$OutputPort$PortDataCallback<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node$OutputPort;->mDataCallback:Lcom/samsung/android/app/galaxyraw/core2/node/Node$OutputPort$PortDataCallback;

    return-void
.end method
