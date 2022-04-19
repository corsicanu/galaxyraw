.class Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager$2;
.super Ljava/lang/Object;
.source "PictureProcessorManager.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessorStatusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager$2;->this$0:Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProcessorActive()V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager$2;->this$0:Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;->access$300(Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;)Lcom/samsung/android/app/galaxyraw/core2/processor/manager/ProcessorManagerInterface$PPPStatusCallback;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/ProcessorManagerInterface$PPPStatusCallback;->onProcessorActive()V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;->access$100()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object p0

    const-string v0, "can\'t invoke onProcessorActive : pppStatusCallback is null"

    invoke-static {p0, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->w(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onProcessorReady()V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager$2;->this$0:Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;->access$300(Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;)Lcom/samsung/android/app/galaxyraw/core2/processor/manager/ProcessorManagerInterface$PPPStatusCallback;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/ProcessorManagerInterface$PPPStatusCallback;->onProcessorReady()V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;->access$100()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object p0

    const-string v0, "can\'t invoke onProcessorReady : pppStatusCallback is null"

    invoke-static {p0, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->w(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
