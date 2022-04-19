.class public final synthetic Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$JpegUtils$TL2cpifnyxMRu1uxrXLPwAbrP_I;
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

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$JpegUtils$TL2cpifnyxMRu1uxrXLPwAbrP_I;->f$0:Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$JpegUtils$TL2cpifnyxMRu1uxrXLPwAbrP_I;->f$0:Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;

    check-cast p1, Landroid/util/Size;

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils;->lambda$loadJpegMetadata$22(Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;Landroid/util/Size;)V

    return-void
.end method
