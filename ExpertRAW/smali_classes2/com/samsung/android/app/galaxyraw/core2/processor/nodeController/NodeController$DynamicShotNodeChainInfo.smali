.class public Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/NodeController$DynamicShotNodeChainInfo;
.super Ljava/lang/Object;
.source "NodeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/NodeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DynamicShotNodeChainInfo"
.end annotation


# instance fields
.field public baseClass:Ljava/lang/Class;

.field public nodeChainKey:Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$Key<",
            "Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;",
            "Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$Key;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nodeChainKey"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$Key<",
            "Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;",
            "Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/NodeController$DynamicShotNodeChainInfo;-><init>(Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$Key;Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$Key;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nodeChainKey",
            "baseClass"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$Key<",
            "Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;",
            "Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;",
            ">;",
            "Ljava/lang/Class;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/NodeController$DynamicShotNodeChainInfo;->nodeChainKey:Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$Key;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/NodeController$DynamicShotNodeChainInfo;->baseClass:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DynamicShotNodeChainInfo{nodeChainKey Id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/NodeController$DynamicShotNodeChainInfo;->nodeChainKey:Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$Key;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$Key;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", baseClass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/NodeController$DynamicShotNodeChainInfo;->baseClass:Ljava/lang/Class;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v0, 0x7d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
