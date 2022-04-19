.class public Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerPresenter;
.super Ljava/lang/Object;
.source "PopupLayerPresenter.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerContract$Presenter;
.implements Landroidx/lifecycle/LifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerPresenter$Popup;,
        Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerPresenter$Builder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PopupLayerPresenter"


# instance fields
.field private final mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

.field private final mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

.field private final mPopupBuilderMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupStyle;",
            "Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerPresenter$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private final mPopupConditionManager:Lcom/samsung/android/app/galaxyraw/layer/popup/PopupConditionManager;

.field private mPopupMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;",
            "Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerPresenter$Popup;",
            ">;"
        }
    .end annotation
.end field

.field private final mView:Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerContract$View;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;Lcom/samsung/android/app/galaxyraw/interfaces/Engine;Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerContract$View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "cameraContext",
            "engine",
            "view"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerPresenter;->mPopupMap:Ljava/util/Map;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerPresenter$1;

    const-class v1, Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupStyle;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerPresenter$1;-><init>(Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerPresenter;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerPresenter;->mPopupBuilderMap:Ljava/util/Map;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerPresenter;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerContract$View;

    new-instance p2, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupConditionManager;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupConditionManager;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerPresenter;->mPopupConditionManager:Lcom/samsung/android/app/galaxyraw/layer/popup/PopupConditionManager;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerPresenter;Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;)Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerPresenter$Popup;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerPresenter;->makeTextBoxPopup(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;)Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerPresenter$Popup;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerPresenter;Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;Ljava/lang/String;)Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerPresenter$Popup;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerPresenter;->makeToastPopup(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;Ljava/lang/String;)Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerPresenter$Popup;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerPresenter;Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;)Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerPresenter$Popup;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerPresenter;->makeTextBalloonPopup(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;)Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerPresenter$Popup;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerPresenter;Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;)Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerPresenter$Popup;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerPresenter;->makeIntelligentTipsPopup(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;)Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerPresenter$Popup;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$clear$0(Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerPresenter$Popup;)V
    .locals 0

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerPresenter$Popup;->access$500(Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerPresenter$Popup;)Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupPresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupPresenter;->clear()V

    return-void
.end method

