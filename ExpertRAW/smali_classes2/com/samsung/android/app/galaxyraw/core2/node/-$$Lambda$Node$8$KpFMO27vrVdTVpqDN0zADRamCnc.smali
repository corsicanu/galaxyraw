.class public final synthetic Lcom/samsung/android/app/galaxyraw/core2/node/-$$Lambda$Node$8$KpFMO27vrVdTVpqDN0zADRamCnc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/samsung/android/app/galaxyraw/core2/node/-$$Lambda$Node$8$KpFMO27vrVdTVpqDN0zADRamCnc;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/node/-$$Lambda$Node$8$KpFMO27vrVdTVpqDN0zADRamCnc;

    invoke-direct {v0}, Lcom/samsung/android/app/galaxyraw/core2/node/-$$Lambda$Node$8$KpFMO27vrVdTVpqDN0zADRamCnc;-><init>()V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/node/-$$Lambda$Node$8$KpFMO27vrVdTVpqDN0zADRamCnc;->INSTANCE:Lcom/samsung/android/app/galaxyraw/core2/node/-$$Lambda$Node$8$KpFMO27vrVdTVpqDN0zADRamCnc;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/core2/node/Node$8;->lambda$process$1(Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;)Landroid/hardware/camera2/TotalCaptureResult;

    move-result-object p0

    return-object p0
.end method
