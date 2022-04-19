.class public final synthetic Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$JpegUtils$MdHMyXHdyEPwkr9d0l1bx0MLs7Q;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/util/Rational;

.field public final synthetic f$1:Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;


# direct methods
.method public synthetic constructor <init>(Landroid/util/Rational;Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$JpegUtils$MdHMyXHdyEPwkr9d0l1bx0MLs7Q;->f$0:Landroid/util/Rational;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$JpegUtils$MdHMyXHdyEPwkr9d0l1bx0MLs7Q;->f$1:Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$JpegUtils$MdHMyXHdyEPwkr9d0l1bx0MLs7Q;->f$0:Landroid/util/Rational;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$JpegUtils$MdHMyXHdyEPwkr9d0l1bx0MLs7Q;->f$1:Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v0, p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils;->lambda$loadJpegMetadata$6(Landroid/util/Rational;Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;Ljava/lang/Integer;)V

    return-void
.end method
