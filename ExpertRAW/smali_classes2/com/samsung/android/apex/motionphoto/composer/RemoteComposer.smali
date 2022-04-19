.class Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;
.super Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;
.source "RemoteComposer.java"

# interfaces
.implements Lcom/samsung/android/apex/motionphoto/composer/utils/ConnectionManager$OnConnectionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer$ComposerListener;,
        Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer$DeathNotifier;
    }
.end annotation


# static fields
.field private static final CMD_CONNECT:I = 0x2

.field private static final CMD_GET_SURFACE:I = 0x8

.field private static final CMD_NONE:I = 0x0

.field private static final CMD_SET_PARAMETERS:I = 0x6

.field private static final CMD_START:I = 0x3

.field private static final CMD_STOP:I = 0x5

.field private static final CMD_STORE:I = 0x4

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAudioEnabled:Z

.field private mComposerListener:Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer$ComposerListener;

.field private mDeathNotifier:Landroid/os/IBinder$DeathRecipient;

.field private mLastCaptureDoneId:Ljava/util/concurrent/atomic/AtomicLong;

.field private mLastStoreId:Ljava/util/concurrent/atomic/AtomicLong;

.field private mRecorder:Lcom/samsung/android/apex/service/IMotionPhotoComposer;

.field private mRefCnt:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-remote"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance p2, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer$ComposerListener;

    invoke-direct {p2, p0}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer$ComposerListener;-><init>(Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;)V

    iput-object p2, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mComposerListener:Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer$ComposerListener;

    new-instance p2, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer$DeathNotifier;

    invoke-direct {p2, p0}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer$DeathNotifier;-><init>(Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;)V

    iput-object p2, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mDeathNotifier:Landroid/os/IBinder$DeathRecipient;

    new-instance p2, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p2, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mRefCnt:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance p2, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, -0x1

    invoke-direct {p2, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object p2, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mLastStoreId:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance p2, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p2, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object p2, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mLastCaptureDoneId:Ljava/util/concurrent/atomic/AtomicLong;

    iput-boolean v0, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mAudioEnabled:Z

    iget-object p2, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mRefCnt:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->getTag()Ljava/lang/String;

    move-result-object p2

    const-string v0, "remote-composer"

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/apex/motionphoto/composer/utils/ConnectionManager;->getInstance()Lcom/samsung/android/apex/motionphoto/composer/utils/ConnectionManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/apex/motionphoto/composer/utils/ConnectionManager;->isBound()Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p2, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->TAG:Ljava/lang/String;

    const-string v0, "Since ApexService is bound, use service"

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/apex/motionphoto/composer/utils/ConnectionManager;->getInstance()Lcom/samsung/android/apex/motionphoto/composer/utils/ConnectionManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/samsung/android/apex/motionphoto/composer/utils/ConnectionManager;->setContext(Landroid/content/Context;)V

    invoke-static {}, Lcom/samsung/android/apex/motionphoto/composer/utils/ConnectionManager;->getInstance()Lcom/samsung/android/apex/motionphoto/composer/utils/ConnectionManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/samsung/android/apex/motionphoto/composer/utils/ConnectionManager;->setConnectionListener(Lcom/samsung/android/apex/motionphoto/composer/utils/ConnectionManager$OnConnectionListener;)V

    invoke-static {}, Lcom/samsung/android/apex/motionphoto/composer/utils/ConnectionManager;->getInstance()Lcom/samsung/android/apex/motionphoto/composer/utils/ConnectionManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/apex/motionphoto/composer/utils/ConnectionManager;->getApex()Lcom/samsung/android/apex/service/IApexService;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->onServiceConnected(Lcom/samsung/android/apex/service/IApexService;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/samsung/android/apex/motionphoto/composer/utils/ConnectionManager;->getInstance()Lcom/samsung/android/apex/motionphoto/composer/utils/ConnectionManager;

    move-result-object p2

    invoke-virtual {p2, p1, p0}, Lcom/samsung/android/apex/motionphoto/composer/utils/ConnectionManager;->init(Landroid/content/Context;Lcom/samsung/android/apex/motionphoto/composer/utils/ConnectionManager$OnConnectionListener;)V

    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;)Lcom/samsung/android/apex/service/IMotionPhotoComposer;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mRecorder:Lcom/samsung/android/apex/service/IMotionPhotoComposer;

    return-object p0
.end method

.method static synthetic access$002(Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;Lcom/samsung/android/apex/service/IMotionPhotoComposer;)Lcom/samsung/android/apex/service/IMotionPhotoComposer;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mRecorder:Lcom/samsung/android/apex/service/IMotionPhotoComposer;

    return-object p1
.end method

.method static synthetic access$100(Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;)Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer$ComposerListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mComposerListener:Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer$ComposerListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;)Landroid/os/IBinder$DeathRecipient;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mDeathNotifier:Landroid/os/IBinder$DeathRecipient;

    return-object p0
