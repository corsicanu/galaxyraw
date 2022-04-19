.class public final synthetic Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfController$__JvkWUsByFqt0Gkyt2_bv9zcwo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$MakerPublicSettingsUpdater;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/engine/AeAfController;

.field public final synthetic f$1:I

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/engine/AeAfController;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfController$__JvkWUsByFqt0Gkyt2_bv9zcwo;->f$0:Lcom/samsung/android/app/galaxyraw/engine/AeAfController;

    iput p2, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfController$__JvkWUsByFqt0Gkyt2_bv9zcwo;->f$1:I

    iput-boolean p3, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfController$__JvkWUsByFqt0Gkyt2_bv9zcwo;->f$2:Z

    return-void
.end method


# virtual methods
.method public final update(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfController$__JvkWUsByFqt0Gkyt2_bv9zcwo;->f$0:Lcom/samsung/android/app/galaxyraw/engine/AeAfController;

    iget v1, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfController$__JvkWUsByFqt0Gkyt2_bv9zcwo;->f$1:I

    iget-boolean p0, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfController$__JvkWUsByFqt0Gkyt2_bv9zcwo;->f$2:Z

    invoke-virtual {v0, v1, p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->lambda$setAeMode$10$AeAfController(IZLcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;)Z

    move-result p0

    return p0
.end method
