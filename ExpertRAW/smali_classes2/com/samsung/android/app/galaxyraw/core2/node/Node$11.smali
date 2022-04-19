.class Lcom/samsung/android/app/galaxyraw/core2/node/Node$11;
.super Ljava/util/TimerTask;
.source "Node.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/galaxyraw/core2/node/Node;->initialize(ZZJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/core2/node/Node;

.field final synthetic val$activate:Z

.field final synthetic val$delay:J


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/core2/node/Node;ZJ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$activate",
            "val$delay"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node$11;->this$0:Lcom/samsung/android/app/galaxyraw/core2/node/Node;

    iput-boolean p2, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node$11;->val$activate:Z

    iput-wide p3, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node$11;->val$delay:J

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node$11;->this$0:Lcom/samsung/android/app/galaxyraw/core2/node/Node;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->mInitializingThreadId:J

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node$11;->this$0:Lcom/samsung/android/app/galaxyraw/core2/node/Node;

    iget-boolean v1, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node$11;->val$activate:Z

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->initializeInternal(Z)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node$11;->this$0:Lcom/samsung/android/app/galaxyraw/core2/node/Node;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->mStateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node$11;->this$0:Lcom/samsung/android/app/galaxyraw/core2/node/Node;

    iget-boolean v1, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node$11;->val$activate:Z

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->setActivate(Z)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node$11;->this$0:Lcom/samsung/android/app/galaxyraw/core2/node/Node;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->mInitializedCond:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node$11;->this$0:Lcom/samsung/android/app/galaxyraw/core2/node/Node;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->mStateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node$11;->this$0:Lcom/samsung/android/app/galaxyraw/core2/node/Node;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->getNodeTag()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-initializingThread - delay("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node$11;->val$delay:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "ms)"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/sec/android/app/TraceWrapper;->asyncTraceEnd(Ljava/lang/String;I)V

    return-void

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node$11;->this$0:Lcom/samsung/android/app/galaxyraw/core2/node/Node;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->mStateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method
