.class public final synthetic Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/-$$Lambda$q0bqu-UQeTqAj3kNfu3ssDQYIbg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingPresenter$ResolutionListGetter;


# static fields
.field public static final synthetic INSTANCE:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/-$$Lambda$q0bqu-UQeTqAj3kNfu3ssDQYIbg;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/-$$Lambda$q0bqu-UQeTqAj3kNfu3ssDQYIbg;

    invoke-direct {v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/-$$Lambda$q0bqu-UQeTqAj3kNfu3ssDQYIbg;-><init>()V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/-$$Lambda$q0bqu-UQeTqAj3kNfu3ssDQYIbg;->INSTANCE:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/-$$Lambda$q0bqu-UQeTqAj3kNfu3ssDQYIbg;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;)[Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;
    .locals 0

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getSelectableFrontVideoResolutionList(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;)[Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object p0

    return-object p0
.end method
