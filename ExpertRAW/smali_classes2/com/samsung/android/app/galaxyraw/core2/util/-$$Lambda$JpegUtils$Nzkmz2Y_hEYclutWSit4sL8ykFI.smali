.class public final synthetic Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$JpegUtils$Nzkmz2Y_hEYclutWSit4sL8ykFI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$JpegUtils$Nzkmz2Y_hEYclutWSit4sL8ykFI;->f$0:Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$JpegUtils$Nzkmz2Y_hEYclutWSit4sL8ykFI;->f$0:Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;

    check-cast p1, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$ExternalJpegMetadata;

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils;->lambda$loadJpegMetadata$16(Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$ExternalJpegMetadata;)V

    return-void
.end method
