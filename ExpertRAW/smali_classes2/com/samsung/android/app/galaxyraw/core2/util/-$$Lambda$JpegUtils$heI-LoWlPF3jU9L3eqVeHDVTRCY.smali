.class public final synthetic Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$JpegUtils$heI-LoWlPF3jU9L3eqVeHDVTRCY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$JpegUtils$heI-LoWlPF3jU9L3eqVeHDVTRCY;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$JpegUtils$heI-LoWlPF3jU9L3eqVeHDVTRCY;

    invoke-direct {v0}, Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$JpegUtils$heI-LoWlPF3jU9L3eqVeHDVTRCY;-><init>()V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$JpegUtils$heI-LoWlPF3jU9L3eqVeHDVTRCY;->INSTANCE:Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$JpegUtils$heI-LoWlPF3jU9L3eqVeHDVTRCY;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$ExternalJpegMetadata;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils;->lambda$loadJpegMetadata$19(Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$ExternalJpegMetadata;)Z

    move-result p0

    return p0
.end method
