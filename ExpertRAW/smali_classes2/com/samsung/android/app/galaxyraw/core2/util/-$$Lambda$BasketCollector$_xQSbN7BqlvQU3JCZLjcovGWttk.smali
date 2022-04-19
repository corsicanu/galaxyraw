.class public final synthetic Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$BasketCollector$_xQSbN7BqlvQU3JCZLjcovGWttk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$BasketCollector$_xQSbN7BqlvQU3JCZLjcovGWttk;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$BasketCollector$_xQSbN7BqlvQU3JCZLjcovGWttk;

    invoke-direct {v0}, Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$BasketCollector$_xQSbN7BqlvQU3JCZLjcovGWttk;-><init>()V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$BasketCollector$_xQSbN7BqlvQU3JCZLjcovGWttk;->INSTANCE:Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$BasketCollector$_xQSbN7BqlvQU3JCZLjcovGWttk;

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

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/core2/util/BasketCollector;->lambda$isAllItemsArrived$7(Lcom/samsung/android/app/galaxyraw/core2/util/BasketCollector$Item;)Z

    move-result p0

    return p0
.end method
