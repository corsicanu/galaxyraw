.class public final synthetic Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$ProRawPhotoMaker$STs41Dna2ycjnvvh6KSsNIe-8kQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$ProRawPhotoMaker$STs41Dna2ycjnvvh6KSsNIe-8kQ;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$ProRawPhotoMaker$STs41Dna2ycjnvvh6KSsNIe-8kQ;

    invoke-direct {v0}, Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$ProRawPhotoMaker$STs41Dna2ycjnvvh6KSsNIe-8kQ;-><init>()V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$ProRawPhotoMaker$STs41Dna2ycjnvvh6KSsNIe-8kQ;->INSTANCE:Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$ProRawPhotoMaker$STs41Dna2ycjnvvh6KSsNIe-8kQ;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest$Sequence;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->lambda$takeProcessingRawPictureInternal$11(Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest$Sequence;)V

    return-void
.end method
