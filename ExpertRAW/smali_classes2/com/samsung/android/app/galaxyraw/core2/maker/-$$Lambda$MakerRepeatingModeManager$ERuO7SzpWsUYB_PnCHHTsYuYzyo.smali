.class public final synthetic Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$MakerRepeatingModeManager$ERuO7SzpWsUYB_PnCHHTsYuYzyo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$MakerRepeatingModeManager$ERuO7SzpWsUYB_PnCHHTsYuYzyo;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$MakerRepeatingModeManager$ERuO7SzpWsUYB_PnCHHTsYuYzyo;

    invoke-direct {v0}, Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$MakerRepeatingModeManager$ERuO7SzpWsUYB_PnCHHTsYuYzyo;-><init>()V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$MakerRepeatingModeManager$ERuO7SzpWsUYB_PnCHHTsYuYzyo;->INSTANCE:Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$MakerRepeatingModeManager$ERuO7SzpWsUYB_PnCHHTsYuYzyo;

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

    check-cast p1, Ljava/util/PriorityQueue;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager;->lambda$calculateRepeatingCount$2(Ljava/util/PriorityQueue;)Z

    move-result p0

    return p0
.end method
