.class Lcom/samsung/android/app/galaxyraw/util/ShootingModeMap$3;
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
        "Ljava/lang/Integer;",
        "Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_PHOTO:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/util/ShootingModeMap$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_VIDEO:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/util/ShootingModeMap$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_PRO:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/util/ShootingModeMap$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_PANORAMA:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/util/ShootingModeMap$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0xb

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_SLOW_MOTION:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/util/ShootingModeMap$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0xc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_HYPER_LAPSE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/util/ShootingModeMap$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0xd

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_FOOD:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/util/ShootingModeMap$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x12

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_NIGHT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/util/ShootingModeMap$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x1c

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_LIVE_FOCUS:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/util/ShootingModeMap$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x1d

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_SUPER_SLOW_MOTION:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/util/ShootingModeMap$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x1e

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_SELFIE_FOCUS:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/util/ShootingModeMap$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x20

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_LIVE_FOCUS_VIDEO:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/util/ShootingModeMap$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x21

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_MULTI_RECORDING:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/util/ShootingModeMap$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x22

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_SINGLE_TAKE_PHOTO:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/util/ShootingModeMap$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x25

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_SINGLE_TAKE_VIDEO:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/util/ShootingModeMap$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x24

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_PRO_VIDEO:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/util/ShootingModeMap$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x26

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_AR_DOODLE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/util/ShootingModeMap$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x28

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_QR:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/util/ShootingModeMap$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x23

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_MORE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/util/ShootingModeMap$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x27

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_DUAL_RECORDING:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/util/ShootingModeMap$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
