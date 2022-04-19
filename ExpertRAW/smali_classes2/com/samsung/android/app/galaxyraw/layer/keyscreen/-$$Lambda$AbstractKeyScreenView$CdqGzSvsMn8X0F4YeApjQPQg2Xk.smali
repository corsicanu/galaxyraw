.class public final synthetic Lcom/samsung/android/app/galaxyraw/layer/keyscreen/-$$Lambda$AbstractKeyScreenView$CdqGzSvsMn8X0F4YeApjQPQg2Xk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/-$$Lambda$AbstractKeyScreenView$CdqGzSvsMn8X0F4YeApjQPQg2Xk;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/-$$Lambda$AbstractKeyScreenView$CdqGzSvsMn8X0F4YeApjQPQg2Xk;

    invoke-direct {v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/-$$Lambda$AbstractKeyScreenView$CdqGzSvsMn8X0F4YeApjQPQg2Xk;-><init>()V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/-$$Lambda$AbstractKeyScreenView$CdqGzSvsMn8X0F4YeApjQPQg2Xk;->INSTANCE:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/-$$Lambda$AbstractKeyScreenView$CdqGzSvsMn8X0F4YeApjQPQg2Xk;

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

    check-cast p1, Landroid/view/View;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/AbstractKeyScreenView;->lambda$getViewVisibleRect$1(Landroid/view/View;)Z

    move-result p0

    return p0
.end method