.end method

.method static synthetic access$202(Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;Landroid/os/IBinder$DeathRecipient;)Landroid/os/IBinder$DeathRecipient;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mDeathNotifier:Landroid/os/IBinder$DeathRecipient;

    return-object p1
.end method


# virtual methods
.method bindHolder(Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposerHolder;)I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mOnInfoListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mOnInfoListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mOnErrorListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mOnErrorListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mRefCnt:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p0

    return p0
.end method

.method public connect()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->TAG:Ljava/lang/String;

    const-string v1, "connect"

    invoke-virtual {p0, v1}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->getStateLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mComposerHandler:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public disconnect()V
    .locals 5

    sget-object v0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->TAG:Ljava/lang/String;

    const-string v1, "disconnect"

    invoke-virtual {p0, v1}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->getStateLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer$2;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    sget-object v3, Lcom/samsung/android/apex/motionphoto/composer/State;->EXECUTING:Lcom/samsung/android/apex/motionphoto/composer/State;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-direct {v0, p0, v2}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer$2;-><init>(Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;[Ljava/lang/Object;)V

    sget-object v2, Lcom/samsung/android/apex/motionphoto/composer/State;->IDLE:Lcom/samsung/android/apex/motionphoto/composer/State;

    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->changeStateIf(Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$StateHandler;Lcom/samsung/android/apex/motionphoto/composer/State;)Lcom/samsung/android/apex/motionphoto/command/Reply;

    new-instance v0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer$3;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v3, Lcom/samsung/android/apex/motionphoto/composer/State;->IDLE:Lcom/samsung/android/apex/motionphoto/composer/State;

    aput-object v3, v2, v4

    sget-object v3, Lcom/samsung/android/apex/motionphoto/composer/State;->ERROR:Lcom/samsung/android/apex/motionphoto/composer/State;

    aput-object v3, v2, v1

    invoke-direct {v0, p0, v2}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer$3;-><init>(Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;[Ljava/lang/Object;)V

    sget-object v1, Lcom/samsung/android/apex/motionphoto/composer/State;->LOADED:Lcom/samsung/android/apex/motionphoto/composer/State;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->changeStateIf(Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$StateHandler;Lcom/samsung/android/apex/motionphoto/composer/State;)Lcom/samsung/android/apex/motionphoto/command/Reply;

    return-void
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->getTag()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mState:Lcom/samsung/android/apex/motionphoto/composer/State;

    invoke-virtual {v2}, Lcom/samsung/android/apex/motionphoto/composer/State;->name()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "getSurface[%s]"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/apex/motionphoto/composer/State;->unloaded()[Lcom/samsung/android/apex/motionphoto/composer/State;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->isStateAt([Lcom/samsung/android/apex/motionphoto/composer/State;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "not proper state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object p0, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mState:Lcom/samsung/android/apex/motionphoto/composer/State;

    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/State;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    new-instance v0, Lcom/samsung/android/apex/motionphoto/command/Reply$Token;

    invoke-direct {v0}, Lcom/samsung/android/apex/motionphoto/command/Reply$Token;-><init>()V

    sget-object v2, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer$11;->$SwitchMap$com$samsung$android$apex$motionphoto$composer$State:[I

    iget-object v3, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mState:Lcom/samsung/android/apex/motionphoto/composer/State;

    invoke-virtual {v3}, Lcom/samsung/android/apex/motionphoto/composer/State;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/16 v3, 0x8

    const/4 v4, 0x2

    if-eq v2, v4, :cond_1

    iget-object v2, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mComposerHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mComposerHandler:Landroid/os/Handler;

    invoke-virtual {p0, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v2, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/samsung/android/apex/motionphoto/composer/State;->IDLE:Lcom/samsung/android/apex/motionphoto/composer/State;

    iget-object v5, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mComposerHandler:Landroid/os/Handler;

    invoke-virtual {v5, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->queueCommand(Lcom/samsung/android/apex/motionphoto/composer/State;Landroid/os/Message;)V

    :goto_0
    invoke-virtual {v0, v4}, Lcom/samsung/android/apex/motionphoto/command/Reply$Token;->awaitResponse(I)Lcom/samsung/android/apex/motionphoto/command/Reply;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/command/Reply;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "surface"

    invoke-virtual {p0, v0}, Lcom/samsung/android/apex/motionphoto/command/Reply;->getData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/Surface;

    return-object p0

    :cond_2
    return-object v1
.end method

.method protected getTag()Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public handleLastCaptureDone(J)V
    .locals 3

    sget-object v0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleLastCaptureDone: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mAudioEnabled:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mLastCaptureDoneId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    :cond_0
    return-void
.end method

.method handleMessage(Landroid/os/Message;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->handleMessage(Landroid/os/Message;)V

    const/4 v0, 0x1

    new-array v1, v0, [Lcom/samsung/android/apex/motionphoto/composer/State;

    sget-object v2, Lcom/samsung/android/apex/motionphoto/composer/State;->UNINITIALIZED:Lcom/samsung/android/apex/motionphoto/composer/State;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0, v1}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->isStateAt([Lcom/samsung/android/apex/motionphoto/composer/State;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->getTag()Ljava/lang/String;

    move-result-object p0

    const-string p1, "already released"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_6

    const/4 v4, 0x3

    if-eq v1, v4, :cond_5

    const/4 v4, 0x4

    if-eq v1, v4, :cond_4

    const/4 v2, 0x5

    if-eq v1, v2, :cond_3

    const/4 v0, 0x6

    if-eq v1, v0, :cond_2

    const/16 v0, 0x8

    if-eq v1, v0, :cond_1

    goto/16 :goto_0

    :cond_1
    new-instance v0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer$9;

    invoke-static {}, Lcom/samsung/android/apex/motionphoto/composer/State;->connected()[Lcom/samsung/android/apex/motionphoto/composer/State;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer$9;-><init>(Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->doStateIf(Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$StateHandler;)Lcom/samsung/android/apex/motionphoto/command/Reply;

    move-result-object p0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/samsung/android/apex/motionphoto/command/Reply$Token;

    invoke-virtual {p1, p0}, Lcom/samsung/android/apex/motionphoto/command/Reply$Token;->respond(Lcom/samsung/android/apex/motionphoto/command/Reply;)V

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object p0, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mRecorder:Lcom/samsung/android/apex/service/IMotionPhotoComposer;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-interface {p0, p1}, Lcom/samsung/android/apex/service/IMotionPhotoComposer;->setParameters(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    new-instance p1, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer$10;

    new-array v0, v0, [Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/apex/motionphoto/composer/State;->EXECUTING:Lcom/samsung/android/apex/motionphoto/composer/State;

    aput-object v1, v0, v3

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer$10;-><init>(Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;[Ljava/lang/Object;)V

    sget-object v0, Lcom/samsung/android/apex/motionphoto/composer/State;->IDLE:Lcom/samsung/android/apex/motionphoto/composer/State;

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->changeStateIf(Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$StateHandler;Lcom/samsung/android/apex/motionphoto/composer/State;)Lcom/samsung/android/apex/motionphoto/command/Reply;

    goto :goto_0

    :cond_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/samsung/android/apex/motionphoto/command/Reply$Token;

    new-instance v1, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer$8;

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v4, Lcom/samsung/android/apex/motionphoto/composer/State;->EXECUTING:Lcom/samsung/android/apex/motionphoto/composer/State;

    aput-object v4, v2, v3

    aput-object p1, v2, v0

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer$8;-><init>(Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;[Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->doStateIf(Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$StateHandler;)Lcom/samsung/android/apex/motionphoto/command/Reply;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/command/Reply;->isSuccess()Z

    move-result p0

    if-nez p0, :cond_7

    new-instance p0, Lcom/samsung/android/apex/motionphoto/command/Reply;

    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "id"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/apex/motionphoto/command/Reply;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1, p0}, Lcom/samsung/android/apex/motionphoto/command/Reply$Token;->respond(Lcom/samsung/android/apex/motionphoto/command/Reply;)V

    goto :goto_0

    :cond_5
    new-instance v1, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer$7;

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v4, Lcom/samsung/android/apex/motionphoto/composer/State;->IDLE:Lcom/samsung/android/apex/motionphoto/composer/State;

    aput-object v4, v2, v3

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    aput-object p1, v2, v0

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer$7;-><init>(Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;[Ljava/lang/Object;)V

    sget-object p1, Lcom/samsung/android/apex/motionphoto/composer/State;->EXECUTING:Lcom/samsung/android/apex/motionphoto/composer/State;

    invoke-virtual {p0, v1, p1}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->changeStateIf(Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$StateHandler;Lcom/samsung/android/apex/motionphoto/composer/State;)Lcom/samsung/android/apex/motionphoto/command/Reply;

    goto :goto_0

    :cond_6
    new-instance p1, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer$6;

    new-array v1, v2, [Ljava/lang/Object;

    sget-object v2, Lcom/samsung/android/apex/motionphoto/composer/State;->LOADED:Lcom/samsung/android/apex/motionphoto/composer/State;

    aput-object v2, v1, v3

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    aput-object v2, v1, v0

    invoke-direct {p1, p0, v1}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer$6;-><init>(Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;[Ljava/lang/Object;)V

    sget-object v0, Lcom/samsung/android/apex/motionphoto/composer/State;->IDLE:Lcom/samsung/android/apex/motionphoto/composer/State;

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->changeStateIf(Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$StateHandler;Lcom/samsung/android/apex/motionphoto/composer/State;)Lcom/samsung/android/apex/motionphoto/command/Reply;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/apex/motionphoto/command/Reply;->isSuccess()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mComposerListener:Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer$ComposerListener;

    if-eqz p1, :cond_7

    const/16 v0, 0x2716

    iget p0, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mToken:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p0, v3, v1}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer$ComposerListener;->notifyAsync(IIILandroid/os/Bundle;)V

    :cond_7
    :goto_0
    return-void
.end method

.method public isConnected()Z
    .locals 1

    invoke-static {}, Lcom/samsung/android/apex/motionphoto/composer/State;->connected()[Lcom/samsung/android/apex/motionphoto/composer/State;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->isStateAt([Lcom/samsung/android/apex/motionphoto/composer/State;)Z

    move-result p0

    return p0
.end method

.method public onEvent(IIILjava/lang/Object;)V
    .locals 5

    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->getTag()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v1, v4

    iget v2, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mToken:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x3

    aput-object v2, v1, v4

    const-string v2, "onEvent: what=%d, arg1=%d, arg2=%d, token=%d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x2700

    if-ne p2, v0, :cond_0

    sget-object v0, Lcom/samsung/android/apex/motionphoto/composer/State;->ERROR:Lcom/samsung/android/apex/motionphoto/composer/State;

    invoke-virtual {p0, v0}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->changeState(Lcom/samsung/android/apex/motionphoto/composer/State;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x2722

    if-ne p2, v0, :cond_1

    iget v0, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mToken:I

    if-ne p3, v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "composer updated with exist key"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mRecorder:Lcom/samsung/android/apex/service/IMotionPhotoComposer;

    invoke-interface {v0}, Lcom/samsung/android/apex/service/IMotionPhotoComposer;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mDeathNotifier:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v0, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mRecorder:Lcom/samsung/android/apex/service/IMotionPhotoComposer;

    iput-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mDeathNotifier:Landroid/os/IBinder$DeathRecipient;

    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->onEvent(IIILjava/lang/Object;)V

    return-void
.end method

.method public onServiceConnected(Lcom/samsung/android/apex/service/IApexService;)V
    .locals 4

    sget-object v0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->TAG:Ljava/lang/String;

    const-string v1, "service is connected successfully"

    invoke-virtual {p0, v1}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->getStateLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer$1;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lcom/samsung/android/apex/motionphoto/composer/State;->UNINITIALIZED:Lcom/samsung/android/apex/motionphoto/composer/State;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer$1;-><init>(Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->doStateIfNot(Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$StateHandler;)Lcom/samsung/android/apex/motionphoto/command/Reply;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/apex/motionphoto/command/Reply;->isSuccess()Z

    move-result p1

    if-nez p1, :cond_0

    new-array p1, v2, [Lcom/samsung/android/apex/motionphoto/composer/State;

    sget-object v0, Lcom/samsung/android/apex/motionphoto/composer/State;->UNINITIALIZED:Lcom/samsung/android/apex/motionphoto/composer/State;

    aput-object v0, p1, v3

    invoke-virtual {p0, p1}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->isStateAt([Lcom/samsung/android/apex/motionphoto/composer/State;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->getTag()Ljava/lang/String;

    move-result-object p0

    const-string p1, "but composer is released, try unbind"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/apex/motionphoto/composer/utils/ConnectionManager;->getInstance()Lcom/samsung/android/apex/motionphoto/composer/utils/ConnectionManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/utils/ConnectionManager;->unbind()V

    :cond_0
    return-void
.end method

.method public onServiceDisconnected()V
    .locals 2

    sget-object v0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->TAG:Ljava/lang/String;

    const-string v1, "unwanted disconnection with ApexService"

    invoke-virtual {p0, v1}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->getStateLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/apex/motionphoto/composer/State;->ERROR:Lcom/samsung/android/apex/motionphoto/composer/State;

    invoke-virtual {p0, v0}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->changeState(Lcom/samsung/android/apex/motionphoto/composer/State;)V

    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->disconnect()V

    return-void
.end method

.method public release()V
    .locals 6

    iget-boolean v0, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mAudioEnabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "last-store-id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mLastStoreId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", last-capture-done-id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mLastCaptureDoneId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mLastStoreId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mLastCaptureDoneId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mComposerListener:Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer$ComposerListener;

    if-eqz v0, :cond_0

    const/16 v2, 0xbb9

    const/16 v3, 0x2724

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer$ComposerListener;->notify(IIILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mRefCnt:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    sget-object v2, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "release[ref-cnt="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->getStateLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-super {p0}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->release()V

    iput-object v1, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mComposerListener:Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer$ComposerListener;

    return-void
.end method

.method public setParameters(Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->getTag()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mState:Lcom/samsung/android/apex/motionphoto/composer/State;

    invoke-virtual {v2}, Lcom/samsung/android/apex/motionphoto/composer/State;->name()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "setParameters[%s]"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/apex/motionphoto/composer/State;->unloaded()[Lcom/samsung/android/apex/motionphoto/composer/State;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->isStateAt([Lcom/samsung/android/apex/motionphoto/composer/State;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->getTag()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "not proper state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mState:Lcom/samsung/android/apex/motionphoto/composer/State;

    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/State;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-object v0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer$11;->$SwitchMap$com$samsung$android$apex$motionphoto$composer$State:[I

    iget-object v1, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mState:Lcom/samsung/android/apex/motionphoto/composer/State;

    invoke-virtual {v1}, Lcom/samsung/android/apex/motionphoto/composer/State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x6

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mComposerHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mComposerHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters;->flatten()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/samsung/android/apex/motionphoto/composer/State;->IDLE:Lcom/samsung/android/apex/motionphoto/composer/State;

    iget-object v1, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mComposerHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters;->flatten()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->queueCommand(Lcom/samsung/android/apex/motionphoto/composer/State;Landroid/os/Message;)V

    :goto_0
    return-void
.end method

.method public setStoreData(Landroid/os/Bundle;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer$5;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {}, Lcom/samsung/android/apex/motionphoto/composer/State;->connected()[Lcom/samsung/android/apex/motionphoto/composer/State;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer$5;-><init>(Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->doStateIf(Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$StateHandler;)Lcom/samsung/android/apex/motionphoto/command/Reply;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/apex/motionphoto/command/Reply;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/apex/motionphoto/composer/State;->disconnected()[Lcom/samsung/android/apex/motionphoto/composer/State;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->isStateAt([Lcom/samsung/android/apex/motionphoto/composer/State;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ignore after release or in error state"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mComposerListener:Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer$ComposerListener;

    if-eqz v0, :cond_0

    const-wide/16 v0, -0x1

    const-string v2, "id"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object p0, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mComposerListener:Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer$ComposerListener;

    const/16 v0, 0xbb9

    const/16 v1, 0x271b

    invoke-virtual {p0, v0, v1, v3, p1}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer$ComposerListener;->notifyAsync(IIILandroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public setStorePath(JLjava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->getTag()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mState:Lcom/samsung/android/apex/motionphoto/composer/State;

    invoke-virtual {v3}, Lcom/samsung/android/apex/motionphoto/composer/State;->name()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const/4 v3, 0x2

    aput-object p3, v2, v3

    const-string v6, "setStorePath[%s]: id=%d, path=%s"

    invoke-static {v6, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v6, 0x0

    cmp-long v0, p1, v6

    if-ltz v0, :cond_0

    new-instance v0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer$4;

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lcom/samsung/android/apex/motionphoto/composer/State;->EXECUTING:Lcom/samsung/android/apex/motionphoto/composer/State;

    aput-object v2, v1, v4

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v1, v5

    aput-object p3, v1, v3

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer$4;-><init>(Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->doStateIf(Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$StateHandler;)Lcom/samsung/android/apex/motionphoto/command/Reply;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->getTag()Ljava/lang/String;

    move-result-object p0

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "invalid id: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public start(Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters;->flatten()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->getStateLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/apex/motionphoto/composer/State;->EXECUTING:Lcom/samsung/android/apex/motionphoto/composer/State;

    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->removeCommand(Lcom/samsung/android/apex/motionphoto/composer/State;I)Z

    const-string v0, "audio-enable"

    invoke-virtual {p1, v0}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters;->contains(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mAudioEnabled:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mAudioEnabled:Z

    :goto_0
    sget-object v0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer$11;->$SwitchMap$com$samsung$android$apex$motionphoto$composer$State:[I

    iget-object v1, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mState:Lcom/samsung/android/apex/motionphoto/composer/State;

    invoke-virtual {v1}, Lcom/samsung/android/apex/motionphoto/composer/State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    if-eq v0, v2, :cond_4

    const/4 v1, 0x2

    const/4 v2, 0x3

    if-eq v0, v1, :cond_3

    if-eq v0, v2, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->getTag()Ljava/lang/String;

    move-result-object p1

    const-string v0, "can not handle"

    invoke-virtual {p0, v0}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->getStateLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mComposerHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mComposerHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters;->flatten()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/samsung/android/apex/motionphoto/composer/State;->IDLE:Lcom/samsung/android/apex/motionphoto/composer/State;

    iget-object v1, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mComposerHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters;->flatten()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->queueCommand(Lcom/samsung/android/apex/motionphoto/composer/State;Landroid/os/Message;)V

    goto :goto_1

    :cond_3
    sget-object v0, Lcom/samsung/android/apex/motionphoto/composer/State;->IDLE:Lcom/samsung/android/apex/motionphoto/composer/State;

    iget-object v1, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mComposerHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters;->flatten()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->queueCommand(Lcom/samsung/android/apex/motionphoto/composer/State;Landroid/os/Message;)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->getTag()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ignore after release"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public stop()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "stop"

    invoke-virtual {p0, v1}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->getStateLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/apex/motionphoto/composer/State;->IDLE:Lcom/samsung/android/apex/motionphoto/composer/State;

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->removeCommand(Lcom/samsung/android/apex/motionphoto/composer/State;I)Z

    sget-object v0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer$11;->$SwitchMap$com$samsung$android$apex$motionphoto$composer$State:[I

    iget-object v2, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mState:Lcom/samsung/android/apex/motionphoto/composer/State;

    invoke-virtual {v2}, Lcom/samsung/android/apex/motionphoto/composer/State;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v2, 0x2

    const/4 v3, 0x5

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "can not handle"

    invoke-virtual {p0, v1}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->getStateLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mComposerHandler:Landroid/os/Handler;

    invoke-virtual {p0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/samsung/android/apex/motionphoto/composer/State;->IDLE:Lcom/samsung/android/apex/motionphoto/composer/State;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->removeCommand(Lcom/samsung/android/apex/motionphoto/composer/State;I)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/samsung/android/apex/motionphoto/composer/State;->EXECUTING:Lcom/samsung/android/apex/motionphoto/composer/State;

    iget-object v1, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mComposerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->queueCommand(Lcom/samsung/android/apex/motionphoto/composer/State;Landroid/os/Message;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->getTag()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ignore after release"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-void
.end method

.method public store()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->getTag()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mState:Lcom/samsung/android/apex/motionphoto/composer/State;

    invoke-virtual {v2}, Lcom/samsung/android/apex/motionphoto/composer/State;->name()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "store[%s]"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->store(Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;)J

    move-result-wide v0

    return-wide v0
.end method

.method public store(I)J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;

    invoke-direct {v0}, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;-><init>()V

    invoke-virtual {v0, p1}, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->setRotation(I)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->store(Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;)J

    move-result-wide p0

    return-wide p0
.end method

.method public store(IJ)J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;

    invoke-direct {v0}, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;-><init>()V

    invoke-virtual {v0, p1}, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->setRotation(I)V

    invoke-virtual {v0, p2, p3}, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->setTimestamp(J)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->store(Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;)J

    move-result-wide p0

    return-wide p0
.end method

.method public store(Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->getTag()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mState:Lcom/samsung/android/apex/motionphoto/composer/State;

    invoke-virtual {v3}, Lcom/samsung/android/apex/motionphoto/composer/State;->name()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    if-eqz p1, :cond_0

    move-object v3, p1

    goto :goto_0

    :cond_0
    const-string v3, "null"

    :goto_0
    const/4 v4, 0x1

    aput-object v3, v2, v4

    const-string v3, "store[%s]: %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_1

    new-instance p1, Lcom/samsung/android/apex/motionphoto/command/Reply$Token;

    invoke-direct {p1}, Lcom/samsung/android/apex/motionphoto/command/Reply$Token;-><init>()V

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/samsung/android/apex/motionphoto/command/Reply$Token;

    invoke-direct {v0, p1}, Lcom/samsung/android/apex/motionphoto/command/Reply$Token;-><init>(Ljava/lang/Object;)V

    move-object p1, v0

    :goto_1
    sget-object v0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer$11;->$SwitchMap$com$samsung$android$apex$motionphoto$composer$State:[I

    iget-object v2, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mState:Lcom/samsung/android/apex/motionphoto/composer/State;

    invoke-virtual {v2}, Lcom/samsung/android/apex/motionphoto/composer/State;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const-wide/16 v2, -0x1

    const/4 v4, 0x4

    const/4 v5, 0x3

    if-eq v0, v1, :cond_3

    if-eq v0, v5, :cond_2

    if-eq v0, v4, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->getTag()Ljava/lang/String;

    move-result-object p1

    const-string v0, "can not handle"

    invoke-virtual {p0, v0}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->getStateLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v2

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mComposerHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mComposerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mComposerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->getTag()Ljava/lang/String;

    move-result-object p1

    const-string v0, "invalid store call, already stopped"

    invoke-virtual {p0, v0}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->getStateLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v2

    :cond_4
    sget-object v0, Lcom/samsung/android/apex/motionphoto/composer/State;->EXECUTING:Lcom/samsung/android/apex/motionphoto/composer/State;

    iget-object v1, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mComposerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->queueCommand(Lcom/samsung/android/apex/motionphoto/composer/State;Landroid/os/Message;)V

    :goto_2
    invoke-virtual {p1, v5}, Lcom/samsung/android/apex/motionphoto/command/Reply$Token;->awaitResponse(I)Lcom/samsung/android/apex/motionphoto/command/Reply;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/samsung/android/apex/motionphoto/command/Reply;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mLastStoreId:Ljava/util/concurrent/atomic/AtomicLong;

    const-string v1, "id"

    invoke-virtual {p1, v1}, Lcom/samsung/android/apex/motionphoto/command/Reply;->getData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    iget-object p0, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mLastStoreId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide p0

    return-wide p0

    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->getTag()Ljava/lang/String;

    move-result-object p0

    const-string p1, "for 3s, store is not finished"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v2
.end method

.method unbindHolder(Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposerHolder;)I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mOnInfoListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mOnErrorListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mRefCnt:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    return p0
.end method
