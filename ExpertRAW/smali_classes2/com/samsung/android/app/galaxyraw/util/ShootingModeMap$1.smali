.class Lcom/samsung/android/app/galaxyraw/util/ShootingModeMap$1;
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
        "Ljava/lang/String;",
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

    const-string v1, "com.samsung.android.app.galaxyraw.shootingmode.photo"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/util/ShootingModeMap$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "com.samsung.android.app.galaxyraw.shootingmode.video"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/util/ShootingModeMap$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "com.samsung.android.app.galaxyraw.shootingmode.pro"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/util/ShootingModeMap$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "com.samsung.android.app.galaxyraw.shootingmode.panorama"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/util/ShootingModeMap$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0xb

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "com.samsung.android.app.galaxyraw.shootingmode.slowmotion"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/util/ShootingModeMap$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0xc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "com.samsung.android.app.galaxyraw.shootingmode.hyperlapse"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/util/ShootingModeMap$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0xd

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "com.samsung.android.app.galaxyraw.shootingmode.food"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/util/ShootingModeMap$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x12

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "com.samsung.android.app.galaxyraw.shootingmode.night"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/util/ShootingModeMap$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x1c

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "com.samsung.android.app.galaxyraw.shootingmode.livefocus"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/util/ShootingModeMap$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x1d

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "com.samsung.android.app.galaxyraw.shootingmode.superslowmotion"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/util/ShootingModeMap$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x1e

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "com.samsung.android.app.galaxyraw.shootingmode.selfieFocus"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/util/ShootingModeMap$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x20

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "com.samsung.android.app.galaxyraw.shootingmode.livefocusvideo"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/util/ShootingModeMap$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x21

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "com.samsung.android.app.galaxyraw.shootingmode.multirecording"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/util/ShootingModeMap$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x22

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "com.samsung.android.app.galaxyraw.shootingmode.singletakephoto"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/util/ShootingModeMap$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x25

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/util/ShootingModeMap$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x24

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "com.samsung.android.app.galaxyraw.shootingmode.provideo"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/util/ShootingModeMap$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x26

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "com.samsung.android.ardrawing"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/util/ShootingModeMap$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x27

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "com.samsung.android.app.galaxyraw.shootingmode.dualrecording"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/util/ShootingModeMap$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x28

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "com.samsung.android.app.galaxyraw.shootingmode.qr"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/util/ShootingModeMap$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x23

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/util/ShootingModeMap$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
