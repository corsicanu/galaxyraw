.class public Lcom/samsung/android/app/galaxyraw/core2/util/Sequencer;
.super Ljava/lang/Object;
.source "Sequencer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/core2/util/Sequencer$SequenceCallback;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;


# instance fields
.field private final mConditionListMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mCurrentConditionListMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mCurrentSequenceIndex:I

.field private mCurrentSequenceStarted:Z

.field private final mName:Ljava/lang/String;

.field private mSequenceCallback:Lcom/samsung/android/app/galaxyraw/core2/util/Sequencer$SequenceCallback;

.field private final mSequenceData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mSequenceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-class v1, Lcom/samsung/android/app/galaxyraw/core2/util/Sequencer;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/util/Sequencer;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "sequences"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/Sequencer;->mConditionListMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/Sequencer;->mCurrentConditionListMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/Sequencer;->mSequenceData:Ljava/util/Map;

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/Sequencer;->mCurrentSequenceIndex:I

    const-string v0, "name"

    invoke-static {p1, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/ConditionChecker;->checkNotEmpty(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    const-string v0, "sequences"

    invoke-static {p2, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/ConditionChecker;->checkArrayLengthNotZero([Ljava/lang/Object;Ljava/lang/String;)[Ljava/lang/Object;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/Sequencer;->mName:Ljava/lang/String;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/Sequencer;->mSequenceList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public varargs declared-synchronized addCondition(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "sequence",
            "conditions"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/Sequencer;->mSequenceList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/Sequencer;->mConditionListMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    sget-object v0, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const-string v1, "%s addSubSequence fail - sequence %s is not contained sequence list"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/core2/util/Sequencer;->mName:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized clearSequence()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/Sequencer;->mCurrentSequenceStarted:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/Sequencer;->mCurrentSequenceIndex:I

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/Sequencer;->mSequenceCallback:Lcom/samsung/android/app/galaxyraw/core2/util/Sequencer$SequenceCallback;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/util/Sequencer;->mSequenceList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/Sequencer$SequenceCallback;->onSequenceComplete(Ljava/lang/String;)V

    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/Sequencer;->mCurrentSequenceIndex:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/Sequencer;->mCurrentSequenceStarted:Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/Sequencer;->mCurrentConditionListMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/Sequencer;->mSequenceData:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized endSequence(Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sequence"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/Sequencer;->mSequenceList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ltz v0, :cond_5

    iget v4, p0, Lcom/samsung/android/app/galaxyraw/core2/util/Sequencer;->mCurrentSequenceIndex:I

    if-eq v4, v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v4, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const-string v5, "%s endSequence fail - sequence %s is not current sequence %s"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/samsung/android/app/galaxyraw/core2/util/Sequencer;->mName:Ljava/lang/String;

    aput-object v7, v6, v3

    aput-object p1, v6, v2

    iget p1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/Sequencer;->mCurrentSequenceIndex:I

    const/4 v2, -0x1

    if-le p1, v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/util/Sequencer;->mSequenceList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "NONE"

    :goto_0
    aput-object p1, v6, v1

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-boolean v4, p0, Lcom/samsung/android/app/galaxyraw/core2/util/Sequencer;->mCurrentSequenceStarted:Z

    if-eqz v4, :cond_4

    iput-boolean v3, p0, Lcom/samsung/android/app/galaxyraw/core2/util/Sequencer;->mCurrentSequenceStarted:Z

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/core2/util/Sequencer;->mSequenceData:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/core2/util/Sequencer;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v5, "%s endSequence - sequence %s"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/samsung/android/app/galaxyraw/core2/util/Sequencer;->mName:Ljava/lang/String;

    aput-object v6, v1, v3

    aput-object p1, v1, v2

    invoke-static {v4, v5, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/Sequencer;->mSequenceCallback:Lcom/samsung/android/app/galaxyraw/core2/util/Sequencer$SequenceCallback;

    if-eqz v1, :cond_2

    invoke-interface {v1, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/Sequencer$SequenceCallback;->onSequenceComplete(Ljava/lang/String;)V

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/Sequencer;->mSequenceList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v2

    if-ne v0, p1, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/util/Sequencer;->clearSequence()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit p0

    return-void

    :cond_4
    :try_start_1
    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;

    sget-object v4, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const-string v5, "%s endSequence fail - sequence %s is not started or ended, it must be started"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/samsung/android/app/galaxyraw/core2/util/Sequencer;->mName:Ljava/lang/String;

    aput-object v6, v1, v3

    aput-object p1, v1, v2

    invoke-static {v4, v5, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v4, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const-string v5, "%s endSequence fail - sequence %s is not contained sequence list"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/samsung/android/app/galaxyraw/core2/util/Sequencer;->mName:Ljava/lang/String;

    aput-object v6, v1, v3

    aput-object p1, v1, v2

    invoke-static {v4, v5, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized endSequence(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "sequence",
            "condition"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/Sequencer;->mSequenceList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ltz v0, :cond_7

    iget v4, p0, Lcom/samsung/android/app/galaxyraw/core2/util/Sequencer;->mCurrentSequenceIndex:I

    const/4 v5, 0x3

    if-eq v4, v0, :cond_1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    sget-object v0, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const-string v4, "%s endSequence fail - sequence %s is not current sequence %s"

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/samsung/android/app/galaxyraw/core2/util/Sequencer;->mName:Ljava/lang/String;

    aput-object v6, v5, v3

    aput-object p1, v5, v2

    iget p1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/Sequencer;->mCurrentSequenceIndex:I

    const/4 v2, -0x1

    if-le p1, v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/util/Sequencer;->mSequenceList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "NONE"

    :goto_0
    aput-object p1, v5, v1

    invoke-static {v0, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/core2/util/Sequencer;->mConditionListMap:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-eqz v4, :cond_6

    invoke-interface {v4, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-boolean v4, p0, Lcom/samsung/android/app/galaxyraw/core2/util/Sequencer;->mCurrentSequenceStarted:Z

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/core2/util/Sequencer;->mCurrentConditionListMap:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/util/Sequencer;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v4, "%s endSequence - duplicated call for sequence %s and condition %s, ignore"

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/samsung/android/app/galaxyraw/core2/util/Sequencer;->mName:Ljava/lang/String;

    aput-object v6, v5, v3

    aput-object p1, v5, v2

    aput-object p2, v5, v1

    invoke-static {v0, v4, v5}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->w(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    iput-boolean v3, p0, Lcom/samsung/android/app/galaxyraw/core2/util/Sequencer;->mCurrentSequenceStarted:Z

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/core2/util/Sequencer;->mSequenceData:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/core2/util/Sequencer;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v6, "%s endSequence - sequence %s, condition %s"

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/samsung/android/app/galaxyraw/core2/util/Sequencer;->mName:Ljava/lang/String;

    aput-object v7, v5, v3

    aput-object p1, v5, v2

    aput-object p2, v5, v1

    invoke-static {v4, v6, v5}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/util/Sequencer;->mSequenceCallback:Lcom/samsung/android/app/galaxyraw/core2/util/Sequencer$SequenceCallback;

    if-eqz p2, :cond_3

    invoke-interface {p2, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/Sequencer$SequenceCallback;->onSequenceComplete(Ljava/lang/String;)V

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/Sequencer;->mSequenceList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v2

    if-ne v0, p1, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/util/Sequencer;->clearSequence()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    monitor-exit p0

    return-void

    :cond_5
    :try_start_2
    new-instance p2, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;

    sget-object v0, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const-string v4, "%s endSequence fail - sequence %s is not started or ended, it must be started"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/samsung/android/app/galaxyraw/core2/util/Sequencer;->mName:Ljava/lang/String;

    aput-object v5, v1, v3

    aput-object p1, v1, v2

    invoke-static {v0, v4, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v4, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const-string v6, "%s endSequence fail - condition %s is not contained condition list for sequence %s"

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/samsung/android/app/galaxyraw/core2/util/Sequencer;->mName:Ljava/lang/String;

    aput-object v7, v5, v3

    aput-object p2, v5, v2

    aput-object p1, v5, v1

    invoke-static {v4, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance p2, Ljava/lang/IllegalArgumentException;

    sget-object v0, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const-string v4, "%s endSequence fail - sequence %s is not contained sequence list"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/samsung/android/app/galaxyraw/core2/util/Sequencer;->mName:Ljava/lang/String;

    aput-object v5, v1, v3

    aput-object p1, v1, v2

    invoke-static {v0, v4, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getSequenceData(Ljava/lang/String;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sequence"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/Sequencer;->mSequenceList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-gez v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/util/Sequencer;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v5, "%s getSequenceData fail - sequence %s is not contained sequence list"

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/samsung/android/app/galaxyraw/core2/util/Sequencer;->mName:Ljava/lang/String;

    aput-object v6, v4, v3

    aput-object p1, v4, v2

    invoke-static {v0, v5, v4}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    :cond_0
    :try_start_1
    iget v5, p0, Lcom/samsung/android/app/galaxyraw/core2/util/Sequencer;->mCurrentSequenceIndex:I

    if-eq v5, v0, :cond_2

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/util/Sequencer;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v6, "%s getSequenceData fail - sequence %s is not current sequence %s"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/samsung/android/app/galaxyraw/core2/util/Sequencer;->mName:Ljava/lang/String;

    aput-object v8, v7, v3

    aput-object p1, v7, v2

    const/4 p1, -0x1

    if-le v5, p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/Sequencer;->mSequenceList:Ljava/util/List;

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, "NONE"

    :goto_0
    aput-object p1, v7, v4

    invoke-static {v0, v6, v7}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1

    :cond_2
    :try_start_2
    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/Sequencer;->mCurrentSequenceStarted:Z

    if-nez v0, :cond_3

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/util/Sequencer;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v5, "%s getSequenceData fail - sequence %s is not started or ended, it must be started"

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/samsung/android/app/galaxyraw/core2/util/Sequencer;->mName:Ljava/lang/String;

    aput-object v6, v4, v3

    aput-object p1, v4, v2

    invoke-static {v0, v5, v4}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v1

    :cond_3
    :try_start_3
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/Sequencer;->mSequenceData:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized isValidSequence(Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sequence"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/Sequencer;->mSequenceList:Ljava/util/List;

    iget v2, p0, Lcom/samsung/android/app/galaxyraw/core2/util/Sequencer;->mCurrentSequenceIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/Sequencer;->mCurrentSequenceStarted:Z
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :catch_0
    monitor-exit p0

    return v0
.end method

.method public declared-synchronized isValidSequence(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "sequence",
            "condition"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/Sequencer;->mCurrentConditionListMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/Sequencer;->isValidSequence(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setSequenceCallback(Lcom/samsung/android/app/galaxyraw/core2/util/Sequencer$SequenceCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sequenceCallback"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/Sequencer;->mSequenceCallback:Lcom/samsung/android/app/galaxyraw/core2/util/Sequencer$SequenceCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized startSequence(Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sequence"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/Sequencer;->mSequenceList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ltz v0, :cond_4

    iget v4, p0, Lcom/samsung/android/app/galaxyraw/core2/util/Sequencer;->mCurrentSequenceIndex:I

    add-int/lit8 v5, v0, -0x1

    if-ne v4, v5, :cond_3

    iget-boolean v4, p0, Lcom/samsung/android/app/galaxyraw/core2/util/Sequencer;->mCurrentSequenceStarted:Z

    if-nez v4, :cond_2

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/Sequencer;->mCurrentSequenceIndex:I

    iput-boolean v3, p0, Lcom/samsung/android/app/galaxyraw/core2/util/Sequencer;->mCurrentSequenceStarted:Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/Sequencer;->mConditionListMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/core2/util/Sequencer;->mCurrentConditionListMap:Ljava/util/Map;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v4, p1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/util/Sequencer;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v4, "%s startSequence - sequence %s"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/samsung/android/app/galaxyraw/core2/util/Sequencer;->mName:Ljava/lang/String;

    aput-object v5, v2, v1

    aput-object p1, v2, v3

    invoke-static {v0, v4, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/Sequencer;->mSequenceCallback:Lcom/samsung/android/app/galaxyraw/core2/util/Sequencer$SequenceCallback;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/Sequencer$SequenceCallback;->onSequenceStarted(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    new-instance p1, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;

    sget-object v0, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const-string v4, "%s startSequence fail - current sequence %s already started, it must be ended"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/samsung/android/app/galaxyraw/core2/util/Sequencer;->mName:Ljava/lang/String;

    aput-object v5, v2, v1

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/Sequencer;->mSequenceList:Ljava/util/List;

    iget v5, p0, Lcom/samsung/android/app/galaxyraw/core2/util/Sequencer;->mCurrentSequenceIndex:I

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-static {v0, v4, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v4, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const-string v5, "%s startSequence fail - sequence %s is not next of current sequence %s"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/samsung/android/app/galaxyraw/core2/util/Sequencer;->mName:Ljava/lang/String;

    aput-object v7, v6, v1

    aput-object p1, v6, v3

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/Sequencer;->mSequenceList:Ljava/util/List;

    iget v1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/Sequencer;->mCurrentSequenceIndex:I

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    aput-object p1, v6, v2

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v4, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const-string v5, "%s startSequence fail - sequence %s is not contained sequence list"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/samsung/android/app/galaxyraw/core2/util/Sequencer;->mName:Ljava/lang/String;

    aput-object v6, v2, v1

    aput-object p1, v2, v3

    invoke-static {v4, v5, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized startSequence(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "sequence",
            "data"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/Sequencer;->startSequence(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/Sequencer;->mSequenceData:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
