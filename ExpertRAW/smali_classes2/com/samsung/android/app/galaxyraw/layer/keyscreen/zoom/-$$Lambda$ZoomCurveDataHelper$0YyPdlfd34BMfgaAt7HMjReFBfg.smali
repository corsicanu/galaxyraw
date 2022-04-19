.class public final synthetic Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomCurveDataHelper$0YyPdlfd34BMfgaAt7HMjReFBfg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomCurveDataHelper$0YyPdlfd34BMfgaAt7HMjReFBfg;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomCurveDataHelper$0YyPdlfd34BMfgaAt7HMjReFBfg;

    invoke-direct {v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomCurveDataHelper$0YyPdlfd34BMfgaAt7HMjReFBfg;-><init>()V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomCurveDataHelper$0YyPdlfd34BMfgaAt7HMjReFBfg;->INSTANCE:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomCurveDataHelper$0YyPdlfd34BMfgaAt7HMjReFBfg;

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

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomCurveDataHelper;->lambda$getReverseSubZoomCurveDataList$1(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
