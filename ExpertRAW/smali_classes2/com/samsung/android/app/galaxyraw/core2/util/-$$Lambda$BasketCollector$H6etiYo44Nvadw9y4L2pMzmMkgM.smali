.class public final synthetic Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$BasketCollector$H6etiYo44Nvadw9y4L2pMzmMkgM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$BasketCollector$H6etiYo44Nvadw9y4L2pMzmMkgM;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$BasketCollector$H6etiYo44Nvadw9y4L2pMzmMkgM;

    invoke-direct {v0}, Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$BasketCollector$H6etiYo44Nvadw9y4L2pMzmMkgM;-><init>()V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$BasketCollector$H6etiYo44Nvadw9y4L2pMzmMkgM;->INSTANCE:Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$BasketCollector$H6etiYo44Nvadw9y4L2pMzmMkgM;

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

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/core2/util/BasketCollector;->lambda$collectBasket$1(Lcom/samsung/android/app/galaxyraw/core2/util/BasketCollector$Item;)Z

    move-result p0

    return p0
.end method
