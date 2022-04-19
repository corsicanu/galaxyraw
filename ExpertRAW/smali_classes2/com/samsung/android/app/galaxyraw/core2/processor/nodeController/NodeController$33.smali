.class Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/NodeController$33;
.super Ljava/lang/Object;
.source "NodeController.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode$NodeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/NodeController;->lambda$new$1$NodeController(Ljava/lang/Object;)Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/NodeController;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/NodeController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/NodeController$33;->this$0:Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/NodeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bundle"
        }
    .end annotation

    new-instance p0, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;

    const-string p1, "error occurred in MfrpNode"

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onProgress(Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bundle",
            "progress"
        }
    .end annotation

    return-void
.end method
