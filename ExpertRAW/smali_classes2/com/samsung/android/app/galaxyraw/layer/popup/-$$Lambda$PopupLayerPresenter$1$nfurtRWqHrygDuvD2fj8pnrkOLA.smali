.class public final synthetic Lcom/samsung/android/app/galaxyraw/layer/popup/-$$Lambda$PopupLayerPresenter$1$nfurtRWqHrygDuvD2fj8pnrkOLA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerPresenter$Builder;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerPresenter$1;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerPresenter$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/-$$Lambda$PopupLayerPresenter$1$nfurtRWqHrygDuvD2fj8pnrkOLA;->f$0:Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerPresenter$1;

    return-void
.end method


# virtual methods
.method public final build(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;Lcom/samsung/android/app/galaxyraw/interfaces/Engine;Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;Ljava/lang/String;Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupActionListener;)Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerPresenter$Popup;
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/-$$Lambda$PopupLayerPresenter$1$nfurtRWqHrygDuvD2fj8pnrkOLA;->f$0:Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerPresenter$1;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerPresenter$1;->lambda$new$0$PopupLayerPresenter$1(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;Lcom/samsung/android/app/galaxyraw/interfaces/Engine;Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;Ljava/lang/String;Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupActionListener;)Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerPresenter$Popup;

    move-result-object p0

    return-object p0
.end method
