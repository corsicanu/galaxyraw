.class Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/NodeController$31;
.super Ljava/util/HashMap;
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
        "Ljava/util/HashMap<",
        "Ljava/lang/Integer;",
        "Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/NodeController$DynamicShotNodeChainInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Error;
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const/16 v0, 0xaa

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/NodeController$DynamicShotNodeChainInfo;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/NodeController;->NODE_CHAIN_KEY_MFRP:Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$Key;

    const-class v3, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/NodeController$DynamicShotNodeChainInfo;-><init>(Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$Key;Ljava/lang/Class;)V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/NodeController$31;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/NodeController;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v1, "Fail to map BASE NODE CLASS - %s"

    invoke-static {v0, v1, p0}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
