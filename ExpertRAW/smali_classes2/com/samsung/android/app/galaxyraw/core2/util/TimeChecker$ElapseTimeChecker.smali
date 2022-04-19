.class Lcom/samsung/android/app/galaxyraw/core2/util/TimeChecker$ElapseTimeChecker;
.super Ljava/lang/Object;
.source "TimeChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/core2/util/TimeChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ElapseTimeChecker"
.end annotation


# instance fields
.field private mElapseTime:J

.field private mLastCheckTime:J

.field private mTimeUnit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method constructor <init>(JLjava/util/concurrent/TimeUnit;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "elapseTime",
            "timeUnit"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/core2/util/TimeChecker$ElapseTimeChecker;->setElapseTime(JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method


# virtual methods
.method public checkTime()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/TimeChecker$ElapseTimeChecker;->mLastCheckTime:J

    return-void
.end method

.method public getElapseTime(Ljava/util/concurrent/TimeUnit;)J
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timeUnit"
        }
    .end annotation

    const-string v0, "timeUnit"

    invoke-static {p1, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/ConditionChecker;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-wide v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/TimeChecker$ElapseTimeChecker;->mElapseTime:J

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/TimeChecker$ElapseTimeChecker;->mTimeUnit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, p0}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p0

    return-wide p0
.end method

.method public isElapsed()Z
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/TimeChecker$ElapseTimeChecker;->mTimeUnit:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/samsung/android/app/galaxyraw/core2/util/TimeChecker$ElapseTimeChecker;->mLastCheckTime:J

    sub-long/2addr v1, v3

    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/samsung/android/app/galaxyraw/core2/util/TimeChecker$ElapseTimeChecker;->mElapseTime:J

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setElapseTime(JLjava/util/concurrent/TimeUnit;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "elapseTime",
            "timeUnit"
        }
    .end annotation

    const-string v0, "elapseTime"

    invoke-static {p1, p2, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/ConditionChecker;->checkNonnegative(JLjava/lang/String;)J

    const-string v0, "timeUnit"

    invoke-static {p3, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/ConditionChecker;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-wide p1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/TimeChecker$ElapseTimeChecker;->mElapseTime:J

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/core2/util/TimeChecker$ElapseTimeChecker;->mTimeUnit:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/TimeChecker$ElapseTimeChecker;->mLastCheckTime:J

    return-void
.end method
