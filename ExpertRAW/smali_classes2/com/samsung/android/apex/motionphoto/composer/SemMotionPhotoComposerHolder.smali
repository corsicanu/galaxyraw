.class public Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposerHolder;
.super Ljava/lang/Object;
.source "SemMotionPhotoComposerHolder.java"

# interfaces
.implements Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$OnInfoListener;
.implements Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposerHolder$Manager;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SemMotionPhotoComposerHolder"

.field private static sManager:Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposerHolder$Manager;


# instance fields
.field private mComposer:Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;

.field private mCookie:Ljava/lang/Object;

.field private mLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private mOnErrorListener:Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$OnErrorListener;

.field private mOnInfoListener:Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$OnInfoListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposerHolder$Manager;

    invoke-direct {v0}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposerHolder$Manager;-><init>()V

    sput-object v0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposerHolder;->sManager:Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposerHolder$Manager;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposerHolder;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposerHolder;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static bindComposerWithTag(Ljava/lang/String;)Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposerHolder;
    .locals 2

    new-instance v0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposerHolder;

    invoke-direct {v0}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposerHolder;-><init>()V

    iput-object p0, v0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposerHolder;->mCookie:Ljava/lang/Object;

    invoke-static {}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposerHolder;->getManager()Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposerHolder$Manager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposerHolder$Manager;->hasComposer(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposerHolder;->getManager()Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposerHolder$Manager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposerHolder$Manager;->getComposer(Ljava/lang/String;)Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;

    move-result-object p0

    iput-object p0, v0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposerHolder;->mComposer:Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;

    invoke-virtual {p0, v0}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->bindHolder(Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposerHolder;)I
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    :cond_0
    :goto_0
    return-object v0
.end method

.method public static bindComposerWithToken(I)Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposerHolder;
    .locals 2

    new-instance v0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposerHolder;

    invoke-direct {v0}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposerHolder;-><init>()V

    invoke-static {}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposerHolder;->getManager()Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposerHolder$Manager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposerHolder$Manager;->getComposer(I)Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposerHolder;->mComposer:Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iput-object p0, v0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposerHolder;->mCookie:Ljava/lang/Object;

    iget-object p0, v0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposerHolder;->mComposer:Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;

    if-eqz p0, :cond_0

    invoke-virtual {p0, v0}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->bindHolder(Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposerHolder;)I

    :cond_0
    return-object v0
.end method

.method static getManager()Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposerHolder$Manager;
    .locals 1

    sget-object v0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposerHolder;->sManager:Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposerHolder$Manager;

    return-object v0
.end method

.method private waitAndBind()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposerHolder;->mCookie:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposerHolder;->getManager()Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposerHolder$Manager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposerHolder;->mCookie:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposerHolder$Manager;->getComposer(Ljava/lang/String;)Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposerHolder;->mComposer:Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposerHolder;->getManager()Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposerHolder$Manager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposerHolder;->mCookie:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposerHolder$Manager;->getComposer(I)Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposerHolder;->mComposer:Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposerHolder;->mComposer:Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->bindHolder(Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposerHolder;)I

    :cond_1
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposerHolder;->release()V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public onError(IIILjava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposerHolder;->mOnErrorListener:Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$OnErrorListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$OnErrorListener;->onError(IIILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onInfo(IIILjava/lang/Object;)V
    .locals 4

    sget-object v0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposerHolder;->TAG:Ljava/lang/String;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string v2, "onInfo: %d %d %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x2722

    if-eq p1, v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposerHolder;->mOnInfoListener:Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$OnInfoListener;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$OnInfoListener;->onInfo(IIILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposerHolder;->release()V

    :cond_1
    :goto_0
    return-void
.end method

.method public prepareStore(IJ)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposerHolder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const-string v3, "prepareStore: rot=%d, ts=%d"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposerHolder;->mComposer:Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposerHolder;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposerHolder;->mComposer:Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposerHolder;->waitAndBind()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposerHolder;->mComposer:Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->store(IJ)J

    move-result-wide p1
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iget-object p0, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposerHolder;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-wide p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    invoke-virtual {p1}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide/16 p1, -0x1

    goto :goto_0

    :goto_1
    iget-object p0, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposerHolder;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public release()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposerHolder;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposerHolder;->mComposer:Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->unbindHolder(Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposerHolder;)I

    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposerHolder;->mComposer:Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;

    invoke-virtual {v0}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposerHolder;->mComposer:Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;

    sget-object v0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposerHolder;->TAG:Ljava/lang/String;

    const-string v1, "composer released"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposerHolder;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposerHolder;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public setOnErrorListener(Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$OnErrorListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposerHolder;->mOnErrorListener:Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$OnErrorListener;

    return-void
.end method

.method public setOnInforListener(Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$OnInfoListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposerHolder;->mOnInfoListener:Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$OnInfoListener;

    return-void
.end method

.method public store(Landroid/os/Bundle;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposerHolder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "store: data="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposerHolder;->mComposer:Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposerHolder;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposerHolder;->mComposer:Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposerHolder;->waitAndBind()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposerHolder;->mComposer:Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;

    invoke-virtual {v0, p1}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->setStoreData(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    invoke-virtual {p1}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    iget-object p0, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposerHolder;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :goto_1
    iget-object p0, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposerHolder;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method
