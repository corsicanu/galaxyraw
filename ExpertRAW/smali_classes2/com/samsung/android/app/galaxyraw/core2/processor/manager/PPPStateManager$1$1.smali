.class Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PPPStateManager$1$1;
.super Ljava/lang/Object;
.source "PPPStateManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PPPStateManager$1;->onCameraAvailable(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PPPStateManager$1;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PPPStateManager$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PPPStateManager$1$1;->this$1:Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PPPStateManager$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;->getInstance()Lcom/samsung/android/app/galaxyraw/core2/processor/manager/ProcessorManagerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/ProcessorManagerInterface;->resumePPP()V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PPPStateManager$1$1;->this$1:Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PPPStateManager$1;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PPPStateManager$1;->this$0:Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PPPStateManager;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PPPStateManager$ProcessingState;->RESUMED:Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PPPStateManager$ProcessingState;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PPPStateManager;->setProcessingState(Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PPPStateManager$ProcessingState;)V

    return-void
.end method
