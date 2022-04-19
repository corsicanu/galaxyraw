.class Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager$1;
.super Ljava/lang/Object;
.source "PictureProcessorManager.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessCallback;


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

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager$1;->this$0:Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDraftPictureSaved(ILandroid/net/Uri;Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "sequenceId",
            "resultUri",
            "resultFile"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager$1;->this$0:Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;->access$000(Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;)Lcom/samsung/android/app/galaxyraw/core2/processor/manager/ProcessorManagerInterface$PostProcessCallback;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/ProcessorManagerInterface$PostProcessCallback;->onDraftPictureSaved(ILandroid/net/Uri;Ljava/io/File;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;->access$100()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object p0

    const-string p1, "can\'t invoke onDraftPictureSaved : postProcessCallback is null"

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->w(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onProcessCompleted(Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessResult;Ljava/io/File;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "processResult",
            "resultFile"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessResult<",
            "Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;",
            ">;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager$1;->this$0:Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;->access$000(Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;)Lcom/samsung/android/app/galaxyraw/core2/processor/manager/ProcessorManagerInterface$PostProcessCallback;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;->access$100()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PPPCurrentSequenceCount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager$1;->this$0:Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;

    invoke-virtual {v3}, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;->getNumberOfPostProcessorSequenceStacked()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager$1;->this$0:Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;->getNumberOfPostProcessorSequenceStacked()I

    move-result v1

    if-ne v1, v4, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager$1;->this$0:Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;->access$200(Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;)Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PPPStateManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PPPStateManager;->unRegisterCameraAvailabilityCallabck()V

    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/ProcessorManagerInterface$PostProcessCallback;->onProcessCompleted(Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessResult;Ljava/io/File;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;->access$100()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object p0

    const-string p1, "can\'t invoke onProcessCompleted : postProcessCallback is null"

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->w(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onProcessError(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sequenceId"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager$1;->this$0:Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;->access$000(Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;)Lcom/samsung/android/app/galaxyraw/core2/processor/manager/ProcessorManagerInterface$PostProcessCallback;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/ProcessorManagerInterface$PostProcessCallback;->onProcessError(I)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;->access$100()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object p0

    const-string p1, "can\'t invoke onProcessError : postProcessCallback is null"

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->w(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onProcessProgress(Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessResult;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "processResult",
            "progress"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessResult<",
            "Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;",
            ">;I)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager$1;->this$0:Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;->access$000(Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;)Lcom/samsung/android/app/galaxyraw/core2/processor/manager/ProcessorManagerInterface$PostProcessCallback;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/ProcessorManagerInterface$PostProcessCallback;->onProcessProgress(Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessResult;I)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;->access$100()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object p0

    const-string p1, "can\'t invoke onProcessProgress : postProcessCallback is null"

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->w(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onRequestCollectionCompleted(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sequenceId"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager$1;->this$0:Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;->access$000(Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;)Lcom/samsung/android/app/galaxyraw/core2/processor/manager/ProcessorManagerInterface$PostProcessCallback;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/ProcessorManagerInterface$PostProcessCallback;->onRequestCollectionCompleted(I)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;->access$100()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object p0

    const-string p1, "can\'t invoke onRequestCollectionCompleted : postProcessCallback is null"

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->w(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onRequestCollectionStopped(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sequenceId"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager$1;->this$0:Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;->access$000(Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;)Lcom/samsung/android/app/galaxyraw/core2/processor/manager/ProcessorManagerInterface$PostProcessCallback;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/ProcessorManagerInterface$PostProcessCallback;->onRequestCollectionStopped(I)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;->access$100()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object p0

    const-string p1, "can\'t invoke onRequestCollectionStopped : postProcessCallback is null"

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->w(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
