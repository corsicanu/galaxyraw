.class Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl$1;
.super Ljava/lang/Object;
.source "RecordingManagerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl$1;->this$0:Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl$1;->this$0:Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->access$000(Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl$1;->this$0:Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->access$100(Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;)J

    move-result-wide v2

    add-long/2addr v0, v2

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl$1;->this$0:Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->access$200(Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;)J

    move-result-wide v2

    sub-long v2, v0, v2

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl$1;->this$0:Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;

    invoke-static {v4}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->access$300(Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;)I

    move-result v4

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    const-wide/16 v2, 0x3e8

    div-long v4, v0, v2

    iget-object v6, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl$1;->this$0:Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;

    invoke-static {v6}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->access$200(Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;)J

    move-result-wide v6

    div-long/2addr v6, v2

    cmp-long v2, v4, v6

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl$1;->this$0:Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;

    invoke-static {v2, v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->access$202(Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;J)J

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl$1;->this$0:Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->access$400(Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;)Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingManagerEventListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl$1;->this$0:Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->access$400(Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;)Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingManagerEventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl$1;->this$0:Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->access$200(Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl$1;->this$0:Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;

    invoke-static {v3}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->access$500(Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;)J

    move-result-wide v3

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingManagerEventListener;->onRecordingTick(JJ)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl$1;->this$0:Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->access$700(Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl$1;->this$0:Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->access$600(Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;)Ljava/lang/Runnable;

    move-result-object p0

    const-wide/16 v1, 0x64

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
