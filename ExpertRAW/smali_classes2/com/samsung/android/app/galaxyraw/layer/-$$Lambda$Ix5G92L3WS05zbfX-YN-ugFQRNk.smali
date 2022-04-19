.class public final synthetic Lcom/samsung/android/app/galaxyraw/layer/-$$Lambda$Ix5G92L3WS05zbfX-YN-ugFQRNk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/samsung/android/app/galaxyraw/layer/-$$Lambda$Ix5G92L3WS05zbfX-YN-ugFQRNk;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/galaxyraw/layer/-$$Lambda$Ix5G92L3WS05zbfX-YN-ugFQRNk;

    invoke-direct {v0}, Lcom/samsung/android/app/galaxyraw/layer/-$$Lambda$Ix5G92L3WS05zbfX-YN-ugFQRNk;-><init>()V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/layer/-$$Lambda$Ix5G92L3WS05zbfX-YN-ugFQRNk;->INSTANCE:Lcom/samsung/android/app/galaxyraw/layer/-$$Lambda$Ix5G92L3WS05zbfX-YN-ugFQRNk;

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

    check-cast p1, Lcom/samsung/android/app/galaxyraw/layer/listener/LayerScaleUpDownEventListener;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/layer/listener/LayerScaleUpDownEventListener;->onScaleUp()V

    return-void
.end method
