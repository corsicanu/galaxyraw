.class Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread$1;
.super Ljava/util/TimerTask;
.source "PostProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->saveFileFromUri(Landroid/os/ParcelFileDescriptor;Landroid/net/Uri;Lcom/samsung/android/app/galaxyraw/core2/container/DraftImageFileInfo;Ljava/nio/file/Path;Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;

.field final synthetic val$draftImageFileInfo:Lcom/samsung/android/app/galaxyraw/core2/container/DraftImageFileInfo;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;Lcom/samsung/android/app/galaxyraw/core2/container/DraftImageFileInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$draftImageFileInfo"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread$1;->this$1:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread$1;->val$draftImageFileInfo:Lcom/samsung/android/app/galaxyraw/core2/container/DraftImageFileInfo;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$1800()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread$1;->val$draftImageFileInfo:Lcom/samsung/android/app/galaxyraw/core2/container/DraftImageFileInfo;

    iget-object v3, v3, Lcom/samsung/android/app/galaxyraw/core2/container/DraftImageFileInfo;->fakeDraftImageFilePath:Ljava/nio/file/Path;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread$1;->val$draftImageFileInfo:Lcom/samsung/android/app/galaxyraw/core2/container/DraftImageFileInfo;

    iget-object v3, v3, Lcom/samsung/android/app/galaxyraw/core2/container/DraftImageFileInfo;->realDraftImageFilePath:Ljava/nio/file/Path;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-string v3, "saveFileFromUri - delete draftFiles(%s, %s)"

    invoke-static {v0, v3, v2}, Lcom/samsung/android/app/galaxyraw/core2/processor/util/PLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    new-array v0, v1, [Ljava/nio/file/Path;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread$1;->val$draftImageFileInfo:Lcom/samsung/android/app/galaxyraw/core2/container/DraftImageFileInfo;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/core2/container/DraftImageFileInfo;->fakeDraftImageFilePath:Ljava/nio/file/Path;

    aput-object v1, v0, v4

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread$1;->val$draftImageFileInfo:Lcom/samsung/android/app/galaxyraw/core2/container/DraftImageFileInfo;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/container/DraftImageFileInfo;->realDraftImageFilePath:Ljava/nio/file/Path;

    aput-object p0, v0, v5

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/core2/util/FileUtils;->deleteFiles([Ljava/nio/file/Path;)V

    return-void
.end method
