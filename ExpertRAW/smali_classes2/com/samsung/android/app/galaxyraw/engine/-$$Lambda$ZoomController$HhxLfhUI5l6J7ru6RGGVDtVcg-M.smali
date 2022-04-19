.class public final synthetic Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$ZoomController$HhxLfhUI5l6J7ru6RGGVDtVcg-M;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$MakerPublicSettingsUpdater;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/engine/ZoomController;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/engine/ZoomController;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$ZoomController$HhxLfhUI5l6J7ru6RGGVDtVcg-M;->f$0:Lcom/samsung/android/app/galaxyraw/engine/ZoomController;

    iput p2, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$ZoomController$HhxLfhUI5l6J7ru6RGGVDtVcg-M;->f$1:I

    return-void
.end method


# virtual methods
.method public final update(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$ZoomController$HhxLfhUI5l6J7ru6RGGVDtVcg-M;->f$0:Lcom/samsung/android/app/galaxyraw/engine/ZoomController;

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$ZoomController$HhxLfhUI5l6J7ru6RGGVDtVcg-M;->f$1:I

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/ZoomController;->lambda$setZoomLevel$3$ZoomController(ILcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;)Z

    move-result p0

    return p0
.end method
