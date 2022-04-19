.class public final synthetic Lcom/samsung/android/rapidmomentengine/engines/-$$Lambda$EngineFaceProcessor$19CJnJkZ_Sr4fnHbdMUmocjyJJU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/samsung/android/rapidmomentengine/engines/-$$Lambda$EngineFaceProcessor$19CJnJkZ_Sr4fnHbdMUmocjyJJU;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/rapidmomentengine/engines/-$$Lambda$EngineFaceProcessor$19CJnJkZ_Sr4fnHbdMUmocjyJJU;

    invoke-direct {v0}, Lcom/samsung/android/rapidmomentengine/engines/-$$Lambda$EngineFaceProcessor$19CJnJkZ_Sr4fnHbdMUmocjyJJU;-><init>()V

    sput-object v0, Lcom/samsung/android/rapidmomentengine/engines/-$$Lambda$EngineFaceProcessor$19CJnJkZ_Sr4fnHbdMUmocjyJJU;->INSTANCE:Lcom/samsung/android/rapidmomentengine/engines/-$$Lambda$EngineFaceProcessor$19CJnJkZ_Sr4fnHbdMUmocjyJJU;

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

    check-cast p1, Lcom/samsung/android/rapidmomentengine/data/ResultInfo;

    invoke-static {p1}, Lcom/samsung/android/rapidmomentengine/engines/EngineFaceProcessor;->lambda$filterResults$0(Lcom/samsung/android/rapidmomentengine/data/ResultInfo;)Z

    move-result p0

    return p0
.end method
