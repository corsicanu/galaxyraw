.class Lcom/samsung/android/app/galaxyraw/audio/SoundManager$LoadSoundRunnable;
.super Ljava/lang/Object;
.source "SoundManager.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Landroid/media/SoundPool$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/audio/SoundManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadSoundRunnable"
.end annotation


# static fields
.field private static final LOAD_TIMEOUT:I = 0x1


# instance fields
.field private mLatch:Ljava/util/concurrent/CountDownLatch;

.field private mSoundId:Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager$SoundId;

.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/audio/SoundManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/audio/SoundManager;Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager$SoundId;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            "this$0",
            "soundId"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/audio/SoundManager$LoadSoundRunnable;->this$0:Lcom/samsung/android/app/galaxyraw/audio/SoundManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/audio/SoundManager$LoadSoundRunnable;->mLatch:Ljava/util/concurrent/CountDownLatch;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/audio/SoundManager$LoadSoundRunnable;->mSoundId:Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager$SoundId;

    return-void
.end method


# virtual methods
.method public onLoadComplete(Landroid/media/SoundPool;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "soundPool",
            "sampleId",
            "status"
        }
    .end annotation

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onLoadComplete - soundId:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/audio/SoundManager$LoadSoundRunnable;->mSoundId:Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager$SoundId;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", status:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SoundManager"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/audio/SoundManager$LoadSoundRunnable;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public run()V
    .locals 8

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/audio/SoundManager$LoadSoundRunnable;->mLatch:Ljava/util/concurrent/CountDownLatch;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/audio/SoundManager$LoadSoundRunnable;->this$0:Lcom/samsung/android/app/galaxyraw/audio/SoundManager;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/audio/SoundManager;->access$000(Lcom/samsung/android/app/galaxyraw/audio/SoundManager;)Landroid/media/SoundPool;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->IS_AUX_TUNING_USING_LOCAL_FILE:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    const-string v1, "SoundManager"

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/audio/SoundManager$LoadSoundRunnable;->this$0:Lcom/samsung/android/app/galaxyraw/audio/SoundManager;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/audio/SoundManager;->access$200(Lcom/samsung/android/app/galaxyraw/audio/SoundManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/audio/SoundManager;->access$100()Landroid/util/SparseIntArray;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/audio/SoundManager$LoadSoundRunnable;->mSoundId:Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager$SoundId;

    invoke-virtual {v4}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager$SoundId;->ordinal()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/util/AudioUtil;->getOggFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/audio/SoundManager$LoadSoundRunnable;->this$0:Lcom/samsung/android/app/galaxyraw/audio/SoundManager;

    invoke-static {v3}, Lcom/samsung/android/app/galaxyraw/audio/SoundManager;->access$300(Lcom/samsung/android/app/galaxyraw/audio/SoundManager;)[I

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/audio/SoundManager$LoadSoundRunnable;->mSoundId:Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager$SoundId;

    invoke-virtual {v4}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager$SoundId;->ordinal()I

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/app/galaxyraw/audio/SoundManager$LoadSoundRunnable;->this$0:Lcom/samsung/android/app/galaxyraw/audio/SoundManager;

    invoke-static {v5}, Lcom/samsung/android/app/galaxyraw/audio/SoundManager;->access$000(Lcom/samsung/android/app/galaxyraw/audio/SoundManager;)Landroid/media/SoundPool;

    move-result-object v5

    invoke-virtual {v5, v0, v2}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v2

    aput v2, v3, v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " is loaded."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/audio/SoundManager$LoadSoundRunnable;->this$0:Lcom/samsung/android/app/galaxyraw/audio/SoundManager;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/audio/SoundManager;->access$300(Lcom/samsung/android/app/galaxyraw/audio/SoundManager;)[I

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/audio/SoundManager$LoadSoundRunnable;->mSoundId:Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager$SoundId;

    invoke-virtual {v3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager$SoundId;->ordinal()I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/audio/SoundManager$LoadSoundRunnable;->this$0:Lcom/samsung/android/app/galaxyraw/audio/SoundManager;

    invoke-static {v4}, Lcom/samsung/android/app/galaxyraw/audio/SoundManager;->access$000(Lcom/samsung/android/app/galaxyraw/audio/SoundManager;)Landroid/media/SoundPool;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/app/galaxyraw/audio/SoundManager$LoadSoundRunnable;->this$0:Lcom/samsung/android/app/galaxyraw/audio/SoundManager;

    invoke-static {v5}, Lcom/samsung/android/app/galaxyraw/audio/SoundManager;->access$200(Lcom/samsung/android/app/galaxyraw/audio/SoundManager;)Landroid/content/Context;

    move-result-object v5

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/audio/SoundManager;->access$100()Landroid/util/SparseIntArray;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/app/galaxyraw/audio/SoundManager$LoadSoundRunnable;->mSoundId:Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager$SoundId;

    invoke-virtual {v7}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager$SoundId;->ordinal()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/util/SparseIntArray;->get(I)I

    move-result v6

    invoke-virtual {v4, v5, v6, v2}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    aput v2, v0, v3

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/audio/SoundManager$LoadSoundRunnable;->this$0:Lcom/samsung/android/app/galaxyraw/audio/SoundManager;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/audio/SoundManager;->access$300(Lcom/samsung/android/app/galaxyraw/audio/SoundManager;)[I

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/audio/SoundManager$LoadSoundRunnable;->mSoundId:Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager$SoundId;

    invoke-virtual {v3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager$SoundId;->ordinal()I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/audio/SoundManager$LoadSoundRunnable;->this$0:Lcom/samsung/android/app/galaxyraw/audio/SoundManager;

    invoke-static {v4}, Lcom/samsung/android/app/galaxyraw/audio/SoundManager;->access$000(Lcom/samsung/android/app/galaxyraw/audio/SoundManager;)Landroid/media/SoundPool;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/app/galaxyraw/audio/SoundManager$LoadSoundRunnable;->this$0:Lcom/samsung/android/app/galaxyraw/audio/SoundManager;

    invoke-static {v5}, Lcom/samsung/android/app/galaxyraw/audio/SoundManager;->access$200(Lcom/samsung/android/app/galaxyraw/audio/SoundManager;)Landroid/content/Context;

    move-result-object v5

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/audio/SoundManager;->access$100()Landroid/util/SparseIntArray;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/app/galaxyraw/audio/SoundManager$LoadSoundRunnable;->mSoundId:Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager$SoundId;

    invoke-virtual {v7}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager$SoundId;->ordinal()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/util/SparseIntArray;->get(I)I

    move-result v6

    invoke-virtual {v4, v5, v6, v2}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    aput v2, v0, v3

    :goto_0
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/audio/SoundManager$LoadSoundRunnable;->mLatch:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v2, 0x1

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v2, v3, v0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string p0, "InterruptedException is occurred while loading sound."

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method
