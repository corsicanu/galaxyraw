.class public final synthetic Lcom/samsung/android/app/galaxyraw/util/-$$Lambda$CameraResolution$DDE32JbUt6bLl4gQWC1x7ra57W0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/IntFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/samsung/android/app/galaxyraw/util/-$$Lambda$CameraResolution$DDE32JbUt6bLl4gQWC1x7ra57W0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/galaxyraw/util/-$$Lambda$CameraResolution$DDE32JbUt6bLl4gQWC1x7ra57W0;

    invoke-direct {v0}, Lcom/samsung/android/app/galaxyraw/util/-$$Lambda$CameraResolution$DDE32JbUt6bLl4gQWC1x7ra57W0;-><init>()V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/util/-$$Lambda$CameraResolution$DDE32JbUt6bLl4gQWC1x7ra57W0;->INSTANCE:Lcom/samsung/android/app/galaxyraw/util/-$$Lambda$CameraResolution$DDE32JbUt6bLl4gQWC1x7ra57W0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(I)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->lambda$getSelectableBackSuperSteadyVideoResolutionList$3(I)[Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object p0

    return-object p0
.end method
