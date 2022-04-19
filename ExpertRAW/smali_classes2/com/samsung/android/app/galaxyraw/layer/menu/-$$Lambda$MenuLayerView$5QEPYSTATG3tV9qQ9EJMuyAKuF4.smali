.class public final synthetic Lcom/samsung/android/app/galaxyraw/layer/menu/-$$Lambda$MenuLayerView$5QEPYSTATG3tV9qQ9EJMuyAKuF4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/samsung/android/app/galaxyraw/layer/menu/-$$Lambda$MenuLayerView$5QEPYSTATG3tV9qQ9EJMuyAKuF4;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/galaxyraw/layer/menu/-$$Lambda$MenuLayerView$5QEPYSTATG3tV9qQ9EJMuyAKuF4;

    invoke-direct {v0}, Lcom/samsung/android/app/galaxyraw/layer/menu/-$$Lambda$MenuLayerView$5QEPYSTATG3tV9qQ9EJMuyAKuF4;-><init>()V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/layer/menu/-$$Lambda$MenuLayerView$5QEPYSTATG3tV9qQ9EJMuyAKuF4;->INSTANCE:Lcom/samsung/android/app/galaxyraw/layer/menu/-$$Lambda$MenuLayerView$5QEPYSTATG3tV9qQ9EJMuyAKuF4;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/samsung/android/app/galaxyraw/interfaces/MenuLayerManager$MenuId;

    check-cast p2, Lcom/samsung/android/app/galaxyraw/layer/menu/abstraction/AbstractMenuView;

    invoke-static {p1, p2}, Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerView;->lambda$clear$0(Lcom/samsung/android/app/galaxyraw/interfaces/MenuLayerManager$MenuId;Lcom/samsung/android/app/galaxyraw/layer/menu/abstraction/AbstractMenuView;)V

    return-void
.end method
