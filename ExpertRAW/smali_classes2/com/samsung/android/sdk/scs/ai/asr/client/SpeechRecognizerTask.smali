.class Lcom/samsung/android/sdk/scs/ai/asr/client/SpeechRecognizerTask;
.super Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;
.source "SpeechRecognizerTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/scs/ai/asr/client/SpeechRecognizerTask$ListenerWrapper;,
        Lcom/samsung/android/sdk/scs/ai/asr/client/SpeechRecognizerTask$Status;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final EXECUTION_TIMEOUT:J = 0x1388L

.field private static final TAG:Ljava/lang/String; = "SpeechRecognizerTask"


# instance fields
.field private final mCommandQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/util/function/Consumer<",
            "Lcom/samsung/android/scs/ai/sdkcommon/asr/ISpeechRecognizerService;",
            ">;>;"
        }
    .end annotation
.end field

.field private mConfig:Lcom/samsung/android/sdk/scs/ai/asr/client/RecognitionConfig;

.field private final mServiceSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Lcom/samsung/android/scs/ai/sdkcommon/asr/ISpeechRecognizerService;",
            ">;"
        }
    .end annotation
.end field

.field private status:Lcom/samsung/android/sdk/scs/ai/asr/client/SpeechRecognizerTask$Status;


# direct methods
.method public constructor <init>(Ljava/util/function/Supplier;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Lcom/samsung/android/scs/ai/sdkcommon/asr/ISpeechRecognizerService;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;-><init>()V

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/asr/client/SpeechRecognizerTask;->mCommandQueue:Ljava/util/concurrent/BlockingQueue;

    sget-object v0, Lcom/samsung/android/sdk/scs/ai/asr/client/SpeechRecognizerTask$Status;->IDLE:Lcom/samsung/android/sdk/scs/ai/asr/client/SpeechRecognizerTask$Status;

    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/asr/client/SpeechRecognizerTask;->status:Lcom/samsung/android/sdk/scs/ai/asr/client/SpeechRecognizerTask$Status;

    const-string v0, "SpeechRecognizerTask"

    invoke-static {v0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/asr/client/SpeechRecognizerTask;->mServiceSupplier:Ljava/util/function/Supplier;

    return-void
.end method

.method public static synthetic lambda$gtEyFkrgJbzGle_N8US82At3p4s(Lcom/samsung/android/sdk/scs/ai/asr/client/SpeechRecognizerTask;Lcom/samsung/android/sdk/scs/ai/asr/client/SpeechRecognizerTask$Status;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/scs/ai/asr/client/SpeechRecognizerTask;->setStatus(Lcom/samsung/android/sdk/scs/ai/asr/client/SpeechRecognizerTask$Status;)V

    return-void
.end method

.method private declared-synchronized setStatus(Lcom/samsung/android/sdk/scs/ai/asr/client/SpeechRecognizerTask$Status;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "SpeechRecognizerTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "status : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/asr/client/SpeechRecognizerTask;->status:Lcom/samsung/android/sdk/scs/ai/asr/client/SpeechRecognizerTask$Status;

    sget-object v0, Lcom/samsung/android/sdk/scs/ai/asr/client/SpeechRecognizerTask$Status;->ERROR:Lcom/samsung/android/sdk/scs/ai/asr/client/SpeechRecognizerTask$Status;

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lcom/samsung/android/sdk/scs/ai/asr/client/SpeechRecognizerTask;->status:Lcom/samsung/android/sdk/scs/ai/asr/client/SpeechRecognizerTask$Status;

    sget-object v0, Lcom/samsung/android/sdk/scs/ai/asr/client/SpeechRecognizerTask$Status;->FINISHED:Lcom/samsung/android/sdk/scs/ai/asr/client/SpeechRecognizerTask$Status;

    if-ne p1, v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/scs/ai/asr/client/SpeechRecognizerTask;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public cancel()V
    .locals 2

    const-string v0, "SpeechRecognizerTask"

    const-string v1, "cancel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/asr/client/SpeechRecognizerTask;->mCommandQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/asr/client/-$$Lambda$SpeechRecognizerTask$uLxdyFpea-3IncZ7gCtxTkHDgT8;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/scs/ai/asr/client/-$$Lambda$SpeechRecognizerTask$uLxdyFpea-3IncZ7gCtxTkHDgT8;-><init>(Lcom/samsung/android/sdk/scs/ai/asr/client/SpeechRecognizerTask;)V

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/asr/client/SpeechRecognizerTask;->mCommandQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {p0, v0}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    return-void
.end method

.method public destroy()V
    .locals 2

    const-string v0, "SpeechRecognizerTask"

    const-string v1, "destroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/asr/client/SpeechRecognizerTask;->status:Lcom/samsung/android/sdk/scs/ai/asr/client/SpeechRecognizerTask$Status;

    sget-object v1, Lcom/samsung/android/sdk/scs/ai/asr/client/SpeechRecognizerTask$Status;->WORKING:Lcom/samsung/android/sdk/scs/ai/asr/client/SpeechRecognizerTask$Status;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/scs/ai/asr/client/SpeechRecognizerTask;->cancel()V

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/scs/ai/asr/client/-$$Lambda$SpeechRecognizerTask$nd8PLiXmyStEKsBtM95nhTMa0gg;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/scs/ai/asr/client/-$$Lambda$SpeechRecognizerTask$nd8PLiXmyStEKsBtM95nhTMa0gg;-><init>(Lcom/samsung/android/sdk/scs/ai/asr/client/SpeechRecognizerTask;)V

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/asr/client/SpeechRecognizerTask;->mCommandQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {p0, v0}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    return-void
.end method

.method public execute()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/asr/client/SpeechRecognizerTask;->mServiceSupplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/scs/ai/sdkcommon/asr/ISpeechRecognizerService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "START : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SpeechRecognizerTask"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/asr/client/SpeechRecognizerTask;->status:Lcom/samsung/android/sdk/scs/ai/asr/client/SpeechRecognizerTask$Status;

    sget-object v3, Lcom/samsung/android/sdk/scs/ai/asr/client/SpeechRecognizerTask$Status;->DESTROYED:Lcom/samsung/android/sdk/scs/ai/asr/client/SpeechRecognizerTask$Status;

    if-eq v1, v3, :cond_2

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/asr/client/SpeechRecognizerTask;->mCommandQueue:Ljava/util/concurrent/BlockingQueue;

    const-wide/16 v3, 0x1388

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v3, v4, v5}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/function/Consumer;

    if-eqz v1, :cond_1

    invoke-interface {v1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/asr/client/SpeechRecognizerTask;->status:Lcom/samsung/android/sdk/scs/ai/asr/client/SpeechRecognizerTask$Status;

    sget-object v3, Lcom/samsung/android/sdk/scs/ai/asr/client/SpeechRecognizerTask$Status;->WORKING:Lcom/samsung/android/sdk/scs/ai/asr/client/SpeechRecognizerTask$Status;

    if-eq v1, v3, :cond_0

    const-string v1, "TIMEOUT"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/sdk/scs/ai/asr/client/SpeechRecognizerTask;->destroy()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :cond_2
    const-string p0, "FINISHED"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getConfig()Lcom/samsung/android/sdk/scs/ai/asr/client/RecognitionConfig;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/asr/client/SpeechRecognizerTask;->mConfig:Lcom/samsung/android/sdk/scs/ai/asr/client/RecognitionConfig;

    return-object p0
.end method

.method public getFeatureName()Ljava/lang/String;
    .locals 0

    const-string p0, "FEATURE_SPEECH_RECOGNITION"

    return-object p0
.end method

.method public declared-synchronized isAlive()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/asr/client/SpeechRecognizerTask;->status:Lcom/samsung/android/sdk/scs/ai/asr/client/SpeechRecognizerTask$Status;

    sget-object v1, Lcom/samsung/android/sdk/scs/ai/asr/client/SpeechRecognizerTask$Status;->DESTROYED:Lcom/samsung/android/sdk/scs/ai/asr/client/SpeechRecognizerTask$Status;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public synthetic lambda$cancel$2$SpeechRecognizerTask(Lcom/samsung/android/scs/ai/sdkcommon/asr/ISpeechRecognizerService;)V
    .locals 0

    :try_start_0
    invoke-interface {p1}, Lcom/samsung/android/scs/ai/sdkcommon/asr/ISpeechRecognizerService;->cancel()V

    sget-object p1, Lcom/samsung/android/sdk/scs/ai/asr/client/SpeechRecognizerTask$Status;->READY:Lcom/samsung/android/sdk/scs/ai/asr/client/SpeechRecognizerTask$Status;

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/scs/ai/asr/client/SpeechRecognizerTask;->setStatus(Lcom/samsung/android/sdk/scs/ai/asr/client/SpeechRecognizerTask$Status;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public synthetic lambda$destroy$3$SpeechRecognizerTask(Lcom/samsung/android/scs/ai/sdkcommon/asr/ISpeechRecognizerService;)V
    .locals 0

    :try_start_0
    invoke-interface {p1}, Lcom/samsung/android/scs/ai/sdkcommon/asr/ISpeechRecognizerService;->destroy()Z

    sget-object p1, Lcom/samsung/android/sdk/scs/ai/asr/client/SpeechRecognizerTask$Status;->DESTROYED:Lcom/samsung/android/sdk/scs/ai/asr/client/SpeechRecognizerTask$Status;

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/scs/ai/asr/client/SpeechRecognizerTask;->setStatus(Lcom/samsung/android/sdk/scs/ai/asr/client/SpeechRecognizerTask$Status;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public synthetic lambda$prepare$0$SpeechRecognizerTask(Ljava/util/concurrent/CompletableFuture;Lcom/samsung/android/scs/ai/sdkcommon/asr/ISpeechRecognizerService;)V
    .locals 3

    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "locale"

    iget-object v2, p0, Lcom/samsung/android/sdk/scs/ai/asr/client/SpeechRecognizerTask;->mConfig:Lcom/samsung/android/sdk/scs/ai/asr/client/RecognitionConfig;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/scs/ai/asr/client/RecognitionConfig;->getLocale()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v0}, Lcom/samsung/android/scs/ai/sdkcommon/asr/ISpeechRecognizerService;->prepare(Landroid/os/Bundle;)Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object v0, Lcom/samsung/android/sdk/scs/ai/asr/client/SpeechRecognizerTask$Status;->READY:Lcom/samsung/android/sdk/scs/ai/asr/client/SpeechRecognizerTask$Status;

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/scs/ai/asr/client/SpeechRecognizerTask;->setStatus(Lcom/samsung/android/sdk/scs/ai/asr/client/SpeechRecognizerTask$Status;)V

    :cond_0
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public synthetic lambda$start$1$SpeechRecognizerTask(Landroid/os/ParcelFileDescriptor;Lcom/samsung/android/sdk/scs/ai/asr/client/SpeechRecognizerTask$ListenerWrapper;Ljava/util/concurrent/CompletableFuture;Lcom/samsung/android/scs/ai/sdkcommon/asr/ISpeechRecognizerService;)V
    .locals 0

    :try_start_0
    invoke-interface {p4, p1, p2}, Lcom/samsung/android/scs/ai/sdkcommon/asr/ISpeechRecognizerService;->start(Landroid/os/ParcelFileDescriptor;Lcom/samsung/android/scs/ai/sdkcommon/asr/IRecognitionListener;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p2, Lcom/samsung/android/sdk/scs/ai/asr/client/SpeechRecognizerTask$Status;->WORKING:Lcom/samsung/android/sdk/scs/ai/asr/client/SpeechRecognizerTask$Status;

    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/scs/ai/asr/client/SpeechRecognizerTask;->setStatus(Lcom/samsung/android/sdk/scs/ai/asr/client/SpeechRecognizerTask$Status;)V

    :cond_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public prepare(Lcom/samsung/android/sdk/scs/ai/asr/client/RecognitionConfig;)Z
    .locals 2

    const-string v0, "SpeechRecognizerTask"

    const-string v1, "prepare"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/asr/client/SpeechRecognizerTask;->mConfig:Lcom/samsung/android/sdk/scs/ai/asr/client/RecognitionConfig;

    new-instance p1, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {p1}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/asr/client/-$$Lambda$SpeechRecognizerTask$JPEUoLTLXlspJBVJcqzPLXVswPI;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/sdk/scs/ai/asr/client/-$$Lambda$SpeechRecognizerTask$JPEUoLTLXlspJBVJcqzPLXVswPI;-><init>(Lcom/samsung/android/sdk/scs/ai/asr/client/SpeechRecognizerTask;Ljava/util/concurrent/CompletableFuture;)V

    const/4 v1, 0x0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/asr/client/SpeechRecognizerTask;->mCommandQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {p0, v0}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Ljava/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v1
.end method

.method public start(Landroid/os/ParcelFileDescriptor;Lcom/samsung/android/sdk/scs/ai/asr/client/RecognitionServiceListener;)Z
    .locals 3

    const-string v0, "SpeechRecognizerTask"

    const-string v1, "start "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/sdk/scs/ai/asr/client/SpeechRecognizerTask;->isAlive()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string p0, "Task is NOT runnable"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/scs/ai/asr/client/SpeechRecognizerTask$ListenerWrapper;

    new-instance v1, Lcom/samsung/android/sdk/scs/ai/asr/client/-$$Lambda$SpeechRecognizerTask$gtEyFkrgJbzGle_N8US82At3p4s;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/scs/ai/asr/client/-$$Lambda$SpeechRecognizerTask$gtEyFkrgJbzGle_N8US82At3p4s;-><init>(Lcom/samsung/android/sdk/scs/ai/asr/client/SpeechRecognizerTask;)V

    invoke-direct {v0, p2, v1}, Lcom/samsung/android/sdk/scs/ai/asr/client/SpeechRecognizerTask$ListenerWrapper;-><init>(Lcom/samsung/android/sdk/scs/ai/asr/client/RecognitionServiceListener;Ljava/util/function/Consumer;)V

    new-instance p2, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {p2}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    new-instance v1, Lcom/samsung/android/sdk/scs/ai/asr/client/-$$Lambda$SpeechRecognizerTask$4kBj4fI386pzeYuEujb18Z9_JdU;

    invoke-direct {v1, p0, p1, v0, p2}, Lcom/samsung/android/sdk/scs/ai/asr/client/-$$Lambda$SpeechRecognizerTask$4kBj4fI386pzeYuEujb18Z9_JdU;-><init>(Lcom/samsung/android/sdk/scs/ai/asr/client/SpeechRecognizerTask;Landroid/os/ParcelFileDescriptor;Lcom/samsung/android/sdk/scs/ai/asr/client/SpeechRecognizerTask$ListenerWrapper;Ljava/util/concurrent/CompletableFuture;)V

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/asr/client/SpeechRecognizerTask;->mCommandQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {p0, v1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    return v2

    :cond_1
    invoke-virtual {p2}, Ljava/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v2
.end method
