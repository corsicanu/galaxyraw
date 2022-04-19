.class Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$3;
.super Landroid/util/SparseArray;
.source "MediaRecorderProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 3

    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_7680X4320:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId()I

    move-result v0

    const/16 v1, 0x5dc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$3;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_7680X4320_24FPS:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId()I

    move-result v0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$3;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_7680X3296:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId()I

    move-result v0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$3;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_7680X3296_24FPS:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId()I

    move-result v0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$3;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_3840X2160_24FPS:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId()I

    move-result v0

    const/16 v2, 0x514

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$3;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_3840X2160:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId()I

    move-result v0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$3;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_3840X2160_60FPS:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId()I

    move-result v0

    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$3;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_3840X1644_24FPS:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId()I

    move-result v0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$3;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_3840X1644:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId()I

    move-result v0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$3;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_3840X1644_60FPS:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId()I

    move-result v0

    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$3;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_2560X1440:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId()I

    move-result v0

    const/16 v1, 0x4b0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$3;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_2400X1080:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId()I

    move-result v0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$3;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_2320X1080:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId()I

    move-result v0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$3;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_2288X1080:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId()I

    move-result v0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$3;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_2224X1080:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId()I

    move-result v0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$3;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_1920X1440:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId()I

    move-result v0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$3;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_1920X1080:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId()I

    move-result v0

    const/16 v1, 0x2bc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$3;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_1920X1080_24FPS:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId()I

    move-result v0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$3;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_1920X1080_60FPS:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId()I

    move-result v0

    const/16 v2, 0x258

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$3;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_1920X1080_120FPS:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId()I

    move-result v0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$3;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_1920X1080_AUTO_FPS:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId()I

    move-result v0

    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$3;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_1920X824_24FPS:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId()I

    move-result v0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$3;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_1920X824:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId()I

    move-result v0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$3;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_1920X824_60FPS:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId()I

    move-result v0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$3;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_1920X824_120FPS:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId()I

    move-result v0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$3;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_1440X1440:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId()I

    move-result v0

    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$3;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_1440X1080:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId()I

    move-result v0

    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$3;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_1280X720:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId()I

    move-result v0

    const/16 v1, 0x1f4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$3;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_1072X1072:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId()I

    move-result v0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$3;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_960X960:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId()I

    move-result v0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$3;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_640X480:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId()I

    move-result v0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$3;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_320X240:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId()I

    move-result v0

    const/16 v1, 0x1e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$3;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_176X144:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId()I

    move-result v0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$3;->put(ILjava/lang/Object;)V

    return-void
.end method
