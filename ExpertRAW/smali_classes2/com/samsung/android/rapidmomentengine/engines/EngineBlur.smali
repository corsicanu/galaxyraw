.class Lcom/samsung/android/rapidmomentengine/engines/EngineBlur;
.super Lcom/samsung/android/rapidmomentengine/engines/EngineInterface;
.source "EngineBlur.java"


# static fields
.field private static final NAME:Ljava/lang/String; = "BlurEngine"

.field private static REJECTION_FRAME_LIMIT:I = 0x3

.field private static final TAG:Ljava/lang/String; = "EngineBlur"


# instance fields
.field private mEngineEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/rapidmomentengine/engines/EngineInterface;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/rapidmomentengine/engines/EngineBlur;->mEngineEnabled:Z

    :try_start_0
    const-string v0, "rm_rapidmoments_jni_a"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/rapidmomentengine/engines/EngineBlur;->mEngineEnabled:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/rapidmomentengine/engines/EngineBlur;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Disabling Blur as Exception Occurred: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private native getLaplacianBlurScoreNV21([BII)D
.end method

.method static synthetic lambda$filterResults$0(Lcom/samsung/android/rapidmomentengine/data/ResultInfo;Lcom/samsung/android/rapidmomentengine/data/ResultInfo;)I
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/rapidmomentengine/data/ResultInfo;->blurScore:D

    iget-wide p0, p1, Lcom/samsung/android/rapidmomentengine/data/ResultInfo;->blurScore:D

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Double;->compare(DD)I

    move-result p0

    return p0
.end method


# virtual methods
.method public deinit()V
    .locals 2

    sget-object v0, Lcom/samsung/android/rapidmomentengine/engines/EngineBlur;->TAG:Ljava/lang/String;

    const-string v1, "deinit E"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/samsung/android/rapidmomentengine/engines/EngineInterface;->deinit()V

    iget-boolean p0, p0, Lcom/samsung/android/rapidmomentengine/engines/EngineBlur;->mEngineEnabled:Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-string p0, "deinit X"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public filterResults(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/rapidmomentengine/data/ResultInfo;",
            ">;)V"
        }
    .end annotation

    sget-object p0, Lcom/samsung/android/rapidmomentengine/engines/EngineBlur;->TAG:Ljava/lang/String;

    const-string v0, "========================"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/rapidmomentengine/data/ResultInfo;

    sget v4, Lcom/samsung/android/rapidmomentengine/engines/EngineBlur;->REJECTION_FRAME_LIMIT:I

    if-lt v2, v4, :cond_1

    return-void

    :cond_1
    iget-wide v4, v3, Lcom/samsung/android/rapidmomentengine/data/ResultInfo;->blurScore:D

    const-wide v6, 0x407f400000000000L    # 500.0

    cmpg-double v4, v4, v6

    if-ltz v4, :cond_2

    invoke-virtual {v3}, Lcom/samsung/android/rapidmomentengine/data/ResultInfo;->isAccepted()Z

    move-result v4

    if-nez v4, :cond_0

    :cond_2
    sget-object v4, Lcom/samsung/android/rapidmomentengine/engines/EngineBlur;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/samsung/android/rapidmomentengine/data/ResultInfo;->setRejected(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/ListIterator;->remove()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/samsung/android/rapidmomentengine/engines/EngineBlur;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remaining frames after first filtering: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x3

    if-gt v3, v4, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No further filtering, as remaining frames are: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    sget-object v3, Lcom/samsung/android/rapidmomentengine/engines/-$$Lambda$EngineBlur$gi9oPVlWStbOmsDBS-ym-unKzF8;->INSTANCE:Lcom/samsung/android/rapidmomentengine/engines/-$$Lambda$EngineBlur$gi9oPVlWStbOmsDBS-ym-unKzF8;

    invoke-static {p0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const-string v3, "Sorted list in ascending order: "

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    sget v1, Lcom/samsung/android/rapidmomentengine/engines/EngineBlur;->REJECTION_FRAME_LIMIT:I

    if-ge v2, v1, :cond_6

    invoke-interface {p0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/rapidmomentengine/data/ResultInfo;

    iget-wide v3, v1, Lcom/samsung/android/rapidmomentengine/data/ResultInfo;->blurScore:D

    const-wide v5, 0x40a3880000000000L    # 2500.0

    cmpl-double v3, v3, v5

    if-ltz v3, :cond_5

    sget-object p0, Lcom/samsung/android/rapidmomentengine/engines/EngineBlur;->TAG:Ljava/lang/String;

    const-string v1, "All remaining frames, have score higher than upper threshold. Returning...."

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_5
    sget-object v3, Lcom/samsung/android/rapidmomentengine/engines/EngineBlur;->TAG:Ljava/lang/String;

    const-string v4, "Eliminating frame with blur score less than threshold..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v3}, Lcom/samsung/android/rapidmomentengine/data/ResultInfo;->setRejected(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object p0

    sget-object p1, Lcom/samsung/android/rapidmomentengine/engines/EngineBlur;->TAG:Ljava/lang/String;

    const-string v1, "Blur engine results"

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    invoke-interface {p0}, Ljava/util/ListIterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-interface {p0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/rapidmomentengine/data/ResultInfo;

    sget-object v1, Lcom/samsung/android/rapidmomentengine/engines/EngineBlur;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Blur Score: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p1, Lcom/samsung/android/rapidmomentengine/data/ResultInfo;->blurScore:D

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/rapidmomentengine/data/ResultInfo;->isAccepted()Z

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_7
    sget-object p0, Lcom/samsung/android/rapidmomentengine/engines/EngineBlur;->TAG:Ljava/lang/String;

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    const-string p0, "BlurEngine"

    return-object p0
.end method

.method public init(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/rapidmomentengine/engines/EngineBlur;->TAG:Ljava/lang/String;

    const-string v1, "init E"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1, p2}, Lcom/samsung/android/rapidmomentengine/engines/EngineInterface;->init(Landroid/content/Context;Landroid/os/Bundle;)V

    iget-boolean p0, p0, Lcom/samsung/android/rapidmomentengine/engines/EngineBlur;->mEngineEnabled:Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-string p0, "init X"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public isEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/rapidmomentengine/engines/EngineBlur;->mEngineEnabled:Z

    return p0
.end method

.method public process(Lcom/samsung/android/rapidmomentengine/data/FrameData;)Lcom/samsung/android/rapidmomentengine/data/ResultInfo;
    .locals 4

    sget-object v0, Lcom/samsung/android/rapidmomentengine/engines/EngineBlur;->TAG:Ljava/lang/String;

    const-string v1, "process E"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/samsung/android/rapidmomentengine/engines/EngineBlur;->mEngineEnabled:Z

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/rapidmomentengine/data/FrameData;->getByteArrayNV21()[B

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/rapidmomentengine/data/FrameData;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Lcom/samsung/android/rapidmomentengine/data/FrameData;->getHeight()I

    move-result p1

    invoke-direct {p0, v1, v2, p1}, Lcom/samsung/android/rapidmomentengine/engines/EngineBlur;->getLaplacianBlurScoreNV21([BII)D

    move-result-wide p0

    new-instance v1, Lcom/samsung/android/rapidmomentengine/data/ResultInfo;

    invoke-direct {v1}, Lcom/samsung/android/rapidmomentengine/data/ResultInfo;-><init>()V

    iput-wide p0, v1, Lcom/samsung/android/rapidmomentengine/data/ResultInfo;->blurScore:D

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "process X, score: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method
