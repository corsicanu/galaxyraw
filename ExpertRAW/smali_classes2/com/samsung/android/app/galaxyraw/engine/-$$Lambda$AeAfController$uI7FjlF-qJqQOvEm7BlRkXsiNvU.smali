.class public final synthetic Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfController$uI7FjlF-qJqQOvEm7BlRkXsiNvU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$MakerPublicSettingsUpdater;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/engine/AeAfController;

.field public final synthetic f$1:Landroid/graphics/Point;

.field public final synthetic f$2:Landroid/util/Size;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/engine/AeAfController;Landroid/graphics/Point;Landroid/util/Size;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfController$uI7FjlF-qJqQOvEm7BlRkXsiNvU;->f$0:Lcom/samsung/android/app/galaxyraw/engine/AeAfController;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfController$uI7FjlF-qJqQOvEm7BlRkXsiNvU;->f$1:Landroid/graphics/Point;

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfController$uI7FjlF-qJqQOvEm7BlRkXsiNvU;->f$2:Landroid/util/Size;

    return-void
.end method


# virtual methods
.method public final update(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfController$uI7FjlF-qJqQOvEm7BlRkXsiNvU;->f$0:Lcom/samsung/android/app/galaxyraw/engine/AeAfController;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfController$uI7FjlF-qJqQOvEm7BlRkXsiNvU;->f$1:Landroid/graphics/Point;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfController$uI7FjlF-qJqQOvEm7BlRkXsiNvU;->f$2:Landroid/util/Size;

    invoke-virtual {v0, v1, p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->lambda$setTouchAf$22$AeAfController(Landroid/graphics/Point;Landroid/util/Size;Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;)Z

    move-result p0

    return p0
.end method
