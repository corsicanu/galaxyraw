.class public Lcom/samsung/android/app/galaxyraw/core2/util/FlagLock;
.super Ljava/util/concurrent/locks/ReentrantLock;
.source "FlagLock.java"


# instance fields
.field private mFlag:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fair"
        }
    .end annotation

    invoke-direct {p0, p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public enableFlag(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/util/FlagLock;->lock()V

    :try_start_0
    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/FlagLock;->mFlag:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/util/FlagLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/util/FlagLock;->unlock()V

    throw p1
.end method

.method public lockIfFlagEnabled()Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/util/FlagLock;->lock()V

    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/FlagLock;->mFlag:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/util/FlagLock;->unlock()V

    const/4 p0, 0x0

    return p0
.end method
