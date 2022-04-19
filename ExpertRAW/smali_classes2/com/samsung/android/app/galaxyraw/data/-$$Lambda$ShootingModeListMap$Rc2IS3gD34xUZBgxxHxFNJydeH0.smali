.class public final synthetic Lcom/samsung/android/app/galaxyraw/data/-$$Lambda$ShootingModeListMap$Rc2IS3gD34xUZBgxxHxFNJydeH0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/samsung/android/app/galaxyraw/data/-$$Lambda$ShootingModeListMap$Rc2IS3gD34xUZBgxxHxFNJydeH0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/galaxyraw/data/-$$Lambda$ShootingModeListMap$Rc2IS3gD34xUZBgxxHxFNJydeH0;

    invoke-direct {v0}, Lcom/samsung/android/app/galaxyraw/data/-$$Lambda$ShootingModeListMap$Rc2IS3gD34xUZBgxxHxFNJydeH0;-><init>()V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/data/-$$Lambda$ShootingModeListMap$Rc2IS3gD34xUZBgxxHxFNJydeH0;->INSTANCE:Lcom/samsung/android/app/galaxyraw/data/-$$Lambda$ShootingModeListMap$Rc2IS3gD34xUZBgxxHxFNJydeH0;

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

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/data/ShootingModeListMap;->lambda$resetShootingModeOrder$4([Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
