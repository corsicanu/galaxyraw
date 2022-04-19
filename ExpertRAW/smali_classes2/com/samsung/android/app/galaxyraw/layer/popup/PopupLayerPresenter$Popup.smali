.class Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerPresenter$Popup;
.super Ljava/lang/Object;
.source "PopupLayerPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Popup"
.end annotation


# instance fields
.field private mPresenter:Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupPresenter;

.field private mView:Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupView;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupView;Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupPresenter;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "presenter"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerPresenter$Popup;->mView:Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupView;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerPresenter$Popup;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupPresenter;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupView;Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupPresenter;Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerPresenter$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerPresenter$Popup;-><init>(Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupView;Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupPresenter;)V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerPresenter$Popup;)Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupView;
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerPresenter$Popup;->getView()Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupView;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerPresenter$Popup;)Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupPresenter;
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerPresenter$Popup;->getPresenter()Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupPresenter;

    move-result-object p0

    return-object p0
.end method

.method private getPresenter()Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupPresenter;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerPresenter$Popup;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupPresenter;

    return-object p0
.end method

.method private getView()Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerPresenter$Popup;->mView:Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupView;

    return-object p0
.end method
