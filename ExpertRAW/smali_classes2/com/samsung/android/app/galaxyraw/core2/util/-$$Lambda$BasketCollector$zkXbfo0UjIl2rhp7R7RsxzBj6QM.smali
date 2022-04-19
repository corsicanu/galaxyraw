.class public final synthetic Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$BasketCollector$zkXbfo0UjIl2rhp7R7RsxzBj6QM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$BasketCollector$zkXbfo0UjIl2rhp7R7RsxzBj6QM;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$BasketCollector$zkXbfo0UjIl2rhp7R7RsxzBj6QM;

    invoke-direct {v0}, Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$BasketCollector$zkXbfo0UjIl2rhp7R7RsxzBj6QM;-><init>()V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$BasketCollector$zkXbfo0UjIl2rhp7R7RsxzBj6QM;->INSTANCE:Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$BasketCollector$zkXbfo0UjIl2rhp7R7RsxzBj6QM;

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

    check-cast p1, Lcom/samsung/android/app/galaxyraw/core2/util/BasketCollector$Item;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/core2/util/BasketCollector;->lambda$collectItem$6(Lcom/samsung/android/app/galaxyraw/core2/util/BasketCollector$Item;)Z

    move-result p0

    return p0
.end method
