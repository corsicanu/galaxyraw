.class Lcom/samsung/android/app/galaxyraw/util/CameraResolution$1;
.super Ljava/util/HashMap;
.source "CameraResolution.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/util/CameraResolution;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;",
        "Lcom/samsung/android/app/galaxyraw/util/CameraResolution$ResolutionMapTag;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_7680X4320:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/util/CameraResolution$ResolutionMapTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->BACK_CAMCORDER_RESOLUTION_FEATURE_MAP_7680X4320:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution$ResolutionMapTag;-><init>(Lcom/samsung/android/app/galaxyraw/feature/MapTag;Lcom/samsung/android/app/galaxyraw/feature/MapTag;)V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_7680X4320_24FPS:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/util/CameraResolution$ResolutionMapTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->BACK_CAMCORDER_RESOLUTION_FEATURE_MAP_7680X4320_24FPS:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution$ResolutionMapTag;-><init>(Lcom/samsung/android/app/galaxyraw/feature/MapTag;Lcom/samsung/android/app/galaxyraw/feature/MapTag;)V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_7680X3296:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/util/CameraResolution$ResolutionMapTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->BACK_CAMCORDER_RESOLUTION_FEATURE_MAP_7680X3296:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution$ResolutionMapTag;-><init>(Lcom/samsung/android/app/galaxyraw/feature/MapTag;Lcom/samsung/android/app/galaxyraw/feature/MapTag;)V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_7680X3296_24FPS:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/util/CameraResolution$ResolutionMapTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->BACK_CAMCORDER_RESOLUTION_FEATURE_MAP_7680X3296_24FPS:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution$ResolutionMapTag;-><init>(Lcom/samsung/android/app/galaxyraw/feature/MapTag;Lcom/samsung/android/app/galaxyraw/feature/MapTag;)V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_3840X2160:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/util/CameraResolution$ResolutionMapTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->BACK_CAMCORDER_RESOLUTION_FEATURE_MAP_3840X2160:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->FRONT_CAMCORDER_RESOLUTION_FEATURE_MAP_3840X2160:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    invoke-direct {v1, v2, v4}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution$ResolutionMapTag;-><init>(Lcom/samsung/android/app/galaxyraw/feature/MapTag;Lcom/samsung/android/app/galaxyraw/feature/MapTag;)V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_3840X2160_24FPS:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/util/CameraResolution$ResolutionMapTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->BACK_CAMCORDER_RESOLUTION_FEATURE_MAP_3840X2160_24FPS:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution$ResolutionMapTag;-><init>(Lcom/samsung/android/app/galaxyraw/feature/MapTag;Lcom/samsung/android/app/galaxyraw/feature/MapTag;)V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_3840X2160_60FPS:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/util/CameraResolution$ResolutionMapTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->BACK_CAMCORDER_RESOLUTION_FEATURE_MAP_3840X2160_60FPS:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->FRONT_CAMCORDER_RESOLUTION_FEATURE_MAP_3840X2160_60FPS:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    invoke-direct {v1, v2, v4}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution$ResolutionMapTag;-><init>(Lcom/samsung/android/app/galaxyraw/feature/MapTag;Lcom/samsung/android/app/galaxyraw/feature/MapTag;)V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_3840X1644:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/util/CameraResolution$ResolutionMapTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->BACK_CAMCORDER_RESOLUTION_FEATURE_MAP_3840X1644:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution$ResolutionMapTag;-><init>(Lcom/samsung/android/app/galaxyraw/feature/MapTag;Lcom/samsung/android/app/galaxyraw/feature/MapTag;)V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_3840X1644_24FPS:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/util/CameraResolution$ResolutionMapTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->BACK_CAMCORDER_RESOLUTION_FEATURE_MAP_3840X1644_24FPS:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution$ResolutionMapTag;-><init>(Lcom/samsung/android/app/galaxyraw/feature/MapTag;Lcom/samsung/android/app/galaxyraw/feature/MapTag;)V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_3840X1644_60FPS:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/util/CameraResolution$ResolutionMapTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->BACK_CAMCORDER_RESOLUTION_FEATURE_MAP_3840X1644_60FPS:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution$ResolutionMapTag;-><init>(Lcom/samsung/android/app/galaxyraw/feature/MapTag;Lcom/samsung/android/app/galaxyraw/feature/MapTag;)V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_2560X1440:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/util/CameraResolution$ResolutionMapTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->BACK_CAMCORDER_RESOLUTION_FEATURE_MAP_2560X1440:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->FRONT_CAMCORDER_RESOLUTION_FEATURE_MAP_2560X1440:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    invoke-direct {v1, v2, v4}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution$ResolutionMapTag;-><init>(Lcom/samsung/android/app/galaxyraw/feature/MapTag;Lcom/samsung/android/app/galaxyraw/feature/MapTag;)V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_2400X1080:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/util/CameraResolution$ResolutionMapTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->BACK_CAMCORDER_RESOLUTION_FEATURE_MAP_2400X1080:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->FRONT_CAMCORDER_RESOLUTION_FEATURE_MAP_2400X1080:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    invoke-direct {v1, v2, v4}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution$ResolutionMapTag;-><init>(Lcom/samsung/android/app/galaxyraw/feature/MapTag;Lcom/samsung/android/app/galaxyraw/feature/MapTag;)V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_2320X1080:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/util/CameraResolution$ResolutionMapTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->BACK_CAMCORDER_RESOLUTION_FEATURE_MAP_2320X1080:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->FRONT_CAMCORDER_RESOLUTION_FEATURE_MAP_2320X1080:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    invoke-direct {v1, v2, v4}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution$ResolutionMapTag;-><init>(Lcom/samsung/android/app/galaxyraw/feature/MapTag;Lcom/samsung/android/app/galaxyraw/feature/MapTag;)V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_2288X1080:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/util/CameraResolution$ResolutionMapTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->BACK_CAMCORDER_RESOLUTION_FEATURE_MAP_2288X1080:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->FRONT_CAMCORDER_RESOLUTION_FEATURE_MAP_2288X1080:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    invoke-direct {v1, v2, v4}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution$ResolutionMapTag;-><init>(Lcom/samsung/android/app/galaxyraw/feature/MapTag;Lcom/samsung/android/app/galaxyraw/feature/MapTag;)V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_2224X1080:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/util/CameraResolution$ResolutionMapTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->BACK_CAMCORDER_RESOLUTION_FEATURE_MAP_2224X1080:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->FRONT_CAMCORDER_RESOLUTION_FEATURE_MAP_2224X1080:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    invoke-direct {v1, v2, v4}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution$ResolutionMapTag;-><init>(Lcom/samsung/android/app/galaxyraw/feature/MapTag;Lcom/samsung/android/app/galaxyraw/feature/MapTag;)V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_1920X1440:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/util/CameraResolution$ResolutionMapTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->BACK_CAMCORDER_RESOLUTION_FEATURE_MAP_1920X1440:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->FRONT_CAMCORDER_RESOLUTION_FEATURE_MAP_1920X1440:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    invoke-direct {v1, v2, v4}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution$ResolutionMapTag;-><init>(Lcom/samsung/android/app/galaxyraw/feature/MapTag;Lcom/samsung/android/app/galaxyraw/feature/MapTag;)V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_1920X1080:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/util/CameraResolution$ResolutionMapTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->BACK_CAMCORDER_RESOLUTION_FEATURE_MAP_1920X1080:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->FRONT_CAMCORDER_RESOLUTION_FEATURE_MAP_1920X1080:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    invoke-direct {v1, v2, v4}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution$ResolutionMapTag;-><init>(Lcom/samsung/android/app/galaxyraw/feature/MapTag;Lcom/samsung/android/app/galaxyraw/feature/MapTag;)V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_1920X1080_120FPS:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/util/CameraResolution$ResolutionMapTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->BACK_CAMCORDER_RESOLUTION_FEATURE_MAP_1920X1080_120FPS:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution$ResolutionMapTag;-><init>(Lcom/samsung/android/app/galaxyraw/feature/MapTag;Lcom/samsung/android/app/galaxyraw/feature/MapTag;)V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_1920X1080_60FPS:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/util/CameraResolution$ResolutionMapTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->BACK_CAMCORDER_RESOLUTION_FEATURE_MAP_1920X1080_60FPS:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->FRONT_CAMCORDER_RESOLUTION_FEATURE_MAP_1920X1080_60FPS:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    invoke-direct {v1, v2, v4}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution$ResolutionMapTag;-><init>(Lcom/samsung/android/app/galaxyraw/feature/MapTag;Lcom/samsung/android/app/galaxyraw/feature/MapTag;)V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_1920X1080_24FPS:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/util/CameraResolution$ResolutionMapTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->BACK_CAMCORDER_RESOLUTION_FEATURE_MAP_1920X1080_24FPS:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution$ResolutionMapTag;-><init>(Lcom/samsung/android/app/galaxyraw/feature/MapTag;Lcom/samsung/android/app/galaxyraw/feature/MapTag;)V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_1920X1080_AUTO_FPS:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/util/CameraResolution$ResolutionMapTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->BACK_CAMCORDER_RESOLUTION_FEATURE_MAP_1920X1080_AUTO_FPS:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->FRONT_CAMCORDER_RESOLUTION_FEATURE_MAP_1920X1080_AUTO_FPS:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    invoke-direct {v1, v2, v4}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution$ResolutionMapTag;-><init>(Lcom/samsung/android/app/galaxyraw/feature/MapTag;Lcom/samsung/android/app/galaxyraw/feature/MapTag;)V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_1920X824:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/util/CameraResolution$ResolutionMapTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->BACK_CAMCORDER_RESOLUTION_FEATURE_MAP_1920X824:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution$ResolutionMapTag;-><init>(Lcom/samsung/android/app/galaxyraw/feature/MapTag;Lcom/samsung/android/app/galaxyraw/feature/MapTag;)V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_1920X824_120FPS:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/util/CameraResolution$ResolutionMapTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->BACK_CAMCORDER_RESOLUTION_FEATURE_MAP_1920X824_120FPS:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution$ResolutionMapTag;-><init>(Lcom/samsung/android/app/galaxyraw/feature/MapTag;Lcom/samsung/android/app/galaxyraw/feature/MapTag;)V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_1920X824_60FPS:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/util/CameraResolution$ResolutionMapTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->BACK_CAMCORDER_RESOLUTION_FEATURE_MAP_1920X824_60FPS:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution$ResolutionMapTag;-><init>(Lcom/samsung/android/app/galaxyraw/feature/MapTag;Lcom/samsung/android/app/galaxyraw/feature/MapTag;)V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_1920X824_24FPS:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/util/CameraResolution$ResolutionMapTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->BACK_CAMCORDER_RESOLUTION_FEATURE_MAP_1920X824_24FPS:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution$ResolutionMapTag;-><init>(Lcom/samsung/android/app/galaxyraw/feature/MapTag;Lcom/samsung/android/app/galaxyraw/feature/MapTag;)V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_1440X1440:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/util/CameraResolution$ResolutionMapTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->BACK_CAMCORDER_RESOLUTION_FEATURE_MAP_1440X1440:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->FRONT_CAMCORDER_RESOLUTION_FEATURE_MAP_1440X1440:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    invoke-direct {v1, v2, v4}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution$ResolutionMapTag;-><init>(Lcom/samsung/android/app/galaxyraw/feature/MapTag;Lcom/samsung/android/app/galaxyraw/feature/MapTag;)V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_1440X1080:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/util/CameraResolution$ResolutionMapTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->BACK_CAMCORDER_RESOLUTION_FEATURE_MAP_1440X1080:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution$ResolutionMapTag;-><init>(Lcom/samsung/android/app/galaxyraw/feature/MapTag;Lcom/samsung/android/app/galaxyraw/feature/MapTag;)V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_1072X1072:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/util/CameraResolution$ResolutionMapTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->BACK_CAMCORDER_RESOLUTION_FEATURE_MAP_1072X1072:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    sget-object v3, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->FRONT_CAMCORDER_RESOLUTION_FEATURE_MAP_1072X1072:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution$ResolutionMapTag;-><init>(Lcom/samsung/android/app/galaxyraw/feature/MapTag;Lcom/samsung/android/app/galaxyraw/feature/MapTag;)V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_1280X720:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/util/CameraResolution$ResolutionMapTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->BACK_CAMCORDER_RESOLUTION_FEATURE_MAP_1280X720:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    sget-object v3, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->FRONT_CAMCORDER_RESOLUTION_FEATURE_MAP_1280X720:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution$ResolutionMapTag;-><init>(Lcom/samsung/android/app/galaxyraw/feature/MapTag;Lcom/samsung/android/app/galaxyraw/feature/MapTag;)V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