.method private makeIntelligentTipsPopup(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;)Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerPresenter$Popup;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "cameraContext",
            "popupId",
            "subId"
        }
    .end annotation

    new-instance p0, Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsView;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsView;-><init>(Landroid/content/Context;Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;)V

    new-instance v0, Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsPresenter;

    invoke-direct {v0, p1, p0, p2, p3}, Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsPresenter;-><init>(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsContract$View;Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsView;->setPresenter(Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupContract$Presenter;)V

    new-instance p1, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerPresenter$Popup;

    const/4 p2, 0x0

    invoke-direct {p1, p0, v0, p2}, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerPresenter$Popup;-><init>(Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupView;Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupPresenter;Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerPresenter$1;)V

    return-object p1
.end method

.method private makeTextBalloonPopup(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;)Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerPresenter$Popup;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cameraContext",
            "popupId"
        }
    .end annotation

    new-instance p0, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonView;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonView;-><init>(Landroid/content/Context;Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;)V

    new-instance v0, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonPresenter;

    invoke-direct {v0, p1, p0, p2}, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonPresenter;-><init>(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonContract$View;Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonView;->setPresenter(Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupContract$Presenter;)V

    new-instance p1, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerPresenter$Popup;

    const/4 p2, 0x0

    invoke-direct {p1, p0, v0, p2}, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerPresenter$Popup;-><init>(Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupView;Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupPresenter;Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerPresenter$1;)V

    return-object p1
.end method

.method private makeTextBoxPopup(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;)Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerPresenter$Popup;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cameraContext",
            "popupId"
        }
    .end annotation

    new-instance p0, Lcom/samsung/android/app/galaxyraw/layer/popup/textbox/TextBoxView;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/samsung/android/app/galaxyraw/layer/popup/textbox/TextBoxView;-><init>(Landroid/content/Context;Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;)V

    new-instance v0, Lcom/samsung/android/app/galaxyraw/layer/popup/textbox/TextBoxPresenter;

    invoke-direct {v0, p1, p0, p2}, Lcom/samsung/android/app/galaxyraw/layer/popup/textbox/TextBoxPresenter;-><init>(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;Lcom/samsung/android/app/galaxyraw/layer/popup/textbox/TextBoxContract$View;Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/popup/textbox/TextBoxView;->setPresenter(Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupContract$Presenter;)V

    new-instance p1, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerPresenter$Popup;

    const/4 p2, 0x0

    invoke-direct {p1, p0, v0, p2}, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerPresenter$Popup;-><init>(Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupView;Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupPresenter;Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerPresenter$1;)V

    return-object p1
.end method

.method private makeToastPopup(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;Ljava/lang/String;)Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerPresenter$Popup;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "cameraContext",
            "popupId",
            "data"
        }
    .end annotation

    new-instance p0, Lcom/samsung/android/app/galaxyraw/layer/popup/toast/ToastView;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/samsung/android/app/galaxyraw/layer/popup/toast/ToastView;-><init>(Landroid/content/Context;Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;)V

    new-instance v0, Lcom/samsung/android/app/galaxyraw/layer/popup/toast/ToastPresenter;

    invoke-direct {v0, p1, p0, p2, p3}, Lcom/samsung/android/app/galaxyraw/layer/popup/toast/ToastPresenter;-><init>(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;Lcom/samsung/android/app/galaxyraw/layer/popup/toast/ToastContract$View;Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/popup/toast/ToastView;->setPresenter(Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupContract$Presenter;)V

    new-instance p1, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerPresenter$Popup;

    const/4 p2, 0x0

    invoke-direct {p1, p0, v0, p2}, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerPresenter$Popup;-><init>(Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupView;Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupPresenter;Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerPresenter$1;)V

    return-object p1
.end method


# virtual methods
.method public clear()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerPresenter;->mPopupMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/layer/popup/-$$Lambda$PopupLayerPresenter$ZoFPKwTY-n7pKYsVEp1ZyTprtXc;->INSTANCE:Lcom/samsung/android/app/galaxyraw/layer/popup/-$$Lambda$PopupLayerPresenter$ZoFPKwTY-n7pKYsVEp1ZyTprtXc;

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerPresenter;->mPopupMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method public createPopupView(Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;Ljava/lang/String;Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupActionListener;)Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupView;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "popupId",
            "subId",
            "data",
            "popupActionListener"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerPresenter;->mPopupMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerPresenter;->mPopupBuilderMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;->getPopupStyle()Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupStyle;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerPresenter$Builder;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerPresenter;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-interface/range {v1 .. v7}, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerPresenter$Builder;->build(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;Lcom/samsung/android/app/galaxyraw/interfaces/Engine;Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;Ljava/lang/String;Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupActionListener;)Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerPresenter$Popup;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p3, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerPresenter;->mPopupMap:Ljava/util/Map;

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid Popup ID : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerPresenter;->mPopupMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerPresenter$Popup;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerPresenter$Popup;->access$400(Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerPresenter$Popup;)Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupView;

    move-result-object p0

    return-object p0
.end method

.method public getPopupCount(Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "popupId"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerPresenter;->mPopupConditionManager:Lcom/samsung/android/app/galaxyraw/layer/popup/PopupConditionManager;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupConditionManager;->getPopupCount(Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;)I

    move-result p0

    return p0
.end method

.method public isPopupEnabled(Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "popupId",
            "subId",
            "isHighPriorityPopupVisible"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerPresenter;->mPopupConditionManager:Lcom/samsung/android/app/galaxyraw/layer/popup/PopupConditionManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupConditionManager;->isNeedCheckHighPriorityPopupVisible(Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerPresenter;->mPopupConditionManager:Lcom/samsung/android/app/galaxyraw/layer/popup/PopupConditionManager;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupConditionManager;->isPopupEnabled(Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;)Z

    move-result p0

    return p0
.end method

.method public onHidePopup(Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "popupId"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerPresenter;->mPopupMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerPresenter$Popup;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerPresenter$Popup;->access$500(Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerPresenter$Popup;)Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupPresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupPresenter;->stop()V

    return-void
.end method

.method public onPause()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerContract$View;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerContract$View;->enableRotateAction(Z)V

    return-void
.end method

.method public onResume()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerContract$View;

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerContract$View;->enableRotateAction(Z)V

    return-void
.end method

.method public onShowPopup(Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "popupId",
            "isHighPriorityPopupVisible"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerPresenter;->mPopupConditionManager:Lcom/samsung/android/app/galaxyraw/layer/popup/PopupConditionManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupConditionManager;->isNeedCheckHighPriorityPopupVisible(Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerPresenter;->mPopupMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerPresenter$Popup;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerPresenter$Popup;->access$500(Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerPresenter$Popup;)Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupPresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupPresenter;->start()V

    const/4 p0, 0x1

    return p0
.end method

.method public setAllowToShowAgain(Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "popupId",
            "isAllow"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerPresenter;->mPopupConditionManager:Lcom/samsung/android/app/galaxyraw/layer/popup/PopupConditionManager;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupConditionManager;->setAllowToShowAgain(Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;Z)V

    return-void
.end method

.method public setPopupCount(Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "popupId",
            "count"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerPresenter;->mPopupConditionManager:Lcom/samsung/android/app/galaxyraw/layer/popup/PopupConditionManager;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupConditionManager;->setPopupCount(Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;I)V

    return-void
.end method

.method public setPopupEnabled(Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "popupId",
            "enabled"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerPresenter;->mPopupConditionManager:Lcom/samsung/android/app/galaxyraw/layer/popup/PopupConditionManager;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupConditionManager;->setPopupEnabled(Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;Z)V

    return-void
.end method

.method public start()V
    .locals 0

    return-void
.end method

.method public stop()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getPopupLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager;->hideAllPopup()V

    return-void
.end method

.method public updatePopupData(Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "popupId",
            "data"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerPresenter;->mPopupMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerPresenter$Popup;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerPresenter$Popup;->access$500(Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerPresenter$Popup;)Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupPresenter;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupPresenter;->updateData(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public updateSubId(Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "popupId",
            "subId"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerPresenter;->mPopupMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerPresenter$Popup;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerPresenter$Popup;->access$500(Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerPresenter$Popup;)Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupPresenter;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupPresenter;->updateSubId(Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;)Z

    move-result p0

    return p0
.end method
