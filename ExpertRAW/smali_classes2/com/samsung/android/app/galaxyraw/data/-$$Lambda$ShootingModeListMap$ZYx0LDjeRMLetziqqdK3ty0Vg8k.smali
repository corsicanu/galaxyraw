.class public final synthetic Lcom/samsung/android/app/galaxyraw/data/-$$Lambda$ShootingModeListMap$ZYx0LDjeRMLetziqqdK3ty0Vg8k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/samsung/android/app/galaxyraw/data/-$$Lambda$ShootingModeListMap$ZYx0LDjeRMLetziqqdK3ty0Vg8k;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/galaxyraw/data/-$$Lambda$ShootingModeListMap$ZYx0LDjeRMLetziqqdK3ty0Vg8k;

    invoke-direct {v0}, Lcom/samsung/android/app/galaxyraw/data/-$$Lambda$ShootingModeListMap$ZYx0LDjeRMLetziqqdK3ty0Vg8k;-><init>()V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/data/-$$Lambda$ShootingModeListMap$ZYx0LDjeRMLetziqqdK3ty0Vg8k;->INSTANCE:Lcom/samsung/android/app/galaxyraw/data/-$$Lambda$ShootingModeListMap$ZYx0LDjeRMLetziqqdK3ty0Vg8k;

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

    check-cast p1, [Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/data/ShootingModeListMap;->lambda$resetShootingModeOrder$3([Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
