.class Lcom/samsung/android/app/galaxyraw/DvfsManager;
.super Ljava/lang/Object;
.source "DvfsManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DvfsManager"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDvfsCoreManager:Lcom/samsung/android/os/SemDvfsManager;

.field private mDvfsFreqManager:Lcom/samsung/android/os/SemDvfsManager;

.field private mDvfsManagerForCstate:Lcom/samsung/android/os/SemDvfsManager;

.field private mDvfsManagerForEmmc:Lcom/samsung/android/os/SemDvfsManager;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/DvfsManager;->mDvfsCoreManager:Lcom/samsung/android/os/SemDvfsManager;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/DvfsManager;->mDvfsFreqManager:Lcom/samsung/android/os/SemDvfsManager;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/DvfsManager;->mDvfsManagerForEmmc:Lcom/samsung/android/os/SemDvfsManager;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/DvfsManager;->mDvfsManagerForCstate:Lcom/samsung/android/os/SemDvfsManager;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/DvfsManager;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method acquireDVFSLock(Landroid/os/Handler;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "handler",
            "millisecond"
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/app/galaxyraw/-$$Lambda$DvfsManager$AHPV2WdFk_Ubf-mKWrlHOjp-23s;

    invoke-direct {v0, p0, p2}, Lcom/samsung/android/app/galaxyraw/-$$Lambda$DvfsManager$AHPV2WdFk_Ubf-mKWrlHOjp-23s;-><init>(Lcom/samsung/android/app/galaxyraw/DvfsManager;I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public synthetic lambda$acquireDVFSLock$0$DvfsManager(I)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/DvfsManager;->mDvfsCoreManager:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/DvfsManager;->mContext:Landroid/content/Context;

    const/16 v1, 0xe

    const-string v2, "TEMP_CORE_NUM_MIN"

    invoke-static {v0, v2, v1}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/DvfsManager;->mDvfsCoreManager:Lcom/samsung/android/os/SemDvfsManager;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/DvfsManager;->mDvfsCoreManager:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v0}, Lcom/samsung/android/os/SemDvfsManager;->getSupportedFrequency()[I

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "DvfsManager"

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/DvfsManager;->mDvfsCoreManager:Lcom/samsung/android/os/SemDvfsManager;

    aget v4, v0, v1

    invoke-virtual {v3, v4}, Lcom/samsung/android/os/SemDvfsManager;->setDvfsValue(I)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "supportedCPUCoreTable : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v0, v0, v1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v0, "supportedCPUCoreTable is null"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/DvfsManager;->mDvfsFreqManager:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/DvfsManager;->mContext:Landroid/content/Context;

    const/16 v3, 0xc

    const-string v4, "TEMP_CPU_FREQ_MIN"

    invoke-static {v0, v4, v3}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/DvfsManager;->mDvfsFreqManager:Lcom/samsung/android/os/SemDvfsManager;

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/DvfsManager;->mDvfsFreqManager:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v0}, Lcom/samsung/android/os/SemDvfsManager;->getSupportedFrequency()[I

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/DvfsManager;->mDvfsFreqManager:Lcom/samsung/android/os/SemDvfsManager;

    aget v4, v0, v1

    invoke-virtual {v3, v4}, Lcom/samsung/android/os/SemDvfsManager;->setDvfsValue(I)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "supportedCPUFreqTable : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v0, v0, v1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    const-string v0, "supportedCPUFreqTable is null"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/DvfsManager;->mDvfsManagerForCstate:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/DvfsManager;->mContext:Landroid/content/Context;

    const/16 v1, 0x17

    const-string v3, "com.samsung.android.app.galaxyraw"

    invoke-static {v0, v3, v1}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/DvfsManager;->mDvfsManagerForCstate:Lcom/samsung/android/os/SemDvfsManager;

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/DvfsManager;->mDvfsFreqManager:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/os/SemDvfsManager;->acquire(I)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/DvfsManager;->mDvfsCoreManager:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/os/SemDvfsManager;->acquire(I)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/DvfsManager;->mDvfsManagerForCstate:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {p0, p1}, Lcom/samsung/android/os/SemDvfsManager;->acquire(I)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "DVFS acquire : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public synthetic lambda$setEmmcBurstMode$1$DvfsManager()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/DvfsManager;->mDvfsManagerForEmmc:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/DvfsManager;->mContext:Landroid/content/Context;

    const/16 v1, 0x12

    invoke-static {v0, v1}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/DvfsManager;->mDvfsManagerForEmmc:Lcom/samsung/android/os/SemDvfsManager;

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/DvfsManager;->mDvfsManagerForEmmc:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {p0}, Lcom/samsung/android/os/SemDvfsManager;->acquire()V

    return-void
.end method

.method release()V
    .locals 2

    const-string v0, "DvfsManager"

    const-string v1, "release"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/DvfsManager;->mDvfsFreqManager:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/os/SemDvfsManager;->release()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/DvfsManager;->mDvfsCoreManager:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/os/SemDvfsManager;->release()V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/DvfsManager;->mDvfsManagerForCstate:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/os/SemDvfsManager;->release()V

    :cond_2
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/DvfsManager;->mDvfsManagerForEmmc:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/os/SemDvfsManager;->release()V

    :cond_3
    return-void
.end method

.method setEmmcBurstMode(Landroid/os/Handler;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "handler",
            "enable"
        }
    .end annotation

    if-eqz p2, :cond_0

    new-instance p2, Lcom/samsung/android/app/galaxyraw/-$$Lambda$DvfsManager$H_4r57PPayzr6ndmj1VBcQiFTlo;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/galaxyraw/-$$Lambda$DvfsManager$H_4r57PPayzr6ndmj1VBcQiFTlo;-><init>(Lcom/samsung/android/app/galaxyraw/DvfsManager;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/DvfsManager;->mDvfsManagerForEmmc:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/os/SemDvfsManager;->release()V

    :cond_1
    :goto_0
    return-void
.end method
