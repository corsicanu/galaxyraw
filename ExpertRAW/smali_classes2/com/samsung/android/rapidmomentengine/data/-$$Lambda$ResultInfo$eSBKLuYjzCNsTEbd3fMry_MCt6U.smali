.class public final synthetic Lcom/samsung/android/rapidmomentengine/data/-$$Lambda$ResultInfo$eSBKLuYjzCNsTEbd3fMry_MCt6U;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/ToDoubleFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/samsung/android/rapidmomentengine/data/-$$Lambda$ResultInfo$eSBKLuYjzCNsTEbd3fMry_MCt6U;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/rapidmomentengine/data/-$$Lambda$ResultInfo$eSBKLuYjzCNsTEbd3fMry_MCt6U;

    invoke-direct {v0}, Lcom/samsung/android/rapidmomentengine/data/-$$Lambda$ResultInfo$eSBKLuYjzCNsTEbd3fMry_MCt6U;-><init>()V

    sput-object v0, Lcom/samsung/android/rapidmomentengine/data/-$$Lambda$ResultInfo$eSBKLuYjzCNsTEbd3fMry_MCt6U;->INSTANCE:Lcom/samsung/android/rapidmomentengine/data/-$$Lambda$ResultInfo$eSBKLuYjzCNsTEbd3fMry_MCt6U;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsDouble(Ljava/lang/Object;)D
    .locals 0

    check-cast p1, Ljava/lang/Float;

    invoke-static {p1}, Lcom/samsung/android/rapidmomentengine/data/ResultInfo;->lambda$toString$0(Ljava/lang/Float;)D

    move-result-wide p0

    return-wide p0
.end method
