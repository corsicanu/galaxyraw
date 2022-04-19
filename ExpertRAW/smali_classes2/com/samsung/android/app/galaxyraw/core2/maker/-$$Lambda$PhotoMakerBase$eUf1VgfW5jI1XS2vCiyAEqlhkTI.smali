.class public final synthetic Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$PhotoMakerBase$eUf1VgfW5jI1XS2vCiyAEqlhkTI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$PhotoMakerBase$eUf1VgfW5jI1XS2vCiyAEqlhkTI;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$PhotoMakerBase$eUf1VgfW5jI1XS2vCiyAEqlhkTI;

    invoke-direct {v0}, Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$PhotoMakerBase$eUf1VgfW5jI1XS2vCiyAEqlhkTI;-><init>()V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$PhotoMakerBase$eUf1VgfW5jI1XS2vCiyAEqlhkTI;->INSTANCE:Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$PhotoMakerBase$eUf1VgfW5jI1XS2vCiyAEqlhkTI;

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

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->lambda$checkValidConnection$0(Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;)V

    return-void
.end method
