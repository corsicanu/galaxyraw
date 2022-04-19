.class Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$2;
.super Ljava/util/HashMap;
.source "ActionStateSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_7680X4320_24FPS:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;->RATIO_16x9_8K:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;->getRatioId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_7680X3296_24FPS:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;->RATIO_21x9_8K:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;->getRatioId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_3840X2160:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;->RATIO_16x9_UHD:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;->getRatioId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_3840X2160_60FPS:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;->RATIO_16x9_UHD_60FPS:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;->getRatioId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_3840X2160_24FPS:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;->RATIO_16x9_UHD_24FPS:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;->getRatioId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_2560X1440:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;->RATIO_16x9_QHD:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;->getRatioId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_1920X1080:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;->RATIO_16x9_FHD:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;->getRatioId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_1920X1080_120FPS:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;->RATIO_16x9_FHD_120FPS:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;->getRatioId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_1920X1080_60FPS:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;->RATIO_16x9_FHD_60FPS:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;->getRatioId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_1920X1080_24FPS:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;->RATIO_16x9_FHD_24FPS:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;->getRatioId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_1280X720:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;->RATIO_16x9_HD:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;->getRatioId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_1920X1080_AUTO_FPS:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;->RATIO_16x9_FHD_AUTO:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;->getRatioId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_3840X1644:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;->RATIO_21x9_UHD:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;->getRatioId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_3840X1644_60FPS:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;->RATIO_21x9_UHD_60FPS:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;->getRatioId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_3840X1644_24FPS:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;->RATIO_21x9_UHD_24FPS:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;->getRatioId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_1920X824:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;->RATIO_21x9_FHD:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;->getRatioId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_1920X824_120FPS:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;->RATIO_21x9_FHD_120FPS:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;->getRatioId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_1920X824_60FPS:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;->RATIO_21x9_FHD_60FPS:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;->getRatioId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_1920X824_24FPS:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;->RATIO_21x9_FHD_24FPS:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;->getRatioId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
