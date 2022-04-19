.class public final synthetic Lcom/samsung/android/app/galaxyraw/shootingmode/feature/-$$Lambda$rkLZWxHluyq2P4gMGJTOspNjWME;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/shootingmode/feature/ShootingModeFeatureProviderImpl$Builder;


# static fields
.field public static final synthetic INSTANCE:Lcom/samsung/android/app/galaxyraw/shootingmode/feature/-$$Lambda$rkLZWxHluyq2P4gMGJTOspNjWME;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/galaxyraw/shootingmode/feature/-$$Lambda$rkLZWxHluyq2P4gMGJTOspNjWME;

    invoke-direct {v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/feature/-$$Lambda$rkLZWxHluyq2P4gMGJTOspNjWME;-><init>()V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/shootingmode/feature/-$$Lambda$rkLZWxHluyq2P4gMGJTOspNjWME;->INSTANCE:Lcom/samsung/android/app/galaxyraw/shootingmode/feature/-$$Lambda$rkLZWxHluyq2P4gMGJTOspNjWME;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;
    .locals 0

    new-instance p0, Lcom/samsung/android/app/galaxyraw/shootingmode/feature/ProFeature;

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/feature/ProFeature;-><init>()V

    check-cast p0, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    return-object p0
.end method
