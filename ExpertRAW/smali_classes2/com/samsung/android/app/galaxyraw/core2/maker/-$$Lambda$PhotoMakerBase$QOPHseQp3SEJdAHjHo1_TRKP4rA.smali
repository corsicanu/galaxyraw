.class public final synthetic Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$PhotoMakerBase$QOPHseQp3SEJdAHjHo1_TRKP4rA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$PhotoMakerBase$QOPHseQp3SEJdAHjHo1_TRKP4rA;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$PhotoMakerBase$QOPHseQp3SEJdAHjHo1_TRKP4rA;

    invoke-direct {v0}, Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$PhotoMakerBase$QOPHseQp3SEJdAHjHo1_TRKP4rA;-><init>()V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$PhotoMakerBase$QOPHseQp3SEJdAHjHo1_TRKP4rA;->INSTANCE:Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$PhotoMakerBase$QOPHseQp3SEJdAHjHo1_TRKP4rA;

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

    check-cast p1, Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->lambda$checkAvailableDeviceConfiguration$9(Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;)Z

    move-result p0

    return p0
.end method
