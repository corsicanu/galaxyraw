.class public final synthetic Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CommonEngine$YO9HRgB03XtY6KHO_l88GeTZF4Q;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$MakerPublicSettingsUpdater;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CommonEngine$YO9HRgB03XtY6KHO_l88GeTZF4Q;->f$0:I

    return-void
.end method


# virtual methods
.method public final update(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;)Z
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CommonEngine$YO9HRgB03XtY6KHO_l88GeTZF4Q;->f$0:I

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->lambda$setOverheatLevel$7(ILcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;)Z

    move-result p0

    return p0
.end method
