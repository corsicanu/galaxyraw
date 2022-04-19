.class public final synthetic Lcom/samsung/android/app/galaxyraw/data/-$$Lambda$ShootingModeListMap$IVYUz1yS6K6pqtlNslK4ekzGHbA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/samsung/android/app/galaxyraw/data/-$$Lambda$ShootingModeListMap$IVYUz1yS6K6pqtlNslK4ekzGHbA;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/galaxyraw/data/-$$Lambda$ShootingModeListMap$IVYUz1yS6K6pqtlNslK4ekzGHbA;

    invoke-direct {v0}, Lcom/samsung/android/app/galaxyraw/data/-$$Lambda$ShootingModeListMap$IVYUz1yS6K6pqtlNslK4ekzGHbA;-><init>()V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/data/-$$Lambda$ShootingModeListMap$IVYUz1yS6K6pqtlNslK4ekzGHbA;->INSTANCE:Lcom/samsung/android/app/galaxyraw/data/-$$Lambda$ShootingModeListMap$IVYUz1yS6K6pqtlNslK4ekzGHbA;

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

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/data/ShootingModeListMap;->lambda$resetShootingModeOrder$0(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
