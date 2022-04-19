.class public final synthetic Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$ProcessingPhotoMakerBase$4$C1U5FpNK-Pgy9oHe4kVaxTnSVs4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase$4;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase$4;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$ProcessingPhotoMakerBase$4$C1U5FpNK-Pgy9oHe4kVaxTnSVs4;->f$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase$4;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$ProcessingPhotoMakerBase$4$C1U5FpNK-Pgy9oHe4kVaxTnSVs4;->f$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase$4;

    check-cast p1, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase$4;->lambda$onPictureTaken$3$ProcessingPhotoMakerBase$4(Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest;)V

    return-void
.end method
