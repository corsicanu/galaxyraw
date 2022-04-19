.class public final synthetic Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfController$aOwoEGpDIw3Ufht36Ug41hM0yuE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$MakerPublicSettingsUpdater;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/engine/AeAfController;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/engine/AeAfController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfController$aOwoEGpDIw3Ufht36Ug41hM0yuE;->f$0:Lcom/samsung/android/app/galaxyraw/engine/AeAfController;

    return-void
.end method


# virtual methods
.method public final update(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;)Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfController$aOwoEGpDIw3Ufht36Ug41hM0yuE;->f$0:Lcom/samsung/android/app/galaxyraw/engine/AeAfController;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->lambda$resetTouchAf$5$AeAfController(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;)Z

    move-result p0

    return p0
.end method
