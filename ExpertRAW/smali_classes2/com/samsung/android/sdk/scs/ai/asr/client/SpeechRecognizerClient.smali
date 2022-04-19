.class public Lcom/samsung/android/sdk/scs/ai/asr/client/SpeechRecognizerClient;
.super Ljava/lang/Object;
.source "SpeechRecognizerClient.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SpeechRecognizerClient"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mListener:Lcom/samsung/android/sdk/scs/ai/asr/client/RecognitionListener;

.field private final mServiceExecutor:Lcom/samsung/android/sdk/scs/ai/asr/client/RemoteServiceExecutor;

.field private mSpeechRecognizerTask:Lcom/samsung/android/sdk/scs/ai/asr/client/SpeechRecognizerTask;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/sdk/scs/ai/asr/client/RecognitionListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/asr/client/SpeechRecognizerClient;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/sdk/scs/ai/asr/client/SpeechRecognizerClient;->mListener:Lcom/samsung/android/sdk/scs/ai/asr/client/RecognitionListener;

    new-instance p2, Lcom/samsung/android/sdk/scs/ai/asr/client/RemoteServiceExecutor;

    invoke-direct {p2, p1}, Lcom/samsung/android/sdk/scs/ai/asr/client/RemoteServiceExecutor;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/samsung/android/sdk/scs/ai/asr/client/SpeechRecognizerClient;->mServiceExecutor:Lcom/samsung/android/sdk/scs/ai/asr/client/RemoteServiceExecutor;

    return-void
.end method

.method private start(Landroid/os/ParcelFileDescriptor;)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/asr/client/SpeechRecognizerClient;->mSpeechRecognizerTask:Lcom/samsung/android/sdk/scs/ai/asr/client/SpeechRecognizerTask;

    new-instance v1, Lcom/samsung/android/sdk/scs/ai/asr/client/RecognitionServiceListener;

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/asr/client/SpeechRecognizerClient;->mListener:Lcom/samsung/android/sdk/scs/ai/asr/client/RecognitionListener;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/scs/ai/asr/client/RecognitionServiceListener;-><init>(Lcom/samsung/android/sdk/scs/ai/asr/client/RecognitionListener;)V

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/sdk/scs/ai/asr/client/SpeechRecognizerTask;->start(Landroid/os/ParcelFileDescriptor;Lcom/samsung/android/sdk/scs/ai/asr/client/RecognitionServiceListener;)Z

    move-result p0

    return p0
.end method

