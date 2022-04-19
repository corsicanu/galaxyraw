.class Lcom/samsung/android/app/galaxyraw/audio/SoundManager$PlaySoundRunnable;
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
    name = "PlaySoundRunnable"
.end annotation


# instance fields
.field private mLoop:I

.field private mSoundId:Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager$SoundId;

.field private mVolume:F

.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/audio/SoundManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/audio/SoundManager;Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager$SoundId;FI)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "soundId",
            "volume",
            "loop"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/audio/SoundManager$PlaySoundRunnable;->this$0:Lcom/samsung/android/app/galaxyraw/audio/SoundManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/audio/SoundManager$PlaySoundRunnable;->mSoundId:Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager$SoundId;

    iput p3, p0, Lcom/samsung/android/app/galaxyraw/audio/SoundManager$PlaySoundRunnable;->mVolume:F

    iput p4, p0, Lcom/samsung/android/app/galaxyraw/audio/SoundManager$PlaySoundRunnable;->mLoop:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/audio/SoundManager$PlaySoundRunnable;->mSoundId:Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager$SoundId;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/util/AudioUtil;->getSituation(Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager$SoundId;)I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/util/AudioUtil;->getSituationString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/audio/SoundManager$PlaySoundRunnable;->this$0:Lcom/samsung/android/app/galaxyraw/audio/SoundManager;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/audio/SoundManager;->access$000(Lcom/samsung/android/app/galaxyraw/audio/SoundManager;)Landroid/media/SoundPool;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/audio/SoundManager$PlaySoundRunnable;->this$0:Lcom/samsung/android/app/galaxyraw/audio/SoundManager;

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/audio/SoundManager;->access$300(Lcom/samsung/android/app/galaxyraw/audio/SoundManager;)[I

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/audio/SoundManager$PlaySoundRunnable;->mSoundId:Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager$SoundId;

    invoke-virtual {v3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager$SoundId;->ordinal()I

    move-result v3

    aget v2, v2, v3

    invoke-virtual {v1, v2, v0}, Landroid/media/SoundPool;->semSetSituationType(ILjava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/audio/SoundManager$PlaySoundRunnable;->this$0:Lcom/samsung/android/app/galaxyraw/audio/SoundManager;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/audio/SoundManager;->access$400(Lcom/samsung/android/app/galaxyraw/audio/SoundManager;)[I

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/audio/SoundManager$PlaySoundRunnable;->mSoundId:Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager$SoundId;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager$SoundId;->ordinal()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/audio/SoundManager$PlaySoundRunnable;->this$0:Lcom/samsung/android/app/galaxyraw/audio/SoundManager;

    invoke-static {v3}, Lcom/samsung/android/app/galaxyraw/audio/SoundManager;->access$000(Lcom/samsung/android/app/galaxyraw/audio/SoundManager;)Landroid/media/SoundPool;

    move-result-object v4

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/audio/SoundManager$PlaySoundRunnable;->this$0:Lcom/samsung/android/app/galaxyraw/audio/SoundManager;

    invoke-static {v3}, Lcom/samsung/android/app/galaxyraw/audio/SoundManager;->access$300(Lcom/samsung/android/app/galaxyraw/audio/SoundManager;)[I

    move-result-object v3

    iget-object v5, p0, Lcom/samsung/android/app/galaxyraw/audio/SoundManager$PlaySoundRunnable;->mSoundId:Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager$SoundId;

    invoke-virtual {v5}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager$SoundId;->ordinal()I

    move-result v5

    aget v5, v3, v5

    iget v7, p0, Lcom/samsung/android/app/galaxyraw/audio/SoundManager$PlaySoundRunnable;->mVolume:F

    iget v9, p0, Lcom/samsung/android/app/galaxyraw/audio/SoundManager$PlaySoundRunnable;->mLoop:I

    const/4 v8, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    move v6, v7

    invoke-virtual/range {v4 .. v10}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v3

    aput v3, v1, v2

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/audio/SoundManager$PlaySoundRunnable;->this$0:Lcom/samsung/android/app/galaxyraw/audio/SoundManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/samsung/android/app/galaxyraw/audio/SoundManager;->access$502(Lcom/samsung/android/app/galaxyraw/audio/SoundManager;J)J

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SoundPool.play - soundId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/audio/SoundManager$PlaySoundRunnable;->mSoundId:Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager$SoundId;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", streamId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/audio/SoundManager$PlaySoundRunnable;->this$0:Lcom/samsung/android/app/galaxyraw/audio/SoundManager;

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/audio/SoundManager;->access$400(Lcom/samsung/android/app/galaxyraw/audio/SoundManager;)[I

    move-result-object v2

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/audio/SoundManager$PlaySoundRunnable;->mSoundId:Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager$SoundId;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager$SoundId;->ordinal()I

    move-result p0

    aget p0, v2, p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, ", situation: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SoundManager"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
