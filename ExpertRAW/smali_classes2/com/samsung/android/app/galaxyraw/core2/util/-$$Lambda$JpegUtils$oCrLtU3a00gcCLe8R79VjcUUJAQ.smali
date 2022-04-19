.class public final synthetic Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$JpegUtils$oCrLtU3a00gcCLe8R79VjcUUJAQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$JpegUtils$oCrLtU3a00gcCLe8R79VjcUUJAQ;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$JpegUtils$oCrLtU3a00gcCLe8R79VjcUUJAQ;

    invoke-direct {v0}, Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$JpegUtils$oCrLtU3a00gcCLe8R79VjcUUJAQ;-><init>()V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$JpegUtils$oCrLtU3a00gcCLe8R79VjcUUJAQ;->INSTANCE:Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$JpegUtils$oCrLtU3a00gcCLe8R79VjcUUJAQ;

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

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils;->lambda$loadJpegMetadata$15(Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$ExternalJpegMetadata;)Z

    move-result p0

    return p0
.end method
