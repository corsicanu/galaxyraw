.class public final synthetic Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/-$$Lambda$KW4xhWRZEOIFkkv8TFL2MUwowqU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/-$$Lambda$KW4xhWRZEOIFkkv8TFL2MUwowqU;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/-$$Lambda$KW4xhWRZEOIFkkv8TFL2MUwowqU;

    invoke-direct {v0}, Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/-$$Lambda$KW4xhWRZEOIFkkv8TFL2MUwowqU;-><init>()V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/-$$Lambda$KW4xhWRZEOIFkkv8TFL2MUwowqU;->INSTANCE:Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/-$$Lambda$KW4xhWRZEOIFkkv8TFL2MUwowqU;

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

    check-cast p1, Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/NotificationMessageReader$NotificationMessage;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/NotificationMessageReader$NotificationMessage;->getAction()Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/NotificationMessageReader$NotificationMessage$ACTION;

    move-result-object p0

    return-object p0
.end method
