.class public abstract Lcom/samsung/android/app/galaxyraw/core2/node/Node2;
.super Lcom/samsung/android/app/galaxyraw/core2/node/Node;
.source "Node2.java"


# instance fields
.field protected final mInitializedCond2:Ljava/util/concurrent/locks/Condition;

.field protected final mStateLock2:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method protected constructor <init>(ILcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nodeId",
            "nodeTag"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/app/galaxyraw/core2/node/Node2;-><init>(ILcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Z)V

    return-void
.end method

.method protected constructor <init>(ILcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "nodeId",
            "nodeTag",
            "hasNativeNode"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/core2/node/Node;-><init>(ILcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Z)V

    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node2;->mStateLock2:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node2;->mInitializedCond2:Ljava/util/concurrent/locks/Condition;

    return-void
.end method


# virtual methods
.method public deinitialize()V
    .locals 9

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node2;->mStateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node2;->mStateLock2:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/node/Node2;->getNodeTag()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object v3

    const-string v4, "deinitialize"

    invoke-static {v3, v4}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/node/Node2;->isDeInitialized()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v3, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node2;->mStateLock2:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node2;->mStateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node2;->mState:Lcom/samsung/android/app/galaxyraw/core2/node/Node$State;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/core2/node/Node$State;->INITIALIZING:Lcom/samsung/android/app/galaxyraw/core2/node/Node$State;

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/galaxyraw/core2/node/Node$State;->compareState(Lcom/samsung/android/app/galaxyraw/core2/node/Node$State;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node2;->mStateLock2:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node2;->mInitializedCond:Ljava/util/concurrent/locks/Condition;

    const-wide/16 v4, 0x5

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v3, v4, v5, v6}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v3
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_1

    :try_start_3
    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node2;->mStateLock2:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_1

    :cond_1
    :try_start_4
    new-instance v3, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;

    sget-object v4, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const-string v5, "%s: deinitialize fail - waiting time for node initializing is expired"

    new-array v6, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/node/Node2;->getNodeTag()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v3

    goto :goto_0

    :catch_0
    move-exception v3

    :try_start_5
    new-instance v4, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;

    sget-object v5, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const-string v6, "%s: deinitialize fail - get interrupt during waiting for node initializing, %s"

    new-array v7, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/node/Node2;->getNodeTag()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object v8

    aput-object v8, v7, v2

    aput-object v3, v7, v1

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_0
    :try_start_6
    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node2;->mStateLock2:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    throw v3

    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node2;->mState:Lcom/samsung/android/app/galaxyraw/core2/node/Node$State;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/core2/node/Node$State;->DEINITIALIZING:Lcom/samsung/android/app/galaxyraw/core2/node/Node$State;

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/galaxyraw/core2/node/Node$State;->checkTransitState(Lcom/samsung/android/app/galaxyraw/core2/node/Node$State;)V

    sget-object v3, Lcom/samsung/android/app/galaxyraw/core2/node/Node$State;->DEINITIALIZING:Lcom/samsung/android/app/galaxyraw/core2/node/Node$State;

    iput-object v3, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node2;->mState:Lcom/samsung/android/app/galaxyraw/core2/node/Node$State;
    :try_end_6
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node2;->mStateLock2:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node2;->mStateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    sget-boolean v0, Lcom/samsung/android/app/galaxyraw/core2/node/Node2;->DEBUG:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node2;->mInitTimeoutExecutor:Lcom/samsung/android/app/galaxyraw/core2/util/TimeoutExecutor;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node2;->mInitTimeoutExecutor:Lcom/samsung/android/app/galaxyraw/core2/util/TimeoutExecutor;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/util/TimeoutExecutor;->shutdown()V

    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node2;->mInitTimeoutExecutor:Lcom/samsung/android/app/galaxyraw/core2/util/TimeoutExecutor;

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node2;->mPictureProcessTimeoutExecutor:Lcom/samsung/android/app/galaxyraw/core2/util/TimeoutExecutor;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node2;->mPictureProcessTimeoutExecutor:Lcom/samsung/android/app/galaxyraw/core2/util/TimeoutExecutor;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/util/TimeoutExecutor;->shutdown()V

    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node2;->mPictureProcessTimeoutExecutor:Lcom/samsung/android/app/galaxyraw/core2/util/TimeoutExecutor;

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/node/Node2;->getNodeTag()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-onDeinitialized"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/TraceWrapper;->traceBegin(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/node/Node2;->onDeinitialized()V

    invoke-static {}, Lcom/sec/android/app/TraceWrapper;->traceEnd()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node2;->mStateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node2;->mStateLock2:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_7
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/node/Node2;->releaseNativeNode()V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/node/Node$State;->DEINITIALIZED:Lcom/samsung/android/app/galaxyraw/core2/node/Node$State;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node2;->mState:Lcom/samsung/android/app/galaxyraw/core2/node/Node$State;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node2;->mStateLock2:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node2;->mStateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node2;->mStateLock2:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node2;->mStateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v3

    :try_start_8
    new-instance v4, Ljava/lang/IllegalStateException;

    sget-object v5, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const-string v6, "%s: deinitialize fail - state transition error, %s"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/node/Node2;->getNodeTag()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object v7

    aput-object v7, v0, v2

    aput-object v3, v0, v1

    invoke-static {v5, v6, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :goto_2
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node2;->mStateLock2:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node2;->mStateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public initialize(ZZJ)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x0
        }
        names = {
            "activate",
            "asyncInit",
            "delay"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node2;->mStateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node2;->mStateLock2:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v0, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/node/Node2;->getNodeTag()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object v3

    const-string v4, "initialize - activate %b, asyncInit %b(delay %dms)"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v3, v4, v5}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/node/Node2;->isInitializing()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/node/Node2;->getNodeTag()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object p1

    const-string p2, "initialize - already node is initializing, ignore"

    invoke-static {p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->w(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node2;->mStateLock2:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node2;->mStateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/node/Node2;->isInitialized()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/node/Node2;->isActivated()Z

    move-result p2

    if-eq p2, p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/node/Node2;->setActivate(Z)V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node2;->mState:Lcom/samsung/android/app/galaxyraw/core2/node/Node$State;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/core2/node/Node$State;->INITIALIZING:Lcom/samsung/android/app/galaxyraw/core2/node/Node$State;

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/galaxyraw/core2/node/Node$State;->checkTransitState(Lcom/samsung/android/app/galaxyraw/core2/node/Node$State;)V

    if-eqz p2, :cond_3

    const-wide/16 v3, -0x1

    iput-wide v3, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node2;->mInitializingThreadId:J

    new-instance p2, Ljava/util/Timer;

    invoke-direct {p2}, Ljava/util/Timer;-><init>()V

    new-instance v3, Lcom/samsung/android/app/galaxyraw/core2/node/Node2$1;

    invoke-direct {v3, p0, p1, p3, p4}, Lcom/samsung/android/app/galaxyraw/core2/node/Node2$1;-><init>(Lcom/samsung/android/app/galaxyraw/core2/node/Node2;ZJ)V

    invoke-virtual {p2, v3, p3, p4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/node/Node2;->getNodeTag()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "-initializingThread"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lcom/sec/android/app/TraceWrapper;->asyncTraceBegin(Ljava/lang/String;I)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/core2/node/Node$State;->INITIALIZING:Lcom/samsung/android/app/galaxyraw/core2/node/Node$State;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node2;->mState:Lcom/samsung/android/app/galaxyraw/core2/node/Node$State;

    goto :goto_0

    :cond_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->getId()J

    move-result-wide p2

    iput-wide p2, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node2;->mInitializingThreadId:J

    sget-object p2, Lcom/samsung/android/app/galaxyraw/core2/node/Node$State;->INITIALIZING:Lcom/samsung/android/app/galaxyraw/core2/node/Node$State;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node2;->mState:Lcom/samsung/android/app/galaxyraw/core2/node/Node$State;
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node2;->mStateLock2:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node2;->mStateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/node/Node2;->initializeInternal(Z)V

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node2;->mStateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node2;->mStateLock2:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_2
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/node/Node2;->setActivate(Z)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node2;->mInitializedCond:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node2;->mInitializedCond2:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node2;->mStateLock2:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node2;->mStateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node2;->mStateLock2:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node2;->mStateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1

    :catchall_1
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_3
    new-instance p2, Ljava/lang/IllegalStateException;

    sget-object p3, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const-string p4, "%s: initialize fail - state transition error, %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/node/Node2;->getNodeTag()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object v3

    aput-object v3, v1, v2

    aput-object p1, v1, v0

    invoke-static {p3, p4, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_1
    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node2;->mStateLock2:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node2;->mStateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method protected varargs nativeCall2(Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "command",
            "args"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<RET:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command<",
            "TRET;>;[",
            "Ljava/lang/Object;",
            ")TRET;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;
        }
    .end annotation

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node2;->mStateLock2:Ljava/util/concurrent/locks/ReentrantLock;

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node2;->mInitializedCond2:Ljava/util/concurrent/locks/Condition;

    const-string v1, "nativeCall2"

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/galaxyraw/core2/node/Node2;->nativeCallInternal(Ljava/lang/String;Ljava/util/concurrent/locks/ReentrantLock;Ljava/util/concurrent/locks/Condition;Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public setActivate(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activate"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node2;->mStateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node2;->mStateLock2:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    invoke-super {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->setActivate(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node2;->mStateLock2:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node2;->mStateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node2;->mStateLock2:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node2;->mStateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method protected varargs tryNativeCall2(Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "command",
            "args"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<RET:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command<",
            "TRET;>;[",
            "Ljava/lang/Object;",
            ")TRET;"
        }
    .end annotation

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node2;->mStateLock2:Ljava/util/concurrent/locks/ReentrantLock;

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node2;->mInitializedCond2:Ljava/util/concurrent/locks/Condition;

    const-string v1, "tryNativeCall2"

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/galaxyraw/core2/node/Node2;->tryNativeCallInternal(Ljava/lang/String;Ljava/util/concurrent/locks/ReentrantLock;Ljava/util/concurrent/locks/Condition;Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
