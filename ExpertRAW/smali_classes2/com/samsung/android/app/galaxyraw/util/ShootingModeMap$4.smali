.class Lcom/samsung/android/app/galaxyraw/util/ShootingModeMap$4;
.super Ljava/util/HashMap;
.source "ShootingModeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/util/ShootingModeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;",
        "Ljava/util/Map;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_PHOTO:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->SHOOTING_MODE_PHOTO:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/MapTag;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/util/ShootingModeMap$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_VIDEO:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->SHOOTING_MODE_VIDEO:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/MapTag;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/util/ShootingModeMap$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_PRO:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->SHOOTING_MODE_PRO:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/MapTag;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/util/ShootingModeMap$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_PANORAMA:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->SHOOTING_MODE_PANORAMA:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/MapTag;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/util/ShootingModeMap$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_SLOW_MOTION:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->SHOOTING_MODE_SLOW_MOTION:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/MapTag;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/util/ShootingModeMap$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_HYPER_LAPSE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->SHOOTING_MODE_HYPER_LAPSE:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/MapTag;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/util/ShootingModeMap$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_FOOD:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->SHOOTING_MODE_FOOD:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/MapTag;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/util/ShootingModeMap$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_NIGHT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->SHOOTING_MODE_NIGHT:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/MapTag;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/util/ShootingModeMap$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_LIVE_FOCUS:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->SHOOTING_MODE_LIVE_FOCUS:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/MapTag;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/util/ShootingModeMap$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_SUPER_SLOW_MOTION:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->SHOOTING_MODE_SUPER_SLOW_MOTION:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/MapTag;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/util/ShootingModeMap$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_SELFIE_FOCUS:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->SHOOTING_MODE_SELFIE_FOCUS:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/MapTag;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/util/ShootingModeMap$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_LIVE_FOCUS_VIDEO:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->SHOOTING_MODE_LIVE_FOCUS_VIDEO:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/MapTag;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/util/ShootingModeMap$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_MULTI_RECORDING:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->SHOOTING_MODE_MULTI_RECORDING:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/MapTag;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/util/ShootingModeMap$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_SINGLE_TAKE_PHOTO:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->SHOOTING_MODE_SINGLE_TAKE_PHOTO:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/MapTag;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/util/ShootingModeMap$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_SINGLE_TAKE_VIDEO:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->SHOOTING_MODE_SINGLE_TAKE_VIDEO:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/MapTag;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/util/ShootingModeMap$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_PRO_VIDEO:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->SHOOTING_MODE_PRO_VIDEO:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/MapTag;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/util/ShootingModeMap$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_AR_DOODLE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->SHOOTING_MODE_AR_DOODLE:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/MapTag;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/util/ShootingModeMap$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_DUAL_RECORDING:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->SHOOTING_MODE_DUAL_RECORDING:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/MapTag;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/util/ShootingModeMap$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_QR:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->SHOOTING_MODE_QR:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/MapTag;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/util/ShootingModeMap$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_MORE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/util/ShootingModeMap$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
