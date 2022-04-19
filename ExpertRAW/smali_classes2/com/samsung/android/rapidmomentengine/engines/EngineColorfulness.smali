.class Lcom/samsung/android/rapidmomentengine/engines/EngineColorfulness;
.super Lcom/samsung/android/rapidmomentengine/engines/EngineInterface;
.source "EngineColorfulness.java"


# static fields
.field private static COLORFULNESS_SCORE_THRESHOLD:D = 0.0

.field private static final NAME:Ljava/lang/String; = "ColorfulnessEngine"

.field private static final TAG:Ljava/lang/String; = "EngineColorfulness"


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

    iput-boolean v0, p0, Lcom/samsung/android/rapidmomentengine/engines/EngineColorfulness;->mEngineEnabled:Z

    :try_start_0
    const-string v0, "rm_rapidmoments_jni_b"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/rapidmomentengine/engines/EngineColorfulness;->mEngineEnabled:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/rapidmomentengine/engines/EngineColorfulness;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Disabling Colorfulness as Exception Occurred: "

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

.method private native getColorfulnessScore([BII)D
.end method


# virtual methods
.method public deinit()V
    .locals 2

    sget-object v0, Lcom/samsung/android/rapidmomentengine/engines/EngineColorfulness;->TAG:Ljava/lang/String;

    const-string v1, "deinit E"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/samsung/android/rapidmomentengine/engines/EngineInterface;->deinit()V

    iget-boolean p0, p0, Lcom/samsung/android/rapidmomentengine/engines/EngineColorfulness;->mEngineEnabled:Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-string p0, "deinit X"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public filterResults(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/rapidmomentengine/data/ResultInfo;",
            ">;)V"
        }
    .end annotation

    iget-boolean p0, p0, Lcom/samsung/android/rapidmomentengine/engines/EngineColorfulness;->mEngineEnabled:Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/rapidmomentengine/data/ResultInfo;

    invoke-virtual {p1}, Lcom/samsung/android/rapidmomentengine/data/ResultInfo;->isAccepted()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v0, p1, Lcom/samsung/android/rapidmomentengine/data/ResultInfo;->colorfulnessScore:D

    sget-wide v2, Lcom/samsung/android/rapidmomentengine/engines/EngineColorfulness;->COLORFULNESS_SCORE_THRESHOLD:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1

    sget-object v0, Lcom/samsung/android/rapidmomentengine/engines/EngineColorfulness;->TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/samsung/android/rapidmomentengine/data/ResultInfo;->setRejected(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    const-string p0, "ColorfulnessEngine"

    return-object p0
.end method

.method public init(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/rapidmomentengine/engines/EngineColorfulness;->mEngineEnabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/samsung/android/rapidmomentengine/engines/EngineColorfulness;->TAG:Ljava/lang/String;

    const-string v1, "init E"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1, p2}, Lcom/samsung/android/rapidmomentengine/engines/EngineInterface;->init(Landroid/content/Context;Landroid/os/Bundle;)V

    const-string p0, "init X"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public isEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/rapidmomentengine/engines/EngineColorfulness;->mEngineEnabled:Z

    return p0
.end method

.method public process(Lcom/samsung/android/rapidmomentengine/data/FrameData;)Lcom/samsung/android/rapidmomentengine/data/ResultInfo;
    .locals 4

    sget-object v0, Lcom/samsung/android/rapidmomentengine/engines/EngineColorfulness;->TAG:Ljava/lang/String;

    const-string v1, "process E"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/samsung/android/rapidmomentengine/engines/EngineColorfulness;->mEngineEnabled:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/rapidmomentengine/data/FrameData;->getByteArrayBGR()[B

    move-result-object v1

    if-nez v1, :cond_1

    const-string p0, "process: input byte array is null. Exiting"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/rapidmomentengine/data/FrameData;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Lcom/samsung/android/rapidmomentengine/data/FrameData;->getHeight()I

    move-result p1

    invoke-direct {p0, v1, v2, p1}, Lcom/samsung/android/rapidmomentengine/engines/EngineColorfulness;->getColorfulnessScore([BII)D

    move-result-wide p0

    new-instance v1, Lcom/samsung/android/rapidmomentengine/data/ResultInfo;

    invoke-direct {v1}, Lcom/samsung/android/rapidmomentengine/data/ResultInfo;-><init>()V

    iput-wide p0, v1, Lcom/samsung/android/rapidmomentengine/data/ResultInfo;->colorfulnessScore:D

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
