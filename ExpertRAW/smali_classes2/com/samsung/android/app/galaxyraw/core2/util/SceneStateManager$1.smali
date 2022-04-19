.class Lcom/samsung/android/app/galaxyraw/core2/util/SceneStateManager$1;
.super Ljava/lang/Object;
.source "SceneStateManager.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/core2/util/SceneStateManager$TaskCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/galaxyraw/core2/util/SceneStateManager;-><init>(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;JJLcom/samsung/android/app/galaxyraw/core2/util/SceneStateManager$StateChangedCallback;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/core2/util/SceneStateManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/core2/util/SceneStateManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/SceneStateManager$1;->this$0:Lcom/samsung/android/app/galaxyraw/core2/util/SceneStateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTaskFinished()V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/SceneStateManager$1;->this$0:Lcom/samsung/android/app/galaxyraw/core2/util/SceneStateManager;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/core2/util/SceneStateManager;->access$000(Lcom/samsung/android/app/galaxyraw/core2/util/SceneStateManager;)Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object p0

    const-string v0, "TaskCallback onTaskFinished"

    invoke-static {p0, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onTaskStarted()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/SceneStateManager$1;->this$0:Lcom/samsung/android/app/galaxyraw/core2/util/SceneStateManager;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/core2/util/SceneStateManager;->access$000(Lcom/samsung/android/app/galaxyraw/core2/util/SceneStateManager;)Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object v0

    const-string v1, "TaskCallback onTaskStarted"

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/SceneStateManager$1;->this$0:Lcom/samsung/android/app/galaxyraw/core2/util/SceneStateManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/SceneStateManager;->access$102(Lcom/samsung/android/app/galaxyraw/core2/util/SceneStateManager;Z)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/SceneStateManager$1;->this$0:Lcom/samsung/android/app/galaxyraw/core2/util/SceneStateManager;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/core2/util/SceneStateManager;->access$200(Lcom/samsung/android/app/galaxyraw/core2/util/SceneStateManager;)Lcom/samsung/android/app/galaxyraw/core2/util/TimeChecker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/util/TimeChecker;->checkTime()V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/SceneStateManager$1;->this$0:Lcom/samsung/android/app/galaxyraw/core2/util/SceneStateManager;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/core2/util/SceneStateManager;->access$300(Lcom/samsung/android/app/galaxyraw/core2/util/SceneStateManager;)Lcom/samsung/android/app/galaxyraw/core2/util/TimeChecker;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/util/TimeChecker;->checkTime()V

    return-void
.end method
