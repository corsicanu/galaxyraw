.class public final synthetic Lcom/samsung/android/app/galaxyraw/core2/node/-$$Lambda$MultiFrameNodeBase$1$A_KKF4eJxaZojmxb-SqR0jYSKeM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/samsung/android/app/galaxyraw/core2/node/-$$Lambda$MultiFrameNodeBase$1$A_KKF4eJxaZojmxb-SqR0jYSKeM;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/node/-$$Lambda$MultiFrameNodeBase$1$A_KKF4eJxaZojmxb-SqR0jYSKeM;

    invoke-direct {v0}, Lcom/samsung/android/app/galaxyraw/core2/node/-$$Lambda$MultiFrameNodeBase$1$A_KKF4eJxaZojmxb-SqR0jYSKeM;-><init>()V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/node/-$$Lambda$MultiFrameNodeBase$1$A_KKF4eJxaZojmxb-SqR0jYSKeM;->INSTANCE:Lcom/samsung/android/app/galaxyraw/core2/node/-$$Lambda$MultiFrameNodeBase$1$A_KKF4eJxaZojmxb-SqR0jYSKeM;

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

    check-cast p1, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/core2/node/MultiFrameNodeBase$1;->lambda$process$1(Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;)V

    return-void
.end method
