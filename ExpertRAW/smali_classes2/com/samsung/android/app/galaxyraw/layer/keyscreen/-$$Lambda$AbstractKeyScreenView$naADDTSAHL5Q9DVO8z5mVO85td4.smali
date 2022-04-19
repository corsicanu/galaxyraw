.class public final synthetic Lcom/samsung/android/app/galaxyraw/layer/keyscreen/-$$Lambda$AbstractKeyScreenView$naADDTSAHL5Q9DVO8z5mVO85td4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/-$$Lambda$AbstractKeyScreenView$naADDTSAHL5Q9DVO8z5mVO85td4;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/-$$Lambda$AbstractKeyScreenView$naADDTSAHL5Q9DVO8z5mVO85td4;

    invoke-direct {v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/-$$Lambda$AbstractKeyScreenView$naADDTSAHL5Q9DVO8z5mVO85td4;-><init>()V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/-$$Lambda$AbstractKeyScreenView$naADDTSAHL5Q9DVO8z5mVO85td4;->INSTANCE:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/-$$Lambda$AbstractKeyScreenView$naADDTSAHL5Q9DVO8z5mVO85td4;

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

    check-cast p1, Ljava/util/AbstractMap$SimpleEntry;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/AbstractKeyScreenView;->lambda$getViewVisibleRect$0(Ljava/util/AbstractMap$SimpleEntry;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method
