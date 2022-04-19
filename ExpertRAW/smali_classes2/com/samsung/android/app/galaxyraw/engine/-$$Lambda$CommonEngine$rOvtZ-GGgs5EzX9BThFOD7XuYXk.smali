.class public final synthetic Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CommonEngine$rOvtZ-GGgs5EzX9BThFOD7XuYXk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$MakerPublicSettingsUpdater;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CommonEngine$rOvtZ-GGgs5EzX9BThFOD7XuYXk;->f$0:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    iput p2, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CommonEngine$rOvtZ-GGgs5EzX9BThFOD7XuYXk;->f$1:I

    iput p3, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CommonEngine$rOvtZ-GGgs5EzX9BThFOD7XuYXk;->f$2:I

    return-void
.end method


# virtual methods
.method public final update(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CommonEngine$rOvtZ-GGgs5EzX9BThFOD7XuYXk;->f$0:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    iget v1, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CommonEngine$rOvtZ-GGgs5EzX9BThFOD7XuYXk;->f$1:I

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CommonEngine$rOvtZ-GGgs5EzX9BThFOD7XuYXk;->f$2:I

    invoke-virtual {v0, v1, p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->lambda$setSubCameraZoomValue$9$CommonEngine(IILcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;)Z

    move-result p0

    return p0
.end method
