.class public final synthetic Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$PhotoMakerBase$KBVQ_w5Rgrzcmcef0anx42eftFE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$PhotoMakerBase$KBVQ_w5Rgrzcmcef0anx42eftFE;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$PhotoMakerBase$KBVQ_w5Rgrzcmcef0anx42eftFE;

    invoke-direct {v0}, Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$PhotoMakerBase$KBVQ_w5Rgrzcmcef0anx42eftFE;-><init>()V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$PhotoMakerBase$KBVQ_w5Rgrzcmcef0anx42eftFE;->INSTANCE:Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$PhotoMakerBase$KBVQ_w5Rgrzcmcef0anx42eftFE;

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

    check-cast p1, Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->lambda$checkValidConnection$1(Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;)V

    return-void
.end method
