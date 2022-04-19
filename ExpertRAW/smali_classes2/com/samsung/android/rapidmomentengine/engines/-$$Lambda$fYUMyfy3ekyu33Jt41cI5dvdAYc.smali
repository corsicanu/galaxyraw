.class public final synthetic Lcom/samsung/android/rapidmomentengine/engines/-$$Lambda$fYUMyfy3ekyu33Jt41cI5dvdAYc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/samsung/android/rapidmomentengine/engines/-$$Lambda$fYUMyfy3ekyu33Jt41cI5dvdAYc;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/rapidmomentengine/engines/-$$Lambda$fYUMyfy3ekyu33Jt41cI5dvdAYc;

    invoke-direct {v0}, Lcom/samsung/android/rapidmomentengine/engines/-$$Lambda$fYUMyfy3ekyu33Jt41cI5dvdAYc;-><init>()V

    sput-object v0, Lcom/samsung/android/rapidmomentengine/engines/-$$Lambda$fYUMyfy3ekyu33Jt41cI5dvdAYc;->INSTANCE:Lcom/samsung/android/rapidmomentengine/engines/-$$Lambda$fYUMyfy3ekyu33Jt41cI5dvdAYc;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method
