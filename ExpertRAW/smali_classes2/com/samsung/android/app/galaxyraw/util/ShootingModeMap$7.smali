.class Lcom/samsung/android/app/galaxyraw/util/ShootingModeMap$7;
.super Ljava/util/HashMap;
.source "ShootingModeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/galaxyraw/util/ShootingModeMap;->initializeFrontCameraIdListMap()Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/Integer;",
        "Landroid/util/SparseArray<",
        "Ljava/lang/Integer;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic val$frontCameraIdMap:Ljava/util/Map;


# direct methods
.method constructor <init>(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "val$frontCameraIdMap"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/util/ShootingModeMap$7;->val$frontCameraIdMap:Ljava/util/Map;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/util/ShootingModeMap$7$1;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/app/galaxyraw/util/ShootingModeMap$7$1;-><init>(Lcom/samsung/android/app/galaxyraw/util/ShootingModeMap$7;Ljava/util/Map$Entry;)V

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/app/galaxyraw/util/ShootingModeMap$7;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method
