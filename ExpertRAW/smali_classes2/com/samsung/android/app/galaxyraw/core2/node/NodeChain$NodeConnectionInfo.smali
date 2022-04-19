.class Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$NodeConnectionInfo;
.super Ljava/lang/Object;
.source "NodeChain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NodeConnectionInfo"
.end annotation


# instance fields
.field private final mConnectionPortType:Lcom/samsung/android/app/galaxyraw/core2/node/Node$PortType;

.field private final mNode:Lcom/samsung/android/app/galaxyraw/core2/node/Node;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/galaxyraw/core2/node/Node;Lcom/samsung/android/app/galaxyraw/core2/node/Node$PortType;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "node",
            "connectionPortType"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$NodeConnectionInfo;->mNode:Lcom/samsung/android/app/galaxyraw/core2/node/Node;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$NodeConnectionInfo;->mConnectionPortType:Lcom/samsung/android/app/galaxyraw/core2/node/Node$PortType;

    return-void
.end method


# virtual methods
.method public getConnectionPortType()Lcom/samsung/android/app/galaxyraw/core2/node/Node$PortType;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$NodeConnectionInfo;->mConnectionPortType:Lcom/samsung/android/app/galaxyraw/core2/node/Node$PortType;

    return-object p0
.end method

.method public getNode()Lcom/samsung/android/app/galaxyraw/core2/node/Node;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$NodeConnectionInfo;->mNode:Lcom/samsung/android/app/galaxyraw/core2/node/Node;

    return-object p0
.end method
