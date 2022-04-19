.class Lcom/samsung/android/app/galaxyraw/audio/SoundManager$StopSoundRunnable;
.super Ljava/lang/Object;
.source "SoundManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/audio/SoundManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StopSoundRunnable"
.end annotation


# instance fields
.field private mSoundId:Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager$SoundId;

.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/audio/SoundManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/audio/SoundManager;Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager$SoundId;)V
    .locals 0
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

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/audio/SoundManager$StopSoundRunnable;->this$0:Lcom/samsung/android/app/galaxyraw/audio/SoundManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/audio/SoundManager$StopSoundRunnable;->mSoundId:Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager$SoundId;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/audio/SoundManager$StopSoundRunnable;->this$0:Lcom/samsung/android/app/galaxyraw/audio/SoundManager;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/audio/SoundManager;->access$000(Lcom/samsung/android/app/galaxyraw/audio/SoundManager;)Landroid/media/SoundPool;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/audio/SoundManager$StopSoundRunnable;->this$0:Lcom/samsung/android/app/galaxyraw/audio/SoundManager;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/audio/SoundManager;->access$400(Lcom/samsung/android/app/galaxyraw/audio/SoundManager;)[I

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/audio/SoundManager$StopSoundRunnable;->mSoundId:Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager$SoundId;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager$SoundId;->ordinal()I

    move-result v2

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->stop(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SoundPool.stop - soundId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/audio/SoundManager$StopSoundRunnable;->mSoundId:Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager$SoundId;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", streamId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/audio/SoundManager$StopSoundRunnable;->this$0:Lcom/samsung/android/app/galaxyraw/audio/SoundManager;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/audio/SoundManager;->access$400(Lcom/samsung/android/app/galaxyraw/audio/SoundManager;)[I

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/audio/SoundManager$StopSoundRunnable;->mSoundId:Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager$SoundId;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager$SoundId;->ordinal()I

    move-result p0

    aget p0, v1, p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SoundManager"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
