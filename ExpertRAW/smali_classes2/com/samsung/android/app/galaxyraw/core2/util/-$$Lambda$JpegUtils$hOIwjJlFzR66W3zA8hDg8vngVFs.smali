.class public final synthetic Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$JpegUtils$hOIwjJlFzR66W3zA8hDg8vngVFs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$JpegUtils$hOIwjJlFzR66W3zA8hDg8vngVFs;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$JpegUtils$hOIwjJlFzR66W3zA8hDg8vngVFs;

    invoke-direct {v0}, Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$JpegUtils$hOIwjJlFzR66W3zA8hDg8vngVFs;-><init>()V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$JpegUtils$hOIwjJlFzR66W3zA8hDg8vngVFs;->INSTANCE:Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$JpegUtils$hOIwjJlFzR66W3zA8hDg8vngVFs;

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

    check-cast p1, [B

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils;->lambda$loadJpegMetadata$13([B)Z

    move-result p0

    return p0
.end method
