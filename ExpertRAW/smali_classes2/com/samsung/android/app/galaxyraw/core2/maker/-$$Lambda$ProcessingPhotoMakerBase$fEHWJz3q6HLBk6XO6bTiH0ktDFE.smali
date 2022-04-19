.class public final synthetic Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$ProcessingPhotoMakerBase$fEHWJz3q6HLBk6XO6bTiH0ktDFE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$ProcessingPhotoMakerBase$fEHWJz3q6HLBk6XO6bTiH0ktDFE;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$ProcessingPhotoMakerBase$fEHWJz3q6HLBk6XO6bTiH0ktDFE;

    invoke-direct {v0}, Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$ProcessingPhotoMakerBase$fEHWJz3q6HLBk6XO6bTiH0ktDFE;-><init>()V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$ProcessingPhotoMakerBase$fEHWJz3q6HLBk6XO6bTiH0ktDFE;->INSTANCE:Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$ProcessingPhotoMakerBase$fEHWJz3q6HLBk6XO6bTiH0ktDFE;

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

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->lambda$takeProcessingPictureInternal$1(Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest$Sequence;)V

    return-void
.end method
