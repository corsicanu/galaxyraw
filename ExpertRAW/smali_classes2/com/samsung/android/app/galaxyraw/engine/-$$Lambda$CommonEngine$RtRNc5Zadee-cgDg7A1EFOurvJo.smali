.class public final synthetic Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CommonEngine$RtRNc5Zadee-cgDg7A1EFOurvJo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$MakerPublicSettingsUpdater;


# instance fields
.field public final synthetic f$0:[J


# direct methods
.method public synthetic constructor <init>([J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CommonEngine$RtRNc5Zadee-cgDg7A1EFOurvJo;->f$0:[J

    return-void
.end method


# virtual methods
.method public final update(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;)Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CommonEngine$RtRNc5Zadee-cgDg7A1EFOurvJo;->f$0:[J

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->lambda$setDetectedSceneInfo$5([JLcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;)Z

    move-result p0

    return p0
.end method
