.class public final synthetic Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AgifCaptureController$V6FTnvgHHNxvT460ERBJ28OHAII;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/engine/AgifCaptureController;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/engine/AgifCaptureController;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AgifCaptureController$V6FTnvgHHNxvT460ERBJ28OHAII;->f$0:Lcom/samsung/android/app/galaxyraw/engine/AgifCaptureController;

    iput p2, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AgifCaptureController$V6FTnvgHHNxvT460ERBJ28OHAII;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AgifCaptureController$V6FTnvgHHNxvT460ERBJ28OHAII;->f$0:Lcom/samsung/android/app/galaxyraw/engine/AgifCaptureController;

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AgifCaptureController$V6FTnvgHHNxvT460ERBJ28OHAII;->f$1:I

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/galaxyraw/engine/AgifCaptureController;->lambda$onProgress$2$AgifCaptureController(I)V

    return-void
.end method
