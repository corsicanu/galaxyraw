.class public final synthetic Lcom/samsung/android/app/galaxyraw/layer/popup/-$$Lambda$PopupLayerPresenter$ZoFPKwTY-n7pKYsVEp1ZyTprtXc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/samsung/android/app/galaxyraw/layer/popup/-$$Lambda$PopupLayerPresenter$ZoFPKwTY-n7pKYsVEp1ZyTprtXc;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/galaxyraw/layer/popup/-$$Lambda$PopupLayerPresenter$ZoFPKwTY-n7pKYsVEp1ZyTprtXc;

    invoke-direct {v0}, Lcom/samsung/android/app/galaxyraw/layer/popup/-$$Lambda$PopupLayerPresenter$ZoFPKwTY-n7pKYsVEp1ZyTprtXc;-><init>()V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/layer/popup/-$$Lambda$PopupLayerPresenter$ZoFPKwTY-n7pKYsVEp1ZyTprtXc;->INSTANCE:Lcom/samsung/android/app/galaxyraw/layer/popup/-$$Lambda$PopupLayerPresenter$ZoFPKwTY-n7pKYsVEp1ZyTprtXc;

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

    check-cast p1, Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;

    check-cast p2, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerPresenter$Popup;

    invoke-static {p1, p2}, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerPresenter;->lambda$clear$0(Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerPresenter$Popup;)V

    return-void
.end method
