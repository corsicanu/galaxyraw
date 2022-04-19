.class Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$2;
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

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/SparseArray<",
        "Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$VideoBitrate;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 8

    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_7680X4320:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId()I

    move-result v0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$VideoBitrate;

    const v2, 0x5f5e100

    const v3, 0x4c4b400

    const/4 v4, -0x1

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$VideoBitrate;-><init>(IIILcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$2;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_7680X4320_24FPS:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId()I

    move-result v0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$VideoBitrate;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$VideoBitrate;-><init>(IIILcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$2;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_3840X2160:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId()I

    move-result v0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$VideoBitrate;

    const v2, 0x2dc6c00

    const v3, 0x1ab3f00

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$VideoBitrate;-><init>(IIILcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$2;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_3840X2160_60FPS:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId()I

    move-result v0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$VideoBitrate;

    const v2, 0x44aa200

    const v6, 0x29020c0

    invoke-direct {v1, v2, v6, v4, v5}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$VideoBitrate;-><init>(IIILcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$2;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_2560X1440:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId()I

    move-result v0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$VideoBitrate;

    const v2, 0x17d7840

    const v6, 0xe4e1c0

    invoke-direct {v1, v2, v6, v4, v5}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$VideoBitrate;-><init>(IIILcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$2;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_2400X1080:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId()I

    move-result v0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$VideoBitrate;

    const v2, 0xd59f80

    const v7, 0x7a1200

    invoke-direct {v1, v2, v7, v4, v5}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$VideoBitrate;-><init>(IIILcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$2;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_2320X1080:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId()I

    move-result v0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$VideoBitrate;

    invoke-direct {v1, v2, v7, v4, v5}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$VideoBitrate;-><init>(IIILcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$2;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_2288X1080:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId()I

    move-result v0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$VideoBitrate;

    invoke-direct {v1, v2, v7, v4, v5}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$VideoBitrate;-><init>(IIILcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$2;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_2224X1080:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId()I

    move-result v0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$VideoBitrate;

    invoke-direct {v1, v2, v7, v4, v5}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$VideoBitrate;-><init>(IIILcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$2;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_1920X1080:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId()I

    move-result v0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$VideoBitrate;

    invoke-direct {v1, v2, v7, v4, v5}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$VideoBitrate;-><init>(IIILcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$2;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_1920X1080_60FPS:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId()I

    move-result v0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$VideoBitrate;

    invoke-direct {v1, v3, v6, v4, v5}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$VideoBitrate;-><init>(IIILcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$2;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_1920X1080_AUTO_FPS:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId()I

    move-result v0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$VideoBitrate;

    invoke-direct {v1, v3, v6, v4, v5}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$VideoBitrate;-><init>(IIILcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$2;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_1440X1440:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId()I

    move-result v0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$VideoBitrate;

    invoke-direct {v1, v2, v7, v4, v5}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$VideoBitrate;-><init>(IIILcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$2;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_960X960:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId()I

    move-result v0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$VideoBitrate;

    const v2, 0xb71b00

    const v3, 0x6acfc0

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$VideoBitrate;-><init>(IIILcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$2;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_1072X1072:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId()I

    move-result v0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$VideoBitrate;

    const v2, 0xa7d8c0

    const v3, 0x5b8d80

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$VideoBitrate;-><init>(IIILcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$2;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_1440X1080:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId()I

    move-result v0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$VideoBitrate;

    const v2, 0xa1be40

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$VideoBitrate;-><init>(IIILcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$2;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_1280X720:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId()I

    move-result v0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$VideoBitrate;

    const v2, 0x9477d0

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$VideoBitrate;-><init>(IIILcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$2;->put(ILjava/lang/Object;)V

    return-void
.end method
