.class public final synthetic Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/-$$Lambda$bVEPK8EZXonZyROV-YFt3Mx0ZyA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/-$$Lambda$bVEPK8EZXonZyROV-YFt3Mx0ZyA;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/-$$Lambda$bVEPK8EZXonZyROV-YFt3Mx0ZyA;

    invoke-direct {v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/-$$Lambda$bVEPK8EZXonZyROV-YFt3Mx0ZyA;-><init>()V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/-$$Lambda$bVEPK8EZXonZyROV-YFt3Mx0ZyA;->INSTANCE:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/-$$Lambda$bVEPK8EZXonZyROV-YFt3Mx0ZyA;

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

    check-cast p1, Lcom/samsung/android/app/galaxyraw/data/QuickSettingViewItem;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/data/QuickSettingViewItem;->getSelected()Z

    move-result p0

    return p0
.end method
