.class public final synthetic Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$ZoomController$PgNS6iR5VJB6uEug7z6Af2YDlYc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$MakerPublicSettingsUpdater;


# instance fields
.field public final synthetic f$0:F


# direct methods
.method public synthetic constructor <init>(F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$ZoomController$PgNS6iR5VJB6uEug7z6Af2YDlYc;->f$0:F

    return-void
.end method


# virtual methods
.method public final update(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;)Z
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$ZoomController$PgNS6iR5VJB6uEug7z6Af2YDlYc;->f$0:F

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/ZoomController;->lambda$setTargetZoomRatio$2(FLcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;)Z

    move-result p0

    return p0
.end method
