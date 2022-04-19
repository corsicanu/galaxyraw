.class Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$1;
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
    .locals 14

    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_7680X4320:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId()I

    move-result v0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$VideoBitrate;

    const v2, 0x5f5e100

    const v3, 0x4c4b400

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v2, v4}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$VideoBitrate;-><init>(IIILcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$1;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_7680X3296:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId()I

    move-result v0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$VideoBitrate;

    invoke-direct {v1, v2, v3, v2, v4}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$VideoBitrate;-><init>(IIILcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$1;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_7680X4320_24FPS:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId()I

    move-result v0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$VideoBitrate;

    invoke-direct {v1, v2, v3, v2, v4}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$VideoBitrate;-><init>(IIILcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$1;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_7680X3296_24FPS:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId()I

    move-result v0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$VideoBitrate;

    invoke-direct {v1, v2, v3, v2, v4}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$VideoBitrate;-><init>(IIILcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$1;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_3840X2160_24FPS:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId()I

    move-result v0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$VideoBitrate;

    const v2, 0x2dc6c00

    const v3, 0x1ab3f00

    const v5, 0x337f980

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$VideoBitrate;-><init>(IIILcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$1;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_3840X2160:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId()I

    move-result v0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$VideoBitrate;

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$VideoBitrate;-><init>(IIILcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$1;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_3840X2160_60FPS:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId()I

    move-result v0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$VideoBitrate;

    const v2, 0x44aa200

    const v5, 0x280de80

    invoke-direct {v1, v2, v5, v2, v4}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$VideoBitrate;-><init>(IIILcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$1;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_3840X1644_24FPS:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId()I

    move-result v0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$VideoBitrate;

    const v2, 0x2625a00

    const v5, 0x16e3600

    invoke-direct {v1, v2, v5, v2, v4}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$VideoBitrate;-><init>(IIILcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$1;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_3840X1644:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId()I

    move-result v0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$VideoBitrate;

    invoke-direct {v1, v2, v5, v2, v4}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$VideoBitrate;-><init>(IIILcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$1;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_3840X1644_60FPS:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId()I

    move-result v0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$VideoBitrate;

    const v6, 0x3b20b80

    const v7, 0x2349340

    invoke-direct {v1, v6, v7, v6, v4}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$VideoBitrate;-><init>(IIILcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$1;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_2560X1440:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId()I

    move-result v0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$VideoBitrate;

    const v6, 0x17d7840

    const v7, 0xe4e1c0

    const v8, 0x1c9c380

    invoke-direct {v1, v6, v7, v8, v4}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$VideoBitrate;-><init>(IIILcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$1;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_2400X1080:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId()I

    move-result v0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$VideoBitrate;

    const v9, 0x1312d00

    const v10, 0xb71b00

    invoke-direct {v1, v9, v10, v8, v4}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$VideoBitrate;-><init>(IIILcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$1;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_2320X1080:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId()I

    move-result v0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$VideoBitrate;

    invoke-direct {v1, v9, v10, v8, v4}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$VideoBitrate;-><init>(IIILcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$1;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_2288X1080:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId()I

    move-result v0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$VideoBitrate;

    invoke-direct {v1, v9, v10, v8, v4}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$VideoBitrate;-><init>(IIILcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$1;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_2224X1080:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId()I

    move-result v0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$VideoBitrate;

    const v9, 0x121eac0

    const v11, 0x19bfcc0

    invoke-direct {v1, v9, v10, v11, v4}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$VideoBitrate;-><init>(IIILcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$1;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_1920X1440:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId()I

    move-result v0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$VideoBitrate;

    const v9, 0x15ef3c0

    const v11, 0xd59f80

    invoke-direct {v1, v9, v11, v8, v4}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$VideoBitrate;-><init>(IIILcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$1;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_1920X1080:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId()I

    move-result v0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$VideoBitrate;

    const v8, 0x1036640

    const v11, 0x989680

    invoke-direct {v1, v8, v11, v6, v4}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$VideoBitrate;-><init>(IIILcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$1;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_1920X1080_24FPS:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId()I

    move-result v0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$VideoBitrate;

    invoke-direct {v1, v8, v11, v6, v4}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$VideoBitrate;-><init>(IIILcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$1;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_1920X1080_60FPS:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId()I

    move-result v0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$VideoBitrate;

    const v12, 0xf42400

    invoke-direct {v1, v3, v12, v3, v4}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$VideoBitrate;-><init>(IIILcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$1;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_1920X1080_120FPS:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId()I

    move-result v0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$VideoBitrate;

    const v13, 0x2aea540

    invoke-direct {v1, v13, v6, v13, v4}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$VideoBitrate;-><init>(IIILcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$1;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_1920X1080_AUTO_FPS:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId()I

    move-result v0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$VideoBitrate;

    invoke-direct {v1, v3, v12, v3, v4}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$VideoBitrate;-><init>(IIILcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$1;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_1920X824_24FPS:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId()I

    move-result v0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$VideoBitrate;

    const v3, 0x895440

    invoke-direct {v1, v7, v3, v7, v4}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$VideoBitrate;-><init>(IIILcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$1;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_1920X824:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId()I

    move-result v0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$VideoBitrate;

    invoke-direct {v1, v7, v3, v7, v4}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$VideoBitrate;-><init>(IIILcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$1;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_1920X824_60FPS:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId()I

    move-result v0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$VideoBitrate;

    invoke-direct {v1, v5, v7, v5, v4}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$VideoBitrate;-><init>(IIILcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$1;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_1920X824_120FPS:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId()I

    move-result v0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$VideoBitrate;

    invoke-direct {v1, v2, v9, v2, v4}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$VideoBitrate;-><init>(IIILcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$1;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_1440X1440:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId()I

    move-result v0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$VideoBitrate;

    invoke-direct {v1, v8, v11, v6, v4}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$VideoBitrate;-><init>(IIILcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$1;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_1440X1080:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId()I

    move-result v0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$VideoBitrate;

    const v2, 0xc65d40

    const v3, 0x7a1200

    invoke-direct {v1, v2, v3, v12, v4}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$VideoBitrate;-><init>(IIILcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$1;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_1072X1072:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId()I

    move-result v0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$VideoBitrate;

    invoke-direct {v1, v2, v3, v12, v4}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$VideoBitrate;-><init>(IIILcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$1;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_1280X720:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId()I

    move-result v0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$VideoBitrate;

    const v2, 0x6acfc0

    invoke-direct {v1, v10, v2, v7, v4}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$VideoBitrate;-><init>(IIILcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$1;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_960X960:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId()I

    move-result v0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$VideoBitrate;

    invoke-direct {v1, v10, v2, v10, v4}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$VideoBitrate;-><init>(IIILcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$1;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_640X480:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId()I

    move-result v0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$VideoBitrate;

    const v2, 0x2ef770

    const v3, 0x1e8480

    const v5, 0x44aa20

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$VideoBitrate;-><init>(IIILcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$1;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_320X240:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId()I

    move-result v0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$VideoBitrate;

    const v2, 0xbb418

    const v3, 0x7a120

    const v5, 0x118c30

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$VideoBitrate;-><init>(IIILcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$1;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_176X144:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId()I

    move-result v0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$VideoBitrate;

    const v2, 0x5dc00

    const v3, 0x493e0

    const v5, 0x927c0

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$VideoBitrate;-><init>(IIILcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$1;->put(ILjava/lang/Object;)V

    return-void
.end method
