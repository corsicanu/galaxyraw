.class Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerPresenter$1;
.super Ljava/util/EnumMap;
.source "PopupLayerPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/EnumMap<",
        "Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupStyle;",
        "Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerPresenter$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerPresenter;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerPresenter;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "keyType"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerPresenter$1;->this$0:Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerPresenter;

    invoke-direct {p0, p2}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupStyle;->INTELLIGENT_TIPS:Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupStyle;

    new-instance p2, Lcom/samsung/android/app/galaxyraw/layer/popup/-$$Lambda$PopupLayerPresenter$1$nfurtRWqHrygDuvD2fj8pnrkOLA;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/galaxyraw/layer/popup/-$$Lambda$PopupLayerPresenter$1$nfurtRWqHrygDuvD2fj8pnrkOLA;-><init>(Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerPresenter$1;)V

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerPresenter$1;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupStyle;->TEXT_BALLOON:Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupStyle;

    new-instance p2, Lcom/samsung/android/app/galaxyraw/layer/popup/-$$Lambda$PopupLayerPresenter$1$MpMlNVPIHGZ9yMNUoAT8ANRVa0c;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/galaxyraw/layer/popup/-$$Lambda$PopupLayerPresenter$1$MpMlNVPIHGZ9yMNUoAT8ANRVa0c;-><init>(Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerPresenter$1;)V

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerPresenter$1;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupStyle;->TOAST:Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupStyle;

    new-instance p2, Lcom/samsung/android/app/galaxyraw/layer/popup/-$$Lambda$PopupLayerPresenter$1$-qQk0-aMDFIDaDIq72FXLmUCEnM;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/galaxyraw/layer/popup/-$$Lambda$PopupLayerPresenter$1$-qQk0-aMDFIDaDIq72FXLmUCEnM;-><init>(Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerPresenter$1;)V

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerPresenter$1;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupStyle;->TEXT_BOX:Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupStyle;

    new-instance p2, Lcom/samsung/android/app/galaxyraw/layer/popup/-$$Lambda$PopupLayerPresenter$1$u11OnqVLTuiX0nxNckAi_xJr2Xk;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/galaxyraw/layer/popup/-$$Lambda$PopupLayerPresenter$1$u11OnqVLTuiX0nxNckAi_xJr2Xk;-><init>(Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerPresenter$1;)V

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerPresenter$1;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public synthetic lambda$new$0$PopupLayerPresenter$1(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;Lcom/samsung/android/app/galaxyraw/interfaces/Engine;Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;Ljava/lang/String;Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupActionListener;)Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerPresenter$Popup;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerPresenter$1;->this$0:Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerPresenter;

    invoke-static {p0, p1, p3, p4}, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerPresenter;->access$300(Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerPresenter;Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;)Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerPresenter$Popup;

    move-result-object p0

    return-object p0
.end method

.method public synthetic lambda$new$1$PopupLayerPresenter$1(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;Lcom/samsung/android/app/galaxyraw/interfaces/Engine;Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;Ljava/lang/String;Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupActionListener;)Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerPresenter$Popup;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerPresenter$1;->this$0:Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerPresenter;

    invoke-static {p0, p1, p3}, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerPresenter;->access$200(Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerPresenter;Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;)Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerPresenter$Popup;

    move-result-object p0

    return-object p0
.end method

.method public synthetic lambda$new$2$PopupLayerPresenter$1(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;Lcom/samsung/android/app/galaxyraw/interfaces/Engine;Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;Ljava/lang/String;Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupActionListener;)Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerPresenter$Popup;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerPresenter$1;->this$0:Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerPresenter;

    invoke-static {p0, p1, p3, p5}, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerPresenter;->access$100(Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerPresenter;Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;Ljava/lang/String;)Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerPresenter$Popup;

    move-result-object p0

    return-object p0
.end method

.method public synthetic lambda$new$3$PopupLayerPresenter$1(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;Lcom/samsung/android/app/galaxyraw/interfaces/Engine;Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;Ljava/lang/String;Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupActionListener;)Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerPresenter$Popup;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerPresenter$1;->this$0:Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerPresenter;

    invoke-static {p0, p1, p3}, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerPresenter;->access$000(Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerPresenter;Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;)Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerPresenter$Popup;

    move-result-object p0

    return-object p0
.end method