.method private writeToPipe(Landroid/os/ParcelFileDescriptor;Ljava/io/InputStream;)V
    .locals 3

    :try_start_0
    new-instance p0, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {p0, p1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    const/16 v0, 0x140

    :try_start_1
    new-array v0, v0, [B

    :goto_0
    invoke-virtual {p2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    if-nez v1, :cond_0

    const-wide/16 v1, 0x5

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    add-int/lit16 p1, p1, 0x140

    goto :goto_0

    :cond_1
    sget-object p2, Lcom/samsung/android/sdk/scs/ai/asr/client/SpeechRecognizerClient;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "writeToPipe done "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catchall_0
    move-exception p1

    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz p1, :cond_2

    :try_start_4
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p0

    :try_start_5
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V

    :goto_1
    throw p2
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/asr/client/SpeechRecognizerClient;->mSpeechRecognizerTask:Lcom/samsung/android/sdk/scs/ai/asr/client/SpeechRecognizerTask;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/sdk/scs/ai/asr/client/-$$Lambda$ardHRZP1Fwu7PN-zST5OcTY98C8;->INSTANCE:Lcom/samsung/android/sdk/scs/ai/asr/client/-$$Lambda$ardHRZP1Fwu7PN-zST5OcTY98C8;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public destroy()V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/asr/client/SpeechRecognizerClient;->mSpeechRecognizerTask:Lcom/samsung/android/sdk/scs/ai/asr/client/SpeechRecognizerTask;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/sdk/scs/ai/asr/client/-$$Lambda$mBo9JwM480thhr9aItGJvSHMutE;->INSTANCE:Lcom/samsung/android/sdk/scs/ai/asr/client/-$$Lambda$mBo9JwM480thhr9aItGJvSHMutE;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public synthetic lambda$start$0$SpeechRecognizerClient([Landroid/os/ParcelFileDescriptor;Ljava/io/InputStream;)V
    .locals 1

    const/4 v0, 0x1

    aget-object p1, p1, v0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/scs/ai/asr/client/SpeechRecognizerClient;->writeToPipe(Landroid/os/ParcelFileDescriptor;Ljava/io/InputStream;)V

    return-void
.end method

.method public prepare(Lcom/samsung/android/sdk/scs/ai/asr/client/RecognitionConfig;)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/asr/client/SpeechRecognizerClient;->mContext:Landroid/content/Context;

    const-string v1, "FEATURE_SPEECH_RECOGNITION"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/scs/base/feature/Feature;->checkFeature(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/asr/client/SpeechRecognizerClient;->mListener:Lcom/samsung/android/sdk/scs/ai/asr/client/RecognitionListener;

    const/16 p1, -0x14

    const-string v0, "SpeechRecognizerService is UNAVAILABLE"

    invoke-interface {p0, p1, v0}, Lcom/samsung/android/sdk/scs/ai/asr/client/RecognitionListener;->onError(ILjava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/asr/client/SpeechRecognizerClient;->mSpeechRecognizerTask:Lcom/samsung/android/sdk/scs/ai/asr/client/SpeechRecognizerTask;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/sdk/scs/ai/asr/client/SpeechRecognizerTask;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/asr/client/SpeechRecognizerClient;->mSpeechRecognizerTask:Lcom/samsung/android/sdk/scs/ai/asr/client/SpeechRecognizerTask;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/scs/ai/asr/client/SpeechRecognizerTask;->cancel()V

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/asr/client/SpeechRecognizerClient;->mSpeechRecognizerTask:Lcom/samsung/android/sdk/scs/ai/asr/client/SpeechRecognizerTask;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/scs/ai/asr/client/SpeechRecognizerTask;->destroy()V

    :cond_1
    new-instance v0, Lcom/samsung/android/sdk/scs/ai/asr/client/SpeechRecognizerTask;

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/asr/client/SpeechRecognizerClient;->mServiceExecutor:Lcom/samsung/android/sdk/scs/ai/asr/client/RemoteServiceExecutor;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/samsung/android/sdk/scs/ai/asr/client/-$$Lambda$20qf_V6nAMkcaNwWdwLSF1r3Z2o;

    invoke-direct {v2, v1}, Lcom/samsung/android/sdk/scs/ai/asr/client/-$$Lambda$20qf_V6nAMkcaNwWdwLSF1r3Z2o;-><init>(Lcom/samsung/android/sdk/scs/ai/asr/client/RemoteServiceExecutor;)V

    invoke-direct {v0, v2}, Lcom/samsung/android/sdk/scs/ai/asr/client/SpeechRecognizerTask;-><init>(Ljava/util/function/Supplier;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/asr/client/SpeechRecognizerClient;->mSpeechRecognizerTask:Lcom/samsung/android/sdk/scs/ai/asr/client/SpeechRecognizerTask;

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/asr/client/SpeechRecognizerClient;->mServiceExecutor:Lcom/samsung/android/sdk/scs/ai/asr/client/RemoteServiceExecutor;

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/scs/ai/asr/client/RemoteServiceExecutor;->execute(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/asr/client/SpeechRecognizerClient;->mSpeechRecognizerTask:Lcom/samsung/android/sdk/scs/ai/asr/client/SpeechRecognizerTask;

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/scs/ai/asr/client/SpeechRecognizerTask;->prepare(Lcom/samsung/android/sdk/scs/ai/asr/client/RecognitionConfig;)Z

    move-result p0

    return p0
.end method

.method public start(Ljava/io/InputStream;)Z
    .locals 5

    const-string v0, "Start Error"

    sget-object v1, Lcom/samsung/android/sdk/scs/ai/asr/client/SpeechRecognizerClient;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "START : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/sdk/scs/ai/asr/client/SpeechRecognizerClient;->mSpeechRecognizerTask:Lcom/samsung/android/sdk/scs/ai/asr/client/SpeechRecognizerTask;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const-string p0, "Task is NOT prepared."

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createReliablePipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    new-instance v4, Lcom/samsung/android/sdk/scs/ai/asr/client/-$$Lambda$SpeechRecognizerClient$4wzdRXieocB8goILzld0Gxi-UdE;

    invoke-direct {v4, p0, v2, p1}, Lcom/samsung/android/sdk/scs/ai/asr/client/-$$Lambda$SpeechRecognizerClient$4wzdRXieocB8goILzld0Gxi-UdE;-><init>(Lcom/samsung/android/sdk/scs/ai/asr/client/SpeechRecognizerClient;[Landroid/os/ParcelFileDescriptor;Ljava/io/InputStream;)V

    invoke-static {v4}, Ljava/util/concurrent/CompletableFuture;->runAsync(Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;

    aget-object p1, v2, v3

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/scs/ai/asr/client/SpeechRecognizerClient;->start(Landroid/os/ParcelFileDescriptor;)Z

    move-result p1

    const/4 v4, 0x1

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/asr/client/SpeechRecognizerClient;->mListener:Lcom/samsung/android/sdk/scs/ai/asr/client/RecognitionListener;

    const/16 p1, -0xa

    invoke-interface {p0, p1, v0}, Lcom/samsung/android/sdk/scs/ai/asr/client/RecognitionListener;->onError(ILjava/lang/String;)V

    aget-object p0, v2, v4

    invoke-virtual {p0, v0}, Landroid/os/ParcelFileDescriptor;->closeWithError(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p0, "STARTED"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v4

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    return v3
.end method
