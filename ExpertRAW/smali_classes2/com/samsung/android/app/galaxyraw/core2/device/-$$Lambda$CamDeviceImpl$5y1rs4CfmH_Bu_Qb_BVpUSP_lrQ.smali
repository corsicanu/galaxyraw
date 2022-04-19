.class public final synthetic Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceImpl$5y1rs4CfmH_Bu_Qb_BVpUSP_lrQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# static fields
.field public static final synthetic INSTANCE:Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceImpl$5y1rs4CfmH_Bu_Qb_BVpUSP_lrQ;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceImpl$5y1rs4CfmH_Bu_Qb_BVpUSP_lrQ;

    invoke-direct {v0}, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceImpl$5y1rs4CfmH_Bu_Qb_BVpUSP_lrQ;-><init>()V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceImpl$5y1rs4CfmH_Bu_Qb_BVpUSP_lrQ;->INSTANCE:Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceImpl$5y1rs4CfmH_Bu_Qb_BVpUSP_lrQ;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->lambda$createOutputConfiguration$8()Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;

    move-result-object p0

    return-object p0
.end method
