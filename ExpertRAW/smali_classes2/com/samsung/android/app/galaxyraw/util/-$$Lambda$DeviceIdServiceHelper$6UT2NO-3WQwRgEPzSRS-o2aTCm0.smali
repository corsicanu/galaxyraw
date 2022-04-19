.class public final synthetic Lcom/samsung/android/app/galaxyraw/util/-$$Lambda$DeviceIdServiceHelper$6UT2NO-3WQwRgEPzSRS-o2aTCm0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/samsung/android/app/galaxyraw/util/-$$Lambda$DeviceIdServiceHelper$6UT2NO-3WQwRgEPzSRS-o2aTCm0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/galaxyraw/util/-$$Lambda$DeviceIdServiceHelper$6UT2NO-3WQwRgEPzSRS-o2aTCm0;

    invoke-direct {v0}, Lcom/samsung/android/app/galaxyraw/util/-$$Lambda$DeviceIdServiceHelper$6UT2NO-3WQwRgEPzSRS-o2aTCm0;-><init>()V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/util/-$$Lambda$DeviceIdServiceHelper$6UT2NO-3WQwRgEPzSRS-o2aTCm0;->INSTANCE:Lcom/samsung/android/app/galaxyraw/util/-$$Lambda$DeviceIdServiceHelper$6UT2NO-3WQwRgEPzSRS-o2aTCm0;

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

    check-cast p1, Lcom/samsung/android/deviceidservice/IDeviceIdService;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/util/DeviceIdServiceHelper;->lambda$getOAID$0(Lcom/samsung/android/deviceidservice/IDeviceIdService;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
