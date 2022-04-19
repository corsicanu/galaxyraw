.class public interface abstract Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerContract$Presenter;
.super Ljava/lang/Object;
.source "PopupLayerContract.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/interfaces/BaseContract$Presenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Presenter"
.end annotation


# virtual methods
.method public abstract createPopupView(Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;Ljava/lang/String;Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupActionListener;)Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupView;
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
.end method

.method public abstract getPopupCount(Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "popupId"
        }
    .end annotation
.end method

.method public abstract isPopupEnabled(Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;Z)Z
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
.end method

.method public abstract onHidePopup(Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "popupId"
        }
    .end annotation
.end method

.method public abstract onShowPopup(Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;Z)Z
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
.end method

.method public abstract setAllowToShowAgain(Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;Z)V
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
.end method

.method public abstract setPopupCount(Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;I)V
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
.end method

.method public abstract setPopupEnabled(Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;Z)V
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
.end method

.method public abstract updatePopupData(Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;Ljava/lang/String;)Z
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
.end method

.method public abstract updateSubId(Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;)Z
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
.end method
