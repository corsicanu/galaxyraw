.class Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/NodeController$13;
.super Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$Key;
.source "NodeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/NodeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$Key<",
        "Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;",
        "Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(ILcom/samsung/android/app/galaxyraw/core2/node/Node$PortType;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "id",
            "portType"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$Key;-><init>(ILcom/samsung/android/app/galaxyraw/core2/node/Node$PortType;)V

    return-void
.end method
