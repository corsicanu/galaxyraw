.class public final synthetic Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfController$MdszbtaExb-RqKv5nnqrcsDjL-Q;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$MakerPublicSettingsUpdater;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/engine/AeAfController;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/engine/AeAfController;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfController$MdszbtaExb-RqKv5nnqrcsDjL-Q;->f$0:Lcom/samsung/android/app/galaxyraw/engine/AeAfController;

    iput p2, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfController$MdszbtaExb-RqKv5nnqrcsDjL-Q;->f$1:I

    return-void
.end method


# virtual methods
.method public final update(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfController$MdszbtaExb-RqKv5nnqrcsDjL-Q;->f$0:Lcom/samsung/android/app/galaxyraw/engine/AeAfController;

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfController$MdszbtaExb-RqKv5nnqrcsDjL-Q;->f$1:I

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->lambda$setSensorSensitivity$19$AeAfController(ILcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;)Z

    move-result p0

    return p0
.end method
