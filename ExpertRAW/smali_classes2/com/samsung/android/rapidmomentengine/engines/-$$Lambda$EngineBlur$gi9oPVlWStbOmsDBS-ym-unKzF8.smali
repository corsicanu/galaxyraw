.class public final synthetic Lcom/samsung/android/rapidmomentengine/engines/-$$Lambda$EngineBlur$gi9oPVlWStbOmsDBS-ym-unKzF8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/samsung/android/rapidmomentengine/engines/-$$Lambda$EngineBlur$gi9oPVlWStbOmsDBS-ym-unKzF8;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/rapidmomentengine/engines/-$$Lambda$EngineBlur$gi9oPVlWStbOmsDBS-ym-unKzF8;

    invoke-direct {v0}, Lcom/samsung/android/rapidmomentengine/engines/-$$Lambda$EngineBlur$gi9oPVlWStbOmsDBS-ym-unKzF8;-><init>()V

    sput-object v0, Lcom/samsung/android/rapidmomentengine/engines/-$$Lambda$EngineBlur$gi9oPVlWStbOmsDBS-ym-unKzF8;->INSTANCE:Lcom/samsung/android/rapidmomentengine/engines/-$$Lambda$EngineBlur$gi9oPVlWStbOmsDBS-ym-unKzF8;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/samsung/android/rapidmomentengine/data/ResultInfo;

    check-cast p2, Lcom/samsung/android/rapidmomentengine/data/ResultInfo;

    invoke-static {p1, p2}, Lcom/samsung/android/rapidmomentengine/engines/EngineBlur;->lambda$filterResults$0(Lcom/samsung/android/rapidmomentengine/data/ResultInfo;Lcom/samsung/android/rapidmomentengine/data/ResultInfo;)I

    move-result p0

    return p0
.end method
