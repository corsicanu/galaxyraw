.class Lcom/samsung/android/app/galaxyraw/engine/BurstCaptureController$1;
.super Landroid/util/SparseArray;
.source "BurstCaptureController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/engine/BurstCaptureController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/SparseArray<",
        "Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager$SoundId;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager$SoundId;->BURST_SHUTTER_3FPS:Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager$SoundId;

    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/app/galaxyraw/engine/BurstCaptureController$1;->append(ILjava/lang/Object;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager$SoundId;->BURST_SHUTTER_4FPS:Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager$SoundId;

    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/app/galaxyraw/engine/BurstCaptureController$1;->append(ILjava/lang/Object;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager$SoundId;->BURST_SHUTTER_5FPS:Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager$SoundId;

    const/4 v1, 0x5

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/app/galaxyraw/engine/BurstCaptureController$1;->append(ILjava/lang/Object;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager$SoundId;->BURST_SHUTTER_10FPS:Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager$SoundId;

    const/16 v1, 0xa

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/app/galaxyraw/engine/BurstCaptureController$1;->append(ILjava/lang/Object;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager$SoundId;->BURST_SHUTTER_20FPS:Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager$SoundId;

    const/16 v1, 0x14

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/app/galaxyraw/engine/BurstCaptureController$1;->append(ILjava/lang/Object;)V

    return-void
.end method
