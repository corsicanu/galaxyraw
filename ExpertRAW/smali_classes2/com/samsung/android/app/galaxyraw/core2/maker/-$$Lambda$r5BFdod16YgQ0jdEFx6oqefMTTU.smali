.class public final synthetic Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$r5BFdod16YgQ0jdEFx6oqefMTTU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$r5BFdod16YgQ0jdEFx6oqefMTTU;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$r5BFdod16YgQ0jdEFx6oqefMTTU;

    invoke-direct {v0}, Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$r5BFdod16YgQ0jdEFx6oqefMTTU;-><init>()V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$r5BFdod16YgQ0jdEFx6oqefMTTU;->INSTANCE:Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$r5BFdod16YgQ0jdEFx6oqefMTTU;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$PanoramaCallbackForwarder;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder;->cancelForwardedCallbacksWithToken()V

    return-void
.end method
